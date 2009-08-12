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

// setup some defines for the LEDS
#define LED_GREEN PD1
#define LED_YELLOW PD4
#define LED_RED PD5

void EVENT_USB_Device_Connect(void);
void EVENT_USB_Device_Disconnect(void);
void EVENT_USB_Device_ConfigurationChanged(void);
void EVENT_USB_Device_UnhandledControlRequest(void);


/** LUFA CDC Class driver interface configuration and state information. This structure is
 *  passed to all CDC Class driver functions, so that multiple instances of the same class
 *  within a device can be differentiated from one another.
 */
USB_ClassInfo_CDC_Device_t VirtualSerial_CDC_Interface = {
	.Config = {
		.ControlInterfaceNumber     = 0,
		.DataINEndpointNumber       = CDC_TX_EPNUM,
		.DataINEndpointSize         = CDC_TXRX_EPSIZE,

		.DataOUTEndpointNumber      = CDC_RX_EPNUM,
		.DataOUTEndpointSize        = CDC_TXRX_EPSIZE,

		.NotificationEndpointNumber = CDC_NOTIFICATION_EPNUM,
		.NotificationEndpointSize   = CDC_NOTIFICATION_EPSIZE,
	},
};

/** Main program entry point. This routine contains the overall program flow, including initial
 *  setup of all components and the main program loop.
 */
int main(void)
{
	uint8_t data; // a buffer for receiving commands in
	
	// Disable watchdog
	MCUSR &= ~(1 << WDRF);
	wdt_disable();

	// no clock division
	clock_prescale_set(clock_div_1);

	// init our IOs
	DDRD = 0x32;
	PORTD = 0x00;

	// initialize the USB
	USB_Init();

	for (;;) {

		/* Must throw away unused bytes from the host, or it will lock up while waiting for the device */
		while (CDC_Device_BytesReceived(&VirtualSerial_CDC_Interface)) {
			data = CDC_Device_ReceiveByte(&VirtualSerial_CDC_Interface);

			// turn on the green LED
			if (data == '1') { 
				PORTD |= (1 << LED_GREEN);

			// turn on the yellow LED
			} else if (data == '2') { 
				PORTD |= (1 << LED_YELLOW);

			// turn on the red LED
			} else if (data == '3') { 
				PORTD |= (1 << LED_RED);

			// else just turn them all off
			} else { 
				PORTD = 0;
			}
				
		}

		// this does something
		CDC_Device_USBTask(&VirtualSerial_CDC_Interface);

		// this does something too
		USB_USBTask();
	}
}


/** Event handler for the library USB Connection event. */
void EVENT_USB_Device_Connect(void)
{
}


/** Event handler for the library USB Disconnection event. */
void EVENT_USB_Device_Disconnect(void)
{
}


/** Event handler for the library USB Configuration Changed event. */
void EVENT_USB_Device_ConfigurationChanged(void)
{

	if (!(CDC_Device_ConfigureEndpoints(&VirtualSerial_CDC_Interface))) {
	}
}


/** Event handler for the library USB Unhandled Control Request event. */
void EVENT_USB_Device_UnhandledControlRequest(void)
{
	CDC_Device_ProcessControlRequest(&VirtualSerial_CDC_Interface);
}
