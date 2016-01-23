################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Source\ Files/main.c 

OBJS += \
./Source\ Files/main.o 

C_DEPS += \
./Source\ Files/main.d 


# Each subdirectory must supply rules for building sources it contributes
Source\ Files/main.o: ../Source\ Files/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -I"/home/paaddy/workspace/JSN/Header Files" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"Source Files/main.d" -MT"Source\ Files/main.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


