/*
 * oled_task.h
 *
 *  Created on: 20. Jän. 2017
 *      Author: Raphael
 */

#ifndef OLED_TASK_H_
#define OLED_TASK_H_

enum color{ yellow=0xFFE0, green=0x07E0, red=0xF800, blue=0x001F};



void OLED_C_command(unsigned char reg_index, unsigned char reg_value);
//void OLED_C_data(unsigned char data_value);
void OLED_C_data(uint16_t data_value);

void OLED_C_Init(void);

void DDRAM_access(void);
void OLED_C_MemorySize(char X1, char X2, char Y1, char Y2);
void oled_data(uint16_t data);

void OLED_C_Beckground(enum color col);

void setup_oled_task(int prio, xdc_String name);
void oled_function(UArg arg0);

void spi_write(uint16_t data);

void init_interrupts(void);
void fake_auth(unsigned int index);
void good_auth(unsigned int index);

#endif /* OLED_TASK_H_ */
