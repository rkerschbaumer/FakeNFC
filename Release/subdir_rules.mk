################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
StartBIOS.obj: ../StartBIOS.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="C:/ti/tirtos_tivac_2_16_01_14/products/TivaWare_C_Series-2.1.0.12573c" --gcc --define=PART_TM4C1294NCPDT --define=ccs --define=TIVAWARE --display_error_number --diag_warning=225 --diag_wrap=off --gen_func_subsections=on --preproc_with_compile --preproc_dependency="StartBIOS.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

UART_Task.obj: ../UART_Task.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="C:/ti/tirtos_tivac_2_16_01_14/products/TivaWare_C_Series-2.1.0.12573c" --gcc --define=PART_TM4C1294NCPDT --define=ccs --define=TIVAWARE --display_error_number --diag_warning=225 --diag_wrap=off --gen_func_subsections=on --preproc_with_compile --preproc_dependency="UART_Task.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

build-1322744031: ../application.cfg
	@echo 'Building file: $<'
	@echo 'Invoking: XDCtools'
	"C:/ti/xdctools_3_31_03_43_core/xs" --xdcpath="C:/ti/tirtos_tivac_2_16_01_14/packages;C:/ti/tirtos_tivac_2_16_01_14/products/bios_6_40_03_39/packages;C:/ti/tirtos_tivac_2_16_01_14/products/ndk_2_23_01_01/packages;C:/ti/tirtos_tivac_2_16_01_14/products/uia_2_00_01_34/packages;C:/ti/ccsv6/ccs_base;" xdc.tools.configuro -o configPkg -t ti.targets.arm.elf.M4F -p ti.platforms.tiva:TM4C1294NCPDT -r release -c "C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS" "$<"
	@echo 'Finished building: $<'
	@echo ' '

configPkg/linker.cmd: build-1322744031
configPkg/compiler.opt: build-1322744031
configPkg/: build-1322744031

hardware.obj: ../hardware.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="C:/ti/tirtos_tivac_2_16_01_14/products/TivaWare_C_Series-2.1.0.12573c" --gcc --define=PART_TM4C1294NCPDT --define=ccs --define=TIVAWARE --display_error_number --diag_warning=225 --diag_wrap=off --gen_func_subsections=on --preproc_with_compile --preproc_dependency="hardware.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

i2c_task.obj: ../i2c_task.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="C:/ti/tirtos_tivac_2_16_01_14/products/TivaWare_C_Series-2.1.0.12573c" --gcc --define=PART_TM4C1294NCPDT --define=ccs --define=TIVAWARE --display_error_number --diag_warning=225 --diag_wrap=off --gen_func_subsections=on --preproc_with_compile --preproc_dependency="i2c_task.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

leds.obj: ../leds.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="C:/ti/tirtos_tivac_2_16_01_14/products/TivaWare_C_Series-2.1.0.12573c" --gcc --define=PART_TM4C1294NCPDT --define=ccs --define=TIVAWARE --display_error_number --diag_warning=225 --diag_wrap=off --gen_func_subsections=on --preproc_with_compile --preproc_dependency="leds.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

mb.obj: ../mb.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="C:/ti/tirtos_tivac_2_16_01_14/products/TivaWare_C_Series-2.1.0.12573c" --gcc --define=PART_TM4C1294NCPDT --define=ccs --define=TIVAWARE --display_error_number --diag_warning=225 --diag_wrap=off --gen_func_subsections=on --preproc_with_compile --preproc_dependency="mb.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

oled_task.obj: ../oled_task.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="C:/ti/tirtos_tivac_2_16_01_14/products/TivaWare_C_Series-2.1.0.12573c" --gcc --define=PART_TM4C1294NCPDT --define=ccs --define=TIVAWARE --display_error_number --diag_warning=225 --diag_wrap=off --gen_func_subsections=on --preproc_with_compile --preproc_dependency="oled_task.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

test_task.obj: ../test_task.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="C:/ti/tirtos_tivac_2_16_01_14/products/TivaWare_C_Series-2.1.0.12573c" --gcc --define=PART_TM4C1294NCPDT --define=ccs --define=TIVAWARE --display_error_number --diag_warning=225 --diag_wrap=off --gen_func_subsections=on --preproc_with_compile --preproc_dependency="test_task.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


