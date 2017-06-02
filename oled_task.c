#include <stdbool.h>
#include <stdint.h>
#include <inc/hw_memmap.h>

/* XDCtools Header files */
#include <xdc/std.h>
#include <xdc/cfg/global.h>
#include <xdc/runtime/System.h>
#include <xdc/runtime/Error.h>
#include <xdc/runtime/Memory.h>

/* BIOS Header files */
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Event.h>
#include <ti/sysbios/knl/Task.h>

/* Driverlib headers */
#include <driverlib/gpio.h>

#include <ti/drivers/GPIO.h>

/* Board Header files */
#include <Board.h>
#include <EK_TM4C1294XL.h>

#include <driverlib/ssi.h>
#include <driverlib/sysctl.h>

/* Application headers */
#include "font.h"
#include "oled_task.h"
#include "oled_c.h"

#include "mqtt_rk.h"

//Send command to OLED C display
void oled_command(unsigned char reg, unsigned char value){
//Select index addr
    GPIOPinWrite(GPIO_PORTP_BASE, GPIO_PIN_5, 0);
    GPIOPinWrite(GPIO_PORTM_BASE, GPIO_PIN_7, 0);
    spi_write(reg);
    GPIOPinWrite(GPIO_PORTP_BASE, GPIO_PIN_5, 0xFF);
//Write data to reg
    GPIOPinWrite(GPIO_PORTP_BASE, GPIO_PIN_5, 0);
    GPIOPinWrite(GPIO_PORTM_BASE, GPIO_PIN_7, 0xFF);
    spi_write(value);
    GPIOPinWrite(GPIO_PORTP_BASE, GPIO_PIN_5, 0xFF);
}

//Send data to OLED C display
void oled_data(uint16_t data){
	GPIOPinWrite(GPIO_PORTP_BASE, GPIO_PIN_5, 0);
	GPIOPinWrite(GPIO_PORTM_BASE, GPIO_PIN_7, 0xFF);
	spi_write(data);
    GPIOPinWrite(GPIO_PORTP_BASE, GPIO_PIN_5, 0xFF);
}

void oled_init(){
	GPIOPinWrite(GPIO_PORTP_BASE, GPIO_PIN_4, 0);
    Task_sleep(10);
    GPIOPinWrite(GPIO_PORTP_BASE, GPIO_PIN_4, 0xFF);
    Task_sleep(10);

    /*  Soft reser */
    oled_command(SEPS114A_SOFT_RESET,0x00);
    /* Standby ON/OFF*/
    oled_command(SEPS114A_STANDBY_ON_OFF,0x01);          // Standby on
    Task_sleep(5);                                           // Wait for 5ms (1ms Delay Minimum)
    oled_command(SEPS114A_STANDBY_ON_OFF,0x00);          // Standby oFF
    Task_sleep(5);                                           // 1ms Delay Minimum (1ms Delay Minimum)
    /* Display OFF */
    oled_command(SEPS114A_DISPLAY_ON_OFF,0x00);
    /* Set Oscillator operation */
    oled_command(SEPS114A_ANALOG_CONTROL,0x00);          // using external resistor and internal OSC
    /* Set frame rate */
    oled_command(SEPS114A_OSC_ADJUST,0x03);              // frame rate : 95Hz
    /* Set active display area of panel */
    oled_command(SEPS114A_DISPLAY_X1,0x00);
    oled_command(SEPS114A_DISPLAY_X2,0x5F);
    oled_command(SEPS114A_DISPLAY_Y1,0x00);
    oled_command(SEPS114A_DISPLAY_Y2,0x5F);
    /* Select the RGB data format and set the initial state of RGB interface port */
    oled_command(SEPS114A_RGB_IF,0x00);                 // RGB 8bit interface
    /* Set RGB polarity */
    oled_command(SEPS114A_RGB_POL,0x00);
    /* Set display mode control */
    oled_command(SEPS114A_DISPLAY_MODE_CONTROL,0x80);   // SWAP:BGR, Reduce current : Normal, DC[1:0] : Normal
    /* Set MCU Interface */
    oled_command(SEPS114A_CPU_IF,0x00);                 // MPU External interface mode, 8bits
    /* Set Memory Read/Write mode */
    oled_command(SEPS114A_MEMORY_WRITE_READ,0x00);
    /* Set row scan direction */
    oled_command(SEPS114A_ROW_SCAN_DIRECTION,0x00);     // Column : 0 --> Max, Row : 0 Â�--> Max
    /* Set row scan mode */
    oled_command(SEPS114A_ROW_SCAN_MODE,0x00);          // Alternate scan mode
    /* Set column current */
    oled_command(SEPS114A_COLUMN_CURRENT_R,0x6E);
    oled_command(SEPS114A_COLUMN_CURRENT_G,0x4F);
    oled_command(SEPS114A_COLUMN_CURRENT_B,0x77);
    /* Set row overlap */
    oled_command(SEPS114A_ROW_OVERLAP,0x00);            // Band gap only
    /* Set discharge time */
    oled_command(SEPS114A_DISCHARGE_TIME,0x01);         // Discharge time : normal discharge
    /* Set peak pulse delay */
    oled_command(SEPS114A_PEAK_PULSE_DELAY,0x00);
    /* Set peak pulse width */
    oled_command(SEPS114A_PEAK_PULSE_WIDTH_R,0x02);
    oled_command(SEPS114A_PEAK_PULSE_WIDTH_G,0x02);
    oled_command(SEPS114A_PEAK_PULSE_WIDTH_B,0x02);
    /* Set precharge current */
    oled_command(SEPS114A_PRECHARGE_CURRENT_R,0x14);
    oled_command(SEPS114A_PRECHARGE_CURRENT_G,0x50);
    oled_command(SEPS114A_PRECHARGE_CURRENT_B,0x19);
    /* Set row scan on/oFF  */
    oled_command(SEPS114A_ROW_SCAN_ON_OFF,0x00);        // Normal row scan
    /* Set scan oFF level */
    oled_command(SEPS114A_SCAN_OFF_LEVEL,0x04);         // VCC_C*0.75
    /* Set memory access point */
    oled_command(SEPS114A_DISPLAYSTART_X,0x00);
    oled_command(SEPS114A_DISPLAYSTART_Y,0x00);
    /* Display ON */
    oled_command(SEPS114A_DISPLAY_ON_OFF,0x01);
}

