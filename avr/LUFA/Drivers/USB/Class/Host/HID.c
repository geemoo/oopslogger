/*
             LUFA Library
     Copyright (C) Dean Camera, 2009.
              
  dean [at] fourwalledcubicle [dot] com
      www.fourwalledcubicle.com
*/

/*
  Copyright 2009  Dean Camera (dean [at] fourwalledcubicle [dot] com)

  Permission to use, copy, modify, and distribute this software
  and its documentation for any purpose and without fee is hereby
  granted, provided that the above copyright notice appear in all
  copies and that both that the copyright notice and this
  permission notice and warranty disclaimer appear in supporting
  documentation, and that the name of the author not be used in
  advertising or publicity pertaining to distribution of the
  software without specific, written prior permission.

  The author disclaim all warranties with regard to this
  software, including all implied warranties of merchantability
  and fitness.  In no event shall the author be liable for any
  special, indirect or consequential damages or any damages
  whatsoever resulting from loss of use, data or profits, whether
  in an action of contract, negligence or other tortious action,
  arising out of or in connection with the use or performance of
  this software.
*/

#include "../../HighLevel/USBMode.h"
#if defined(USB_CAN_BE_HOST)

#define INCLUDE_FROM_HID_CLASS_HOST_C
#include "HID.h"

#warning The HID Host mode Class driver is currently incomplete and is for preview purposes only.

uint8_t HID_Host_ConfigurePipes(USB_ClassInfo_HID_Host_t* HIDInterfaceInfo, uint16_t ConfigDescriptorSize,
                                uint8_t* ConfigDescriptorData)
{
	uint8_t  FoundEndpoints = 0;

	memset(&HIDInterfaceInfo->State, 0x00, sizeof(HIDInterfaceInfo->State));

	if (DESCRIPTOR_TYPE(ConfigDescriptorData) != DTYPE_Configuration)
	  return HID_ENUMERROR_InvalidConfigDescriptor;
	
	do
	{
		if (USB_GetNextDescriptorComp(&ConfigDescriptorSize, &ConfigDescriptorData,
									  DComp_HID_Host_NextHIDInterface) != DESCRIPTOR_SEARCH_COMP_Found)
		{
			return HID_ENUMERROR_NoHIDInterfaceFound;
		}
	} while (HIDInterfaceInfo->Config.MatchInterfaceProtocol &&
	         DESCRIPTOR_PCAST(ConfigDescriptorData,
	                          USB_Descriptor_Interface_t)->Protocol != HIDInterfaceInfo->Config.HIDInterfaceProtocol);

	while (FoundEndpoints != ((1 << HID_FOUND_DATAPIPE_IN) | (1 << HID_FOUND_DATAPIPE_OUT)))
	{
		if (USB_GetNextDescriptorComp(&ConfigDescriptorSize, &ConfigDescriptorData,
		                              DComp_HID_Host_NextInterfaceHIDDataEndpoint) != DESCRIPTOR_SEARCH_COMP_Found)
		{
			if (FoundEndpoints == (1 << HID_FOUND_DATAPIPE_IN))
			  break;
				
			return HID_ENUMERROR_EndpointsNotFound;
		}
		
		USB_Descriptor_Endpoint_t* EndpointData = DESCRIPTOR_PCAST(ConfigDescriptorData, USB_Descriptor_Endpoint_t);

		if (EndpointData->EndpointAddress & ENDPOINT_DESCRIPTOR_DIR_IN)
		{
			Pipe_ConfigurePipe(HIDInterfaceInfo->Config.DataINPipeNumber, EP_TYPE_INTERRUPT, PIPE_TOKEN_IN,
							   EndpointData->EndpointAddress, EndpointData->EndpointSize, PIPE_BANK_SINGLE);
			
			FoundEndpoints |= (1 << HID_FOUND_DATAPIPE_IN);
		}
		else
		{
			Pipe_ConfigurePipe(HIDInterfaceInfo->Config.DataOUTPipeNumber, EP_TYPE_INTERRUPT, PIPE_TOKEN_OUT,
							   EndpointData->EndpointAddress, EndpointData->EndpointSize, PIPE_BANK_SINGLE);
			
			FoundEndpoints |= (1 << HID_FOUND_DATAPIPE_OUT);		
		}
	}

	return HID_ENUMERROR_NoError;
}

static uint8_t DComp_HID_Host_NextHIDInterface(void* CurrentDescriptor)
{
	if (DESCRIPTOR_TYPE(CurrentDescriptor) == DTYPE_Interface)
	{
		USB_Descriptor_Interface_t* CurrentInterface = DESCRIPTOR_PCAST(CurrentDescriptor,
		                                                                USB_Descriptor_Interface_t);
	
		if (CurrentInterface->Class == HID_INTERFACE_CLASS)
		  return DESCRIPTOR_SEARCH_Found;
	}
	
	return DESCRIPTOR_SEARCH_NotFound;
}

static uint8_t DComp_HID_Host_NextInterfaceHIDDataEndpoint(void* CurrentDescriptor)
{
	if (DESCRIPTOR_TYPE(CurrentDescriptor) == DTYPE_Endpoint)
	{
		USB_Descriptor_Endpoint_t* CurrentEndpoint = DESCRIPTOR_PCAST(CurrentDescriptor,
		                                                              USB_Descriptor_Endpoint_t);	

		if (!(Pipe_IsEndpointBound(CurrentEndpoint->EndpointAddress)))
		  return DESCRIPTOR_SEARCH_Found;
	}
	else if (DESCRIPTOR_TYPE(CurrentDescriptor) == DTYPE_Interface)
	{
		return DESCRIPTOR_SEARCH_Fail;
	}

	return DESCRIPTOR_SEARCH_NotFound;
}

void HID_Host_USBTask(USB_ClassInfo_HID_Host_t* HIDInterfaceInfo)
{

}

#endif
