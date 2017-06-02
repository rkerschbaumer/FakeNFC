################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
TM4C1294XL/EK_TM4C1294XL.obj: ../TM4C1294XL/EK_TM4C1294XL.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="C:/ti/tirtos_tivac_2_16_01_14/products/TivaWare_C_Series-2.1.0.12573c" --gcc --define=PART_TM4C1294NCPDT --define=ccs --define=TIVAWARE --display_error_number --diag_warning=225 --diag_wrap=off --gen_func_subsections=on --preproc_with_compile --preproc_dependency="TM4C1294XL/EK_TM4C1294XL.d" --obj_directory="TM4C1294XL" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


