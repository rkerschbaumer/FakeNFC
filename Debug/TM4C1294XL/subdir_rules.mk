################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
TM4C1294XL/EK_TM4C1294XL.obj: ../TM4C1294XL/EK_TM4C1294XL.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="C:/ti/tirtos_tivac_2_16_01_14/products/ndk_2_25_00_09/packages/ti/ndk/inc/bsd" --include_path="C:/Users/Raphael/workspace_v6_2/Fake_NFC_RTOS_Display/local_inc" -g --gcc --define=PART_TM4C1294NCPDT --define=TARGET_IS_TM4C129_RA1 --define=ccs --define=TIVAWARE --define=ccs="ccs" --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="TM4C1294XL/EK_TM4C1294XL.d" --obj_directory="TM4C1294XL" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