void DDRAM_access(){
	GPIOPinWrite(GPIO_PORTP_BASE, GPIO_PIN_5, 0);
	GPIOPinWrite(GPIO_PORTM_BASE, GPIO_PIN_7, 0);
	spi_write(0x08);
    GPIOPinWrite(GPIO_PORTP_BASE, GPIO_PIN_5, 0xFF);
}

//Set memory area(address) to write a display data
void OLED_C_MemorySize(char X1, char X2, char Y1, char Y2){
    oled_command(SEPS114A_MEM_X1,X1);
    oled_command(SEPS114A_MEM_X2,X2);
    oled_command(SEPS114A_MEM_Y1,Y1);
    oled_command(SEPS114A_MEM_Y2,Y2);
}

void OLED_C_Beckground(enum color col){
    unsigned int j;

    oled_command(0x1D,0x02);                //Set Memory Read/Write mode
    /* setting background */
    OLED_C_MemorySize(0x00,0x5F,0x00,0x5F);
    DDRAM_access();
    for(j=0;j<9216;j++){
    	oled_data(col);
    }
}

void oled_function(UArg arg0){
	MQTTCtx mqtt_ctx;

	set_mqtt_args(&mqtt_ctx);
	init_mqtt_conn(&mqtt_ctx);
	oled_init();

	oled_command(0x1D,0x02);                //Set Memory Read/Write mode
    OLED_C_MemorySize(0x00,0x5F,0x00,0x5F);
    DDRAM_access();

	OLED_C_Beckground(blue);

    while(1){
    	Task_sleep(500);
    }
}

void setup_oled_task(int prio, xdc_String name){
    Task_Params task_params_oled;
    Task_Handle task_hendl_oled;
    Error_Block eb;
    Error_init(&eb);
    Task_Params_init(&task_params_oled);
    task_params_oled.instance->name = name;
    task_params_oled.stackSize = 1024;
    task_params_oled.priority = prio;
    task_hendl_oled = Task_create((Task_FuncPtr)oled_function, &task_params_oled, &eb);
    if (task_hendl_oled == NULL) {
    	System_abort("Create Oled_task_setup failed");
    }
}

void spi_write(uint16_t data){
	SSIDataPut(SSI3_BASE, data);
	while(SSIBusy(SSI3_BASE));
}

/* Interrupt service Routine to Handle UsrSW1 Interrupt (PortJ Bit0)*/
//alternative to interrupt keyword: #pragma INTERRUPT (interrupt_gpioUsrSW1);
void fake_auth(unsigned int index){
	/* Clear the GPIO interrupt and toggle direction*/
	OLED_C_Beckground(red);
}

void good_auth(unsigned int index){
	// Clear the GPIO interrupt and toggle direction
	OLED_C_Beckground(green);
}

/* initialize interrupts*/
void init_interrupts(){
	GPIO_setCallback(Board_BUTTON0, fake_auth);
	GPIO_enableInt(Board_BUTTON0);

    GPIO_setCallback(Board_BUTTON1, good_auth);
    GPIO_enableInt(Board_BUTTON1);
}
