################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
StartBIOS.obj: ../StartBIOS.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="C:/ti/tirtos_tivac_2_16_01_14/products/ndk_2_25_00_09/packages/ti/ndk/inc/bsd" --include_path="C:/Users/Raphael/workspace_v6_2/Fake_NFC_RTOS_Display/local_inc" -g --gcc --define=PART_TM4C1294NCPDT --define=TARGET_IS_TM4C129_RA1 --define=ccs --define=TIVAWARE --define=ccs="ccs" --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="StartBIOS.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

build-1322744031: ../application.cfg
	@echo 'Building file: $<'
	@echo 'Invoking: XDCtools'
	"C:/ti/xdctools_3_32_00_06_core/xs" --xdcpath="C:/ti/tirtos_tivac_2_16_01_14/packages;C:/ti/tirtos_tivac_2_16_01_14/products/tidrivers_tivac_2_16_01_13/packages;C:/ti/tirtos_tivac_2_16_01_14/products/bios_6_45_02_31/packages;C:/ti/tirtos_tivac_2_16_01_14/products/ndk_2_25_00_09/packages;C:/ti/tirtos_tivac_2_16_01_14/products/uia_2_00_05_50/packages;C:/ti/tirtos_tivac_2_16_01_14/products/ns_1_11_00_10/packages;C:/ti/tirtos_tivac_2_16_01_14/products/TivaWare_C_Series-2.1.1.71b;C:/ti/wolfmqtt-0.13.0;C:/ti/ccsv6/ccs_base;" xdc.tools.configuro -o configPkg -t ti.targets.arm.elf.M4F -p ti.platforms.tiva:TM4C1294NCPDT -r release -c "C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS" "$<"
	@echo 'Finished building: $<'
	@echo ' '

configPkg/linker.cmd: build-1322744031
configPkg/compiler.opt: build-1322744031
configPkg/: build-1322744031

hardware.obj: ../hardware.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="C:/ti/tirtos_tivac_2_16_01_14/products/ndk_2_25_00_09/packages/ti/ndk/inc/bsd" --include_path="C:/Users/Raphael/workspace_v6_2/Fake_NFC_RTOS_Display/local_inc" -g --gcc --define=PART_TM4C1294NCPDT --define=TARGET_IS_TM4C129_RA1 --define=ccs --define=TIVAWARE --define=ccs="ccs" --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="hardware.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

leds.obj: ../leds.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="C:/ti/tirtos_tivac_2_16_01_14/products/ndk_2_25_00_09/packages/ti/ndk/inc/bsd" --include_path="C:/Users/Raphael/workspace_v6_2/Fake_NFC_RTOS_Display/local_inc" -g --gcc --define=PART_TM4C1294NCPDT --define=TARGET_IS_TM4C129_RA1 --define=ccs --define=TIVAWARE --define=ccs="ccs" --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="leds.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

mqtt_rk.obj: ../mqtt_rk.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="C:/ti/tirtos_tivac_2_16_01_14/products/ndk_2_25_00_09/packages/ti/ndk/inc/bsd" --include_path="C:/Users/Raphael/workspace_v6_2/Fake_NFC_RTOS_Display/local_inc" -g --gcc --define=PART_TM4C1294NCPDT --define=TARGET_IS_TM4C129_RA1 --define=ccs --define=TIVAWARE --define=ccs="ccs" --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="mqtt_rk.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

oled_task.obj: ../oled_task.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="C:/ti/tirtos_tivac_2_16_01_14/products/ndk_2_25_00_09/packages/ti/ndk/inc/bsd" --include_path="C:/Users/Raphael/workspace_v6_2/Fake_NFC_RTOS_Display/local_inc" -g --gcc --define=PART_TM4C1294NCPDT --define=TARGET_IS_TM4C129_RA1 --define=ccs --define=TIVAWARE --define=ccs="ccs" --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="oled_task.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


