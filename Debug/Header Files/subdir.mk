################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Header\ Files/sqlite3.c 

OBJS += \
./Header\ Files/sqlite3.o 

C_DEPS += \
./Header\ Files/sqlite3.d 


# Each subdirectory must supply rules for building sources it contributes
Header\ Files/sqlite3.o: ../Header\ Files/sqlite3.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -I"/home/paaddy/workspace/JSN/Header Files" -I"/home/paaddy/workspace/JSN/opencv/include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"Header Files/sqlite3.d" -MT"Header\ Files/sqlite3.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


