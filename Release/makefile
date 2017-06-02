################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS

GEN_OPTS__FLAG := --cmd_file="configPkg/compiler.opt"
GEN_CMDS__FLAG := -l"configPkg/linker.cmd"

ORDERED_OBJS += \
"./StartBIOS.obj" \
"./UART_Task.obj" \
"./hardware.obj" \
"./i2c_task.obj" \
"./leds.obj" \
"./mb.obj" \
"./oled_task.obj" \
"./test_task.obj" \
"./TM4C1294XL/EK_TM4C1294XL.obj" \
$(GEN_CMDS__FLAG) \
-llibc.a \
-l"C:/ti/tirtos_tivac_2_16_01_14/products/TivaWare_C_Series-2.1.0.12573c/driverlib/ccs/Debug/driverlib.lib" \
-l"C:/ti/tirtos_tivac_2_16_01_14/products/TivaWare_C_Series-2.1.0.12573c/usblib/ccs/Debug/usblib.lib" \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include TM4C1294XL/subdir_vars.mk
-include subdir_rules.mk
-include TM4C1294XL/subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(SV7A_DEPS)),)
-include $(SV7A_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
Fake_NFC_RTOS_Display.out \

EXE_OUTPUTS__QUOTED += \
"Fake_NFC_RTOS_Display.out" \

BIN_OUTPUTS += \
Fake_NFC_RTOS_Display.hex \

BIN_OUTPUTS__QUOTED += \
"Fake_NFC_RTOS_Display.hex" \


# All Target
all: Fake_NFC_RTOS_Display.out

# Tool invocations
Fake_NFC_RTOS_Display.out: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM Linker'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --gcc --define=PART_TM4C1294NCPDT --define=ccs --define=TIVAWARE --display_error_number --diag_warning=225 --diag_wrap=off --gen_func_subsections=on -z -m"Fake_NFC_RTOS_Display.map" --heap_size=0 --stack_size=512 -i"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/lib" -i"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --reread_libs --warn_sections --display_error_number --diag_wrap=off --xml_link_info="Fake_NFC_RTOS_Display_linkInfo.xml" --rom_model -o "Fake_NFC_RTOS_Display.out" $(ORDERED_OBJS)
	@echo 'Finished building target: $@'
	@echo ' '

Fake_NFC_RTOS_Display.hex: $(EXE_OUTPUTS)
	@echo 'Invoking: ARM Hex Utility'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armhex"  -o "Fake_NFC_RTOS_Display.hex" $(EXE_OUTPUTS__QUOTED)
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(GEN_MISC_FILES__QUOTED)$(EXE_OUTPUTS__QUOTED)$(GEN_FILES__QUOTED)$(BIN_OUTPUTS__QUOTED)$(GEN_OPTS__QUOTED)$(GEN_CMDS__QUOTED)
	-$(RMDIR) $(GEN_MISC_DIRS__QUOTED)
	-$(RM) "StartBIOS.d" "UART_Task.d" "hardware.d" "i2c_task.d" "leds.d" "mb.d" "oled_task.d" "test_task.d" "TM4C1294XL\EK_TM4C1294XL.d" 
	-$(RM) "StartBIOS.obj" "UART_Task.obj" "hardware.obj" "i2c_task.obj" "leds.obj" "mb.obj" "oled_task.obj" "test_task.obj" "TM4C1294XL\EK_TM4C1294XL.obj" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

