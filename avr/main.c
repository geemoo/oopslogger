#include <avr/io.h>
#include <avr/wdt.h>
#include <avr/power.h>
#include <string.h>

#include "Descriptors.h"

#include <LUFA/Version.h>
#include <LUFA/Drivers/Board/LEDs.h>
#include <LUFA/Drivers/Board/Joystick.h>
#include <LUFA/Drivers/USB/USB.h>
#include <LUFA/Drivers/USB/Class/CDC.h>

#define LEDMASK_USB_NOTREADY      LEDS_LED2

#define LEDMASK_USB_ENUMERATING  (LEDS_LED1 | LEDS_LED2)

#define LEDMASK_USB_READY        LEDS_LED1

#define LEDMASK_USB_ERROR        LEDS_LED3
		
/* Function Prototypes: */
void SetupHardware(void);
void CheckJoystickMovement(void);

void EVENT_USB_Device_Connect(void);
void EVENT_USB_Device_Disconnect(void);
void EVENT_USB_Device_ConfigurationChanged(void);
void EVENT_USB_Device_UnhandledControlRequest(void);


/** LUFA CDC Class driver interface configuration and state information. This structure is
 *  passed to all CDC Class driver functions, so that multiple instances of the same class
 *  within a device can be differentiated from one another.
 */
USB_ClassInfo_CDC_Device_t VirtualSerial_CDC_Interface =
	{
		.Config =
			{
				.ControlInterfaceNumber     = 0,

				.DataINEndpointNumber       = CDC_TX_EPNUM,
				.DataINEndpointSize         = CDC_TXRX_EPSIZE,

				.DataOUTEndpointNumber      = CDC_RX_EPNUM,
				.DataOUTEndpointSize        = CDC_TXRX_EPSIZE,

				.NotificationEndpointNumber = CDC_NOTIFICATION_EPNUM,
				.NotificationEndpointSize   = CDC_NOTIFICATION_EPSIZE,
			},
	};

#if 0
/* NOTE: Here you can set up a standard stream using the created virtual serial port, so that the standard stream functions in
 *       <stdio.h> can be used on the virtual serial port (e.g. fprintf(&USBSerial, "Test"); to print a string).
 */

static int CDC_putchar(char c, FILE *stream)
{
	CDC_Device_SendByte(&VirtualSerial_CDC_Interface, c);
	return 0;
}

static int CDC_getchar(FILE *stream)
{
	if (!(CDC_Device_BytesReceived(&VirtualSerial_CDC_Interface)))
	  return -1;

	return CDC_Device_ReceiveByte(&VirtualSerial_CDC_Interface);
}

static FILE USBSerial = FDEV_SETUP_STREAM(CDC_putchar, CDC_getchar, _FDEV_SETUP_RW);
#endif

/** Main program entry point. This routine contains the overall program flow, including initial
 *  setup of all components and the main program loop.
 */
int main(void)
{
	SetupHardware();
	
	LEDs_SetAllLEDs(LEDMASK_USB_NOTREADY);

	for (;;)
	{
		CheckJoystickMovement();
		 
		/* Must throw away unused bytes from the host, or it will lock up while waiting for the device */
		while (CDC_Device_BytesReceived(&VirtualSerial_CDC_Interface))
		  CDC_Device_ReceiveByte(&VirtualSerial_CDC_Interface);

		CDC_Device_USBTask(&VirtualSerial_CDC_Interface);
		USB_USBTask();
	}
}

/** Configures the board hardware and chip peripherals for the demo's functionality. */
void SetupHardware(void)
{
	/* Disable watchdog if enabled by bootloader/fuses */
	MCUSR &= ~(1 << WDRF);
	wdt_disable();

	/* Disable clock division */
	clock_prescale_set(clock_div_1);

	/* Hardware Initialization */
	Joystick_Init();
	LEDs_Init();
	USB_Init();
}

/** Checks for changes in the position of the board joystick, sending strings to the host upon each change. */
void CheckJoystickMovement(void)
{
	char ReportString[] = "hi!\r\n";
	CDC_Device_SendString(&VirtualSerial_CDC_Interface, ReportString, strlen(ReportString));		
}

/** Event handler for the library USB Connection event. */
void EVENT_USB_Device_Connect(void)
{
	LEDs_SetAllLEDs(LEDMASK_USB_ENUMERATING);
}

/** Event handler for the library USB Disconnection event. */
void EVENT_USB_Device_Disconnect(void)
{
	LEDs_SetAllLEDs(LEDMASK_USB_NOTREADY);
}

/** Event handler for the library USB Configuration Changed event. */
void EVENT_USB_Device_ConfigurationChanged(void)
{
	LEDs_SetAllLEDs(LEDMASK_USB_READY);

	if (!(CDC_Device_ConfigureEndpoints(&VirtualSerial_CDC_Interface)))
	  LEDs_SetAllLEDs(LEDMASK_USB_ERROR);
}

/** Event handler for the library USB Unhandled Control Request event. */
void EVENT_USB_Device_UnhandledControlRequest(void)
{
	CDC_Device_ProcessControlRequest(&VirtualSerial_CDC_Interface);
}
