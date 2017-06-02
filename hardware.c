#include <stdbool.h>
#include <stdint.h>
#include <driverlib/gpio.h>
#include <driverlib/pin_map.h>
#include <driverlib/sysctl.h>
#include "driverlib/ssi.h"
#include <ti/drivers/UART.h>
#include <inc/hw_memmap.h>
#include <Board.h>

/* LED defines*/
#define LED1 GPIO_PIN_1
#define LED2 GPIO_PIN_0
#define LED3 GPIO_PIN_4
#define LED4 GPIO_PIN_0

#include"hardware.h"

/* set GP1 = PC6 to 1, set RST = PC7 to 0 */
void init_hardware(void){
    uint32_t ui32Strength, ui32PinType;

	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOQ); //SPI
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOP); //RST-SPI=PIN4 & CS-SPI=PIN5
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOM); //DC-SPI=PIN7
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPION); //LED
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF); //LED


	GPIOPadConfigGet(GPIO_PORTN_BASE, LED1|LED2, &ui32Strength, &ui32PinType);
	GPIOPadConfigSet(GPIO_PORTN_BASE, LED1|LED2,ui32Strength,GPIO_PIN_TYPE_STD);

	GPIOPadConfigGet(GPIO_PORTF_BASE, LED3|LED4, &ui32Strength, &ui32PinType);
	GPIOPadConfigSet(GPIO_PORTF_BASE, LED3|LED4,ui32Strength,GPIO_PIN_TYPE_STD);

	GPIOPinTypeGPIOOutput(GPIO_PORTN_BASE,LED1|LED2);
	GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE,LED3|LED4);
	GPIOPinTypeGPIOOutput(GPIO_PORTP_BASE, GPIO_PIN_4);
	GPIOPinTypeGPIOOutput(GPIO_PORTP_BASE, GPIO_PIN_5);
	GPIOPinTypeGPIOOutput(GPIO_PORTM_BASE, GPIO_PIN_7);

	/* turn LEDs off */
	GPIOPinWrite(GPIO_PORTN_BASE, LED1,0x00);
	GPIOPinWrite(GPIO_PORTN_BASE, LED2,0x00);
	GPIOPinWrite(GPIO_PORTF_BASE, LED3,0x00);
	GPIOPinWrite(GPIO_PORTF_BASE, LED4,0x00);
    SysCtlDelay(100000);
}
