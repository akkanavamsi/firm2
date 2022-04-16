#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32mz.mk)" "nbproject/Makefile-local-pic32mz.mk"
include nbproject/Makefile-local-pic32mz.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mz
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/GHG_App_EFG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/GHG_App_EFG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mz/driver/sdspi/src/drv_sdspi.c ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_driver_interface.c ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_file_system.c ../src/config/pic32mz/driver/spi/src/drv_spi.c ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs.c ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs_device.c ../src/config/pic32mz/peripheral/cache/plib_cache.c ../src/config/pic32mz/peripheral/cache/plib_cache_pic32mz.S ../src/config/pic32mz/peripheral/clk/plib_clk.c ../src/config/pic32mz/peripheral/coretimer/plib_coretimer.c ../src/config/pic32mz/peripheral/evic/plib_evic.c ../src/config/pic32mz/peripheral/gpio/plib_gpio.c ../src/config/pic32mz/peripheral/i2c/master/plib_i2c2_master.c ../src/config/pic32mz/peripheral/i2c/master/plib_i2c4_master.c ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi4_master.c ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi2_master.c ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi5_master.c ../src/config/pic32mz/peripheral/tmr/plib_tmr2.c ../src/config/pic32mz/peripheral/uart/plib_uart5.c ../src/config/pic32mz/peripheral/uart/plib_uart6.c ../src/config/pic32mz/peripheral/uart/plib_uart3.c ../src/config/pic32mz/peripheral/uart/plib_uart4.c ../src/config/pic32mz/peripheral/uart/plib_uart1.c ../src/config/pic32mz/peripheral/uart/plib_uart2.c ../src/config/pic32mz/peripheral/wdt/plib_wdt.c ../src/config/pic32mz/stdio/xc32_monitor.c ../src/config/pic32mz/system/cache/sys_cache.c ../src/config/pic32mz/system/dma/sys_dma.c ../src/config/pic32mz/system/fs/fat_fs/file_system/ff.c ../src/config/pic32mz/system/fs/fat_fs/file_system/ffunicode.c ../src/config/pic32mz/system/fs/fat_fs/hardware_access/diskio.c ../src/config/pic32mz/system/fs/src/sys_fs.c ../src/config/pic32mz/system/fs/src/sys_fs_media_manager.c ../src/config/pic32mz/system/fs/src/sys_fs_fat_interface.c ../src/config/pic32mz/system/int/src/sys_int.c ../src/config/pic32mz/system/time/src/sys_time.c ../src/config/pic32mz/usb/src/usb_device.c ../src/config/pic32mz/usb/src/usb_device_cdc.c ../src/config/pic32mz/usb/src/usb_device_cdc_acm.c ../src/config/pic32mz/usb_device_init_data.c ../src/config/pic32mz/tasks.c ../src/config/pic32mz/initialization.c ../src/config/pic32mz/interrupts.c ../src/config/pic32mz/exceptions.c ../src/Figaro/BodyImpedance.c ../src/Figaro/ad5940.c ../src/Figaro/ad5940main.c ../src/Figaro/mpfit.c ../src/Figaro/pic32Port.c ../src/app.c ../src/main.c ../src/communication.c ../src/mdot.c ../src/stringbuffer.c ../src/messaging.c ../src/nmea.c ../src/eeprom.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/757013429/drv_sdspi.o ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o ${OBJECTDIR}/_ext/2120450970/drv_spi.o ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o ${OBJECTDIR}/_ext/1640642171/plib_cache.o ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/10646107/plib_clk.o ${OBJECTDIR}/_ext/809018751/plib_coretimer.o ${OBJECTDIR}/_ext/330098546/plib_evic.o ${OBJECTDIR}/_ext/330152374/plib_gpio.o ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o ${OBJECTDIR}/_ext/867254719/plib_spi5_master.o ${OBJECTDIR}/_ext/10662482/plib_tmr2.o ${OBJECTDIR}/_ext/330555317/plib_uart5.o ${OBJECTDIR}/_ext/330555317/plib_uart6.o ${OBJECTDIR}/_ext/330555317/plib_uart3.o ${OBJECTDIR}/_ext/330555317/plib_uart4.o ${OBJECTDIR}/_ext/330555317/plib_uart1.o ${OBJECTDIR}/_ext/330555317/plib_uart2.o ${OBJECTDIR}/_ext/10665088/plib_wdt.o ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o ${OBJECTDIR}/_ext/1519118610/sys_cache.o ${OBJECTDIR}/_ext/1373644956/sys_dma.o ${OBJECTDIR}/_ext/1192657380/ff.o ${OBJECTDIR}/_ext/1192657380/ffunicode.o ${OBJECTDIR}/_ext/727274963/diskio.o ${OBJECTDIR}/_ext/252936118/sys_fs.o ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/1832149040/sys_int.o ${OBJECTDIR}/_ext/1636986698/sys_time.o ${OBJECTDIR}/_ext/202551283/usb_device.o ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o ${OBJECTDIR}/_ext/953055421/tasks.o ${OBJECTDIR}/_ext/953055421/initialization.o ${OBJECTDIR}/_ext/953055421/interrupts.o ${OBJECTDIR}/_ext/953055421/exceptions.o ${OBJECTDIR}/_ext/1230022092/BodyImpedance.o ${OBJECTDIR}/_ext/1230022092/ad5940.o ${OBJECTDIR}/_ext/1230022092/ad5940main.o ${OBJECTDIR}/_ext/1230022092/mpfit.o ${OBJECTDIR}/_ext/1230022092/pic32Port.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/communication.o ${OBJECTDIR}/_ext/1360937237/mdot.o ${OBJECTDIR}/_ext/1360937237/stringbuffer.o ${OBJECTDIR}/_ext/1360937237/messaging.o ${OBJECTDIR}/_ext/1360937237/nmea.o ${OBJECTDIR}/_ext/1360937237/eeprom.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/757013429/drv_sdspi.o.d ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o.d ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o.d ${OBJECTDIR}/_ext/2120450970/drv_spi.o.d ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o.d ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o.d ${OBJECTDIR}/_ext/1640642171/plib_cache.o.d ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d ${OBJECTDIR}/_ext/10646107/plib_clk.o.d ${OBJECTDIR}/_ext/809018751/plib_coretimer.o.d ${OBJECTDIR}/_ext/330098546/plib_evic.o.d ${OBJECTDIR}/_ext/330152374/plib_gpio.o.d ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o.d ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o.d ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o.d ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o.d ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o.d ${OBJECTDIR}/_ext/867254719/plib_spi5_master.o.d ${OBJECTDIR}/_ext/10662482/plib_tmr2.o.d ${OBJECTDIR}/_ext/330555317/plib_uart5.o.d ${OBJECTDIR}/_ext/330555317/plib_uart6.o.d ${OBJECTDIR}/_ext/330555317/plib_uart3.o.d ${OBJECTDIR}/_ext/330555317/plib_uart4.o.d ${OBJECTDIR}/_ext/330555317/plib_uart1.o.d ${OBJECTDIR}/_ext/330555317/plib_uart2.o.d ${OBJECTDIR}/_ext/10665088/plib_wdt.o.d ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o.d ${OBJECTDIR}/_ext/1519118610/sys_cache.o.d ${OBJECTDIR}/_ext/1373644956/sys_dma.o.d ${OBJECTDIR}/_ext/1192657380/ff.o.d ${OBJECTDIR}/_ext/1192657380/ffunicode.o.d ${OBJECTDIR}/_ext/727274963/diskio.o.d ${OBJECTDIR}/_ext/252936118/sys_fs.o.d ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o.d ${OBJECTDIR}/_ext/1832149040/sys_int.o.d ${OBJECTDIR}/_ext/1636986698/sys_time.o.d ${OBJECTDIR}/_ext/202551283/usb_device.o.d ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o.d ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o.d ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o.d ${OBJECTDIR}/_ext/953055421/tasks.o.d ${OBJECTDIR}/_ext/953055421/initialization.o.d ${OBJECTDIR}/_ext/953055421/interrupts.o.d ${OBJECTDIR}/_ext/953055421/exceptions.o.d ${OBJECTDIR}/_ext/1230022092/BodyImpedance.o.d ${OBJECTDIR}/_ext/1230022092/ad5940.o.d ${OBJECTDIR}/_ext/1230022092/ad5940main.o.d ${OBJECTDIR}/_ext/1230022092/mpfit.o.d ${OBJECTDIR}/_ext/1230022092/pic32Port.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/communication.o.d ${OBJECTDIR}/_ext/1360937237/mdot.o.d ${OBJECTDIR}/_ext/1360937237/stringbuffer.o.d ${OBJECTDIR}/_ext/1360937237/messaging.o.d ${OBJECTDIR}/_ext/1360937237/nmea.o.d ${OBJECTDIR}/_ext/1360937237/eeprom.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/757013429/drv_sdspi.o ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o ${OBJECTDIR}/_ext/2120450970/drv_spi.o ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o ${OBJECTDIR}/_ext/1640642171/plib_cache.o ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/10646107/plib_clk.o ${OBJECTDIR}/_ext/809018751/plib_coretimer.o ${OBJECTDIR}/_ext/330098546/plib_evic.o ${OBJECTDIR}/_ext/330152374/plib_gpio.o ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o ${OBJECTDIR}/_ext/867254719/plib_spi5_master.o ${OBJECTDIR}/_ext/10662482/plib_tmr2.o ${OBJECTDIR}/_ext/330555317/plib_uart5.o ${OBJECTDIR}/_ext/330555317/plib_uart6.o ${OBJECTDIR}/_ext/330555317/plib_uart3.o ${OBJECTDIR}/_ext/330555317/plib_uart4.o ${OBJECTDIR}/_ext/330555317/plib_uart1.o ${OBJECTDIR}/_ext/330555317/plib_uart2.o ${OBJECTDIR}/_ext/10665088/plib_wdt.o ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o ${OBJECTDIR}/_ext/1519118610/sys_cache.o ${OBJECTDIR}/_ext/1373644956/sys_dma.o ${OBJECTDIR}/_ext/1192657380/ff.o ${OBJECTDIR}/_ext/1192657380/ffunicode.o ${OBJECTDIR}/_ext/727274963/diskio.o ${OBJECTDIR}/_ext/252936118/sys_fs.o ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/1832149040/sys_int.o ${OBJECTDIR}/_ext/1636986698/sys_time.o ${OBJECTDIR}/_ext/202551283/usb_device.o ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o ${OBJECTDIR}/_ext/953055421/tasks.o ${OBJECTDIR}/_ext/953055421/initialization.o ${OBJECTDIR}/_ext/953055421/interrupts.o ${OBJECTDIR}/_ext/953055421/exceptions.o ${OBJECTDIR}/_ext/1230022092/BodyImpedance.o ${OBJECTDIR}/_ext/1230022092/ad5940.o ${OBJECTDIR}/_ext/1230022092/ad5940main.o ${OBJECTDIR}/_ext/1230022092/mpfit.o ${OBJECTDIR}/_ext/1230022092/pic32Port.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/communication.o ${OBJECTDIR}/_ext/1360937237/mdot.o ${OBJECTDIR}/_ext/1360937237/stringbuffer.o ${OBJECTDIR}/_ext/1360937237/messaging.o ${OBJECTDIR}/_ext/1360937237/nmea.o ${OBJECTDIR}/_ext/1360937237/eeprom.o

# Source Files
SOURCEFILES=../src/config/pic32mz/driver/sdspi/src/drv_sdspi.c ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_driver_interface.c ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_file_system.c ../src/config/pic32mz/driver/spi/src/drv_spi.c ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs.c ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs_device.c ../src/config/pic32mz/peripheral/cache/plib_cache.c ../src/config/pic32mz/peripheral/cache/plib_cache_pic32mz.S ../src/config/pic32mz/peripheral/clk/plib_clk.c ../src/config/pic32mz/peripheral/coretimer/plib_coretimer.c ../src/config/pic32mz/peripheral/evic/plib_evic.c ../src/config/pic32mz/peripheral/gpio/plib_gpio.c ../src/config/pic32mz/peripheral/i2c/master/plib_i2c2_master.c ../src/config/pic32mz/peripheral/i2c/master/plib_i2c4_master.c ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi4_master.c ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi2_master.c ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi5_master.c ../src/config/pic32mz/peripheral/tmr/plib_tmr2.c ../src/config/pic32mz/peripheral/uart/plib_uart5.c ../src/config/pic32mz/peripheral/uart/plib_uart6.c ../src/config/pic32mz/peripheral/uart/plib_uart3.c ../src/config/pic32mz/peripheral/uart/plib_uart4.c ../src/config/pic32mz/peripheral/uart/plib_uart1.c ../src/config/pic32mz/peripheral/uart/plib_uart2.c ../src/config/pic32mz/peripheral/wdt/plib_wdt.c ../src/config/pic32mz/stdio/xc32_monitor.c ../src/config/pic32mz/system/cache/sys_cache.c ../src/config/pic32mz/system/dma/sys_dma.c ../src/config/pic32mz/system/fs/fat_fs/file_system/ff.c ../src/config/pic32mz/system/fs/fat_fs/file_system/ffunicode.c ../src/config/pic32mz/system/fs/fat_fs/hardware_access/diskio.c ../src/config/pic32mz/system/fs/src/sys_fs.c ../src/config/pic32mz/system/fs/src/sys_fs_media_manager.c ../src/config/pic32mz/system/fs/src/sys_fs_fat_interface.c ../src/config/pic32mz/system/int/src/sys_int.c ../src/config/pic32mz/system/time/src/sys_time.c ../src/config/pic32mz/usb/src/usb_device.c ../src/config/pic32mz/usb/src/usb_device_cdc.c ../src/config/pic32mz/usb/src/usb_device_cdc_acm.c ../src/config/pic32mz/usb_device_init_data.c ../src/config/pic32mz/tasks.c ../src/config/pic32mz/initialization.c ../src/config/pic32mz/interrupts.c ../src/config/pic32mz/exceptions.c ../src/Figaro/BodyImpedance.c ../src/Figaro/ad5940.c ../src/Figaro/ad5940main.c ../src/Figaro/mpfit.c ../src/Figaro/pic32Port.c ../src/app.c ../src/main.c ../src/communication.c ../src/mdot.c ../src/stringbuffer.c ../src/messaging.c ../src/nmea.c ../src/eeprom.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mz.mk ${DISTDIR}/GHG_App_EFG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFG144
MP_LINKER_FILE_OPTION=,--script="..\src\config\pic32mz\app_mz.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o: ../src/config/pic32mz/peripheral/cache/plib_cache_pic32mz.S  .generated_files/flags/pic32mz/1c87269ebc894e2973bced6cd42de3eb7cf6cf0f .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1640642171" 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o ../src/config/pic32mz/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_pic32mz=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD4=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o: ../src/config/pic32mz/peripheral/cache/plib_cache_pic32mz.S  .generated_files/flags/pic32mz/44419983198e1220b1eaf2d724341a0ceda545a5 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1640642171" 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o ../src/config/pic32mz/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_pic32mz=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1640642171/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/757013429/drv_sdspi.o: ../src/config/pic32mz/driver/sdspi/src/drv_sdspi.c  .generated_files/flags/pic32mz/fd2fdba53aeafd4eb3936c9bfab175d1a4e3d301 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/757013429" 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi.o.d 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/757013429/drv_sdspi.o.d" -o ${OBJECTDIR}/_ext/757013429/drv_sdspi.o ../src/config/pic32mz/driver/sdspi/src/drv_sdspi.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o: ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_driver_interface.c  .generated_files/flags/pic32mz/123abfbcdeba36fc94a76d9c9fa42b01c3f87f34 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/757013429" 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o.d" -o ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_driver_interface.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o: ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_file_system.c  .generated_files/flags/pic32mz/13a1be4ce09db41bd8c32d7bdb66d3b494de20d6 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/757013429" 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o.d" -o ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_file_system.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2120450970/drv_spi.o: ../src/config/pic32mz/driver/spi/src/drv_spi.c  .generated_files/flags/pic32mz/92aaa52a1411ead59cb51d5627e16d5e3b3749fb .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2120450970" 
	@${RM} ${OBJECTDIR}/_ext/2120450970/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2120450970/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2120450970/drv_spi.o.d" -o ${OBJECTDIR}/_ext/2120450970/drv_spi.o ../src/config/pic32mz/driver/spi/src/drv_spi.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1783409726/drv_usbhs.o: ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs.c  .generated_files/flags/pic32mz/8ca7bbcbf0b587f11fe1f03bdccc320cd708d175 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1783409726" 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1783409726/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o: ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs_device.c  .generated_files/flags/pic32mz/2fefaf5efb836b42e5ce70519f3d9846dcff67d9 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1783409726" 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs_device.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1640642171/plib_cache.o: ../src/config/pic32mz/peripheral/cache/plib_cache.c  .generated_files/flags/pic32mz/c7bdefa24bea42ebb7ba772dd70664623c315188 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1640642171" 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1640642171/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1640642171/plib_cache.o ../src/config/pic32mz/peripheral/cache/plib_cache.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/10646107/plib_clk.o: ../src/config/pic32mz/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz/12f4e187d77ba1a256b8bc4b657495ddbba5157a .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/10646107" 
	@${RM} ${OBJECTDIR}/_ext/10646107/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/10646107/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/10646107/plib_clk.o.d" -o ${OBJECTDIR}/_ext/10646107/plib_clk.o ../src/config/pic32mz/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/809018751/plib_coretimer.o: ../src/config/pic32mz/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mz/f96e1307569bf26bc38786e9c490fe75cdbfc039 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/809018751" 
	@${RM} ${OBJECTDIR}/_ext/809018751/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/809018751/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/809018751/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/809018751/plib_coretimer.o ../src/config/pic32mz/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330098546/plib_evic.o: ../src/config/pic32mz/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz/5a3a17518f0532823e2222e75a8e00e6231e57db .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330098546" 
	@${RM} ${OBJECTDIR}/_ext/330098546/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/330098546/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330098546/plib_evic.o.d" -o ${OBJECTDIR}/_ext/330098546/plib_evic.o ../src/config/pic32mz/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330152374/plib_gpio.o: ../src/config/pic32mz/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz/14d941c22aca157b7b0de2b3ebe10504e875098d .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330152374" 
	@${RM} ${OBJECTDIR}/_ext/330152374/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/330152374/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330152374/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/330152374/plib_gpio.o ../src/config/pic32mz/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o: ../src/config/pic32mz/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/pic32mz/ebc2adaa51e5a495c4844c55aa2f765e1fbf0e76 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/249272802" 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o ../src/config/pic32mz/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o: ../src/config/pic32mz/peripheral/i2c/master/plib_i2c4_master.c  .generated_files/flags/pic32mz/36e4ff887d4a9d07e7c37b0915a453cf57cae67e .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/249272802" 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o.d" -o ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o ../src/config/pic32mz/peripheral/i2c/master/plib_i2c4_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi4_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi4_master.c  .generated_files/flags/pic32mz/6c83639f30a35f7912ae3558cf76d6f3d5676d88 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi4_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi4_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi2_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/pic32mz/528419d32b0cfc76c8a9c6982e070c4f6453bc42 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi1_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mz/c1b41e1249433269115fbd2b743de265223286cd .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi5_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi5_master.c  .generated_files/flags/pic32mz/854b2760776f17b8b4fe4479b1b12416190ca72b .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi5_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi5_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi5_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi5_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi5_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/10662482/plib_tmr2.o: ../src/config/pic32mz/peripheral/tmr/plib_tmr2.c  .generated_files/flags/pic32mz/36ac42381d8dab96b8e231824b4c18e5bbbcfec3 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/10662482" 
	@${RM} ${OBJECTDIR}/_ext/10662482/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/10662482/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/10662482/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/10662482/plib_tmr2.o ../src/config/pic32mz/peripheral/tmr/plib_tmr2.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart5.o: ../src/config/pic32mz/peripheral/uart/plib_uart5.c  .generated_files/flags/pic32mz/88ed4c287f3b3dad0d957288b3ce3d2ee1915236 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart5.o ../src/config/pic32mz/peripheral/uart/plib_uart5.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart6.o: ../src/config/pic32mz/peripheral/uart/plib_uart6.c  .generated_files/flags/pic32mz/fa7957bc58c44f7f5bbc1a3b9383b57778aa3d7d .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart6.o ../src/config/pic32mz/peripheral/uart/plib_uart6.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart3.o: ../src/config/pic32mz/peripheral/uart/plib_uart3.c  .generated_files/flags/pic32mz/9eea2cfdb97fa88016dad16727944d6cb2d2d41b .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart3.o ../src/config/pic32mz/peripheral/uart/plib_uart3.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart4.o: ../src/config/pic32mz/peripheral/uart/plib_uart4.c  .generated_files/flags/pic32mz/4d02818bc5880152a4d49f068d5f05dfcf2e9c35 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart4.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart4.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart4.o ../src/config/pic32mz/peripheral/uart/plib_uart4.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart1.o: ../src/config/pic32mz/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mz/4e826789d12141ced4f4b06a43eec39f8c5e81d .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart1.o ../src/config/pic32mz/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart2.o: ../src/config/pic32mz/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mz/904e0643aa1487da15cac47e960b0220cc3b6093 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart2.o ../src/config/pic32mz/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/10665088/plib_wdt.o: ../src/config/pic32mz/peripheral/wdt/plib_wdt.c  .generated_files/flags/pic32mz/8ee7371a7fef80b67c66d6a5fbcd735015c24760 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/10665088" 
	@${RM} ${OBJECTDIR}/_ext/10665088/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/10665088/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/10665088/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/10665088/plib_wdt.o ../src/config/pic32mz/peripheral/wdt/plib_wdt.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1991269565/xc32_monitor.o: ../src/config/pic32mz/stdio/xc32_monitor.c  .generated_files/flags/pic32mz/6fdfd4ec35390e110afaf82f1b2b5ff0dcec80 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1991269565" 
	@${RM} ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1991269565/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o ../src/config/pic32mz/stdio/xc32_monitor.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1519118610/sys_cache.o: ../src/config/pic32mz/system/cache/sys_cache.c  .generated_files/flags/pic32mz/c9b3aaee06df44ac612bc9ac135e91e6f7f948b8 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1519118610" 
	@${RM} ${OBJECTDIR}/_ext/1519118610/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1519118610/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1519118610/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1519118610/sys_cache.o ../src/config/pic32mz/system/cache/sys_cache.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1373644956/sys_dma.o: ../src/config/pic32mz/system/dma/sys_dma.c  .generated_files/flags/pic32mz/fa5e94aea36e7a7ece5327fad4af8028be819c1 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1373644956" 
	@${RM} ${OBJECTDIR}/_ext/1373644956/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/1373644956/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1373644956/sys_dma.o.d" -o ${OBJECTDIR}/_ext/1373644956/sys_dma.o ../src/config/pic32mz/system/dma/sys_dma.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1192657380/ff.o: ../src/config/pic32mz/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/pic32mz/1dcf558ef4231666f048fbee73b1c9fb2416bad8 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1192657380" 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1192657380/ff.o.d" -o ${OBJECTDIR}/_ext/1192657380/ff.o ../src/config/pic32mz/system/fs/fat_fs/file_system/ff.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1192657380/ffunicode.o: ../src/config/pic32mz/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/pic32mz/2a6bffd1bf6f490e244bc46135115acca2a351f .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1192657380" 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1192657380/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1192657380/ffunicode.o ../src/config/pic32mz/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/727274963/diskio.o: ../src/config/pic32mz/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/pic32mz/602089f98259ff3b5e872cc4acbd5f64c11ef083 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/727274963" 
	@${RM} ${OBJECTDIR}/_ext/727274963/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/727274963/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/727274963/diskio.o.d" -o ${OBJECTDIR}/_ext/727274963/diskio.o ../src/config/pic32mz/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/252936118/sys_fs.o: ../src/config/pic32mz/system/fs/src/sys_fs.c  .generated_files/flags/pic32mz/84096d0abc68be14b2b7ee1a479085a1c6cf451d .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/252936118" 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/252936118/sys_fs.o.d" -o ${OBJECTDIR}/_ext/252936118/sys_fs.o ../src/config/pic32mz/system/fs/src/sys_fs.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o: ../src/config/pic32mz/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/pic32mz/61b3b89c33c41b5715a1735432e2ee9fa0230462 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/252936118" 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o ../src/config/pic32mz/system/fs/src/sys_fs_media_manager.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o: ../src/config/pic32mz/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/pic32mz/3d34c792e3ce3d10382267d71914aa19119e7f24 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/252936118" 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o ../src/config/pic32mz/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832149040/sys_int.o: ../src/config/pic32mz/system/int/src/sys_int.c  .generated_files/flags/pic32mz/434d8b8e2cd37467aa5395a5788a5134a66d2862 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1832149040" 
	@${RM} ${OBJECTDIR}/_ext/1832149040/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832149040/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832149040/sys_int.o.d" -o ${OBJECTDIR}/_ext/1832149040/sys_int.o ../src/config/pic32mz/system/int/src/sys_int.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1636986698/sys_time.o: ../src/config/pic32mz/system/time/src/sys_time.c  .generated_files/flags/pic32mz/24ac2355782a951c2470844b9b56b3c84556a39b .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1636986698" 
	@${RM} ${OBJECTDIR}/_ext/1636986698/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1636986698/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1636986698/sys_time.o.d" -o ${OBJECTDIR}/_ext/1636986698/sys_time.o ../src/config/pic32mz/system/time/src/sys_time.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202551283/usb_device.o: ../src/config/pic32mz/usb/src/usb_device.c  .generated_files/flags/pic32mz/8f1c0fdcfc6973459559a911c6f903c0efb5869d .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/202551283" 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/202551283/usb_device.o.d" -o ${OBJECTDIR}/_ext/202551283/usb_device.o ../src/config/pic32mz/usb/src/usb_device.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202551283/usb_device_cdc.o: ../src/config/pic32mz/usb/src/usb_device_cdc.c  .generated_files/flags/pic32mz/cf418c4c2f111ec77e39eb055874fed56944cd9a .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/202551283" 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/202551283/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o ../src/config/pic32mz/usb/src/usb_device_cdc.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o: ../src/config/pic32mz/usb/src/usb_device_cdc_acm.c  .generated_files/flags/pic32mz/9f24f933931e709693b9d1be271241a00ab46865 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/202551283" 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o ../src/config/pic32mz/usb/src/usb_device_cdc_acm.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/usb_device_init_data.o: ../src/config/pic32mz/usb_device_init_data.c  .generated_files/flags/pic32mz/55c4d15734dda8e9e6bd0eaff19dd28c3587bfc7 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o ../src/config/pic32mz/usb_device_init_data.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/tasks.o: ../src/config/pic32mz/tasks.c  .generated_files/flags/pic32mz/151abd9a85ff5b8e3bae1124b62de77cb29cb68d .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/tasks.o.d" -o ${OBJECTDIR}/_ext/953055421/tasks.o ../src/config/pic32mz/tasks.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/initialization.o: ../src/config/pic32mz/initialization.c  .generated_files/flags/pic32mz/9326455e93a5b54a8c389e5cbb4008b6cee787db .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/initialization.o.d" -o ${OBJECTDIR}/_ext/953055421/initialization.o ../src/config/pic32mz/initialization.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/interrupts.o: ../src/config/pic32mz/interrupts.c  .generated_files/flags/pic32mz/f8bfcee15b68c7be0a1dd22dcad4aaccc149d4b5 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/interrupts.o.d" -o ${OBJECTDIR}/_ext/953055421/interrupts.o ../src/config/pic32mz/interrupts.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/exceptions.o: ../src/config/pic32mz/exceptions.c  .generated_files/flags/pic32mz/9725794eb70cc7892fb93dfd195e062d8899b0c .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/exceptions.o.d" -o ${OBJECTDIR}/_ext/953055421/exceptions.o ../src/config/pic32mz/exceptions.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1230022092/BodyImpedance.o: ../src/Figaro/BodyImpedance.c  .generated_files/flags/pic32mz/755575212ab8e0214dd85f4d7a2bcd0f00bffacb .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1230022092" 
	@${RM} ${OBJECTDIR}/_ext/1230022092/BodyImpedance.o.d 
	@${RM} ${OBJECTDIR}/_ext/1230022092/BodyImpedance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1230022092/BodyImpedance.o.d" -o ${OBJECTDIR}/_ext/1230022092/BodyImpedance.o ../src/Figaro/BodyImpedance.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1230022092/ad5940.o: ../src/Figaro/ad5940.c  .generated_files/flags/pic32mz/2fa5c745ce8e55f35825f1a7aaf9035ab7834da2 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1230022092" 
	@${RM} ${OBJECTDIR}/_ext/1230022092/ad5940.o.d 
	@${RM} ${OBJECTDIR}/_ext/1230022092/ad5940.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1230022092/ad5940.o.d" -o ${OBJECTDIR}/_ext/1230022092/ad5940.o ../src/Figaro/ad5940.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1230022092/ad5940main.o: ../src/Figaro/ad5940main.c  .generated_files/flags/pic32mz/453c23a1aeb3e69a21d67e0aed83a8767853b06a .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1230022092" 
	@${RM} ${OBJECTDIR}/_ext/1230022092/ad5940main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1230022092/ad5940main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1230022092/ad5940main.o.d" -o ${OBJECTDIR}/_ext/1230022092/ad5940main.o ../src/Figaro/ad5940main.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1230022092/mpfit.o: ../src/Figaro/mpfit.c  .generated_files/flags/pic32mz/afff70814b824cdb92ec6bb771524ffa5d737710 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1230022092" 
	@${RM} ${OBJECTDIR}/_ext/1230022092/mpfit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1230022092/mpfit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1230022092/mpfit.o.d" -o ${OBJECTDIR}/_ext/1230022092/mpfit.o ../src/Figaro/mpfit.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1230022092/pic32Port.o: ../src/Figaro/pic32Port.c  .generated_files/flags/pic32mz/16bbd7a8b8e0ae6da7dd194cc3ff2e0cb19b55ae .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1230022092" 
	@${RM} ${OBJECTDIR}/_ext/1230022092/pic32Port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1230022092/pic32Port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1230022092/pic32Port.o.d" -o ${OBJECTDIR}/_ext/1230022092/pic32Port.o ../src/Figaro/pic32Port.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz/2423164412e1d305165e1c836294bc5a8b0d70ed .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz/1fc71456f2419bf5d02180378b54991814b7e30a .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/communication.o: ../src/communication.c  .generated_files/flags/pic32mz/1512155225665ce2717993949ca710da09aadfc0 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/communication.o ../src/communication.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mdot.o: ../src/mdot.c  .generated_files/flags/pic32mz/d02ee9cf51679b613eb0618ef8a1c337d89d3846 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mdot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mdot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mdot.o.d" -o ${OBJECTDIR}/_ext/1360937237/mdot.o ../src/mdot.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/stringbuffer.o: ../src/stringbuffer.c  .generated_files/flags/pic32mz/4debe64585dc17649a4a24a7e66b0c437f69ea21 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/stringbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/stringbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/stringbuffer.o.d" -o ${OBJECTDIR}/_ext/1360937237/stringbuffer.o ../src/stringbuffer.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/messaging.o: ../src/messaging.c  .generated_files/flags/pic32mz/eaa0120be667865c341fb02fef7fa41849c79ce7 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/messaging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/messaging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/messaging.o.d" -o ${OBJECTDIR}/_ext/1360937237/messaging.o ../src/messaging.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/nmea.o: ../src/nmea.c  .generated_files/flags/pic32mz/e25d4bfc8acd5cd6f96ddfd38e850b7f67ce96e7 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/nmea.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/nmea.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/nmea.o.d" -o ${OBJECTDIR}/_ext/1360937237/nmea.o ../src/nmea.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/eeprom.o: ../src/eeprom.c  .generated_files/flags/pic32mz/13c5c4bd3603f0e357b3303e2d8efbf50f926cc9 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eeprom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/eeprom.o.d" -o ${OBJECTDIR}/_ext/1360937237/eeprom.o ../src/eeprom.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/757013429/drv_sdspi.o: ../src/config/pic32mz/driver/sdspi/src/drv_sdspi.c  .generated_files/flags/pic32mz/da9ff7ce0cb600a55749e3cda85478864e3298ea .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/757013429" 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi.o.d 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/757013429/drv_sdspi.o.d" -o ${OBJECTDIR}/_ext/757013429/drv_sdspi.o ../src/config/pic32mz/driver/sdspi/src/drv_sdspi.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o: ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_driver_interface.c  .generated_files/flags/pic32mz/c5271f3ab7712fde5ce8f1d45f178d7557e47608 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/757013429" 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o.d" -o ${OBJECTDIR}/_ext/757013429/drv_sdspi_driver_interface.o ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_driver_interface.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o: ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_file_system.c  .generated_files/flags/pic32mz/5b3661847a4dcf9852947bea98b7aa0a82cdecfb .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/757013429" 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o.d" -o ${OBJECTDIR}/_ext/757013429/drv_sdspi_file_system.o ../src/config/pic32mz/driver/sdspi/src/drv_sdspi_file_system.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2120450970/drv_spi.o: ../src/config/pic32mz/driver/spi/src/drv_spi.c  .generated_files/flags/pic32mz/6ec10049fbd684afc5b0168930bdabf369a4fb6 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2120450970" 
	@${RM} ${OBJECTDIR}/_ext/2120450970/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2120450970/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2120450970/drv_spi.o.d" -o ${OBJECTDIR}/_ext/2120450970/drv_spi.o ../src/config/pic32mz/driver/spi/src/drv_spi.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1783409726/drv_usbhs.o: ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs.c  .generated_files/flags/pic32mz/78afbdea8494d079d5ac3037c0e21ef72691361a .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1783409726" 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1783409726/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1783409726/drv_usbhs.o ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o: ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs_device.c  .generated_files/flags/pic32mz/245bffc0ab2727d2a0c4833337ed45e79071ac07 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1783409726" 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1783409726/drv_usbhs_device.o ../src/config/pic32mz/driver/usb/usbhs/src/drv_usbhs_device.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1640642171/plib_cache.o: ../src/config/pic32mz/peripheral/cache/plib_cache.c  .generated_files/flags/pic32mz/cf207269579530c74cd42382e636e172727fb896 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1640642171" 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640642171/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1640642171/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1640642171/plib_cache.o ../src/config/pic32mz/peripheral/cache/plib_cache.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/10646107/plib_clk.o: ../src/config/pic32mz/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz/89b45454b9c117bd755d36bb76201955e9326b26 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/10646107" 
	@${RM} ${OBJECTDIR}/_ext/10646107/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/10646107/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/10646107/plib_clk.o.d" -o ${OBJECTDIR}/_ext/10646107/plib_clk.o ../src/config/pic32mz/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/809018751/plib_coretimer.o: ../src/config/pic32mz/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mz/73b0ec0d04b3fb857da33a756bd498703509d28b .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/809018751" 
	@${RM} ${OBJECTDIR}/_ext/809018751/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/809018751/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/809018751/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/809018751/plib_coretimer.o ../src/config/pic32mz/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330098546/plib_evic.o: ../src/config/pic32mz/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz/7dc8451438a9c496a2c015e7872a3419755ad67c .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330098546" 
	@${RM} ${OBJECTDIR}/_ext/330098546/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/330098546/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330098546/plib_evic.o.d" -o ${OBJECTDIR}/_ext/330098546/plib_evic.o ../src/config/pic32mz/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330152374/plib_gpio.o: ../src/config/pic32mz/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz/afef9f4d6b07b2df3d8c9bb2819269f459fb138e .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330152374" 
	@${RM} ${OBJECTDIR}/_ext/330152374/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/330152374/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330152374/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/330152374/plib_gpio.o ../src/config/pic32mz/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o: ../src/config/pic32mz/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/pic32mz/388da28b2d114aa51b71065f84ea20f4b81daf1b .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/249272802" 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/249272802/plib_i2c2_master.o ../src/config/pic32mz/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o: ../src/config/pic32mz/peripheral/i2c/master/plib_i2c4_master.c  .generated_files/flags/pic32mz/457b1c06e60c1a04498f8758d715ba85f100744d .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/249272802" 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o.d" -o ${OBJECTDIR}/_ext/249272802/plib_i2c4_master.o ../src/config/pic32mz/peripheral/i2c/master/plib_i2c4_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi4_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi4_master.c  .generated_files/flags/pic32mz/e44e4336f9a31d961725e3ed7b160135f89eade6 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi4_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi4_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi4_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi2_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/pic32mz/883d075e1f5311aa5cccf74592fb553eb8f40e3d .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi2_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi1_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mz/3b4a7347014b22a105943c8e73f36c9a1ca9eb21 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi1_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/867254719/plib_spi5_master.o: ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi5_master.c  .generated_files/flags/pic32mz/9831b90cbee1c490fbb0927c738eb5e12d973f1a .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/867254719" 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi5_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/867254719/plib_spi5_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/867254719/plib_spi5_master.o.d" -o ${OBJECTDIR}/_ext/867254719/plib_spi5_master.o ../src/config/pic32mz/peripheral/spi/spi_master/plib_spi5_master.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/10662482/plib_tmr2.o: ../src/config/pic32mz/peripheral/tmr/plib_tmr2.c  .generated_files/flags/pic32mz/9de4d42f78a736ae66f07acd7e89a0e0aa2a1bd .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/10662482" 
	@${RM} ${OBJECTDIR}/_ext/10662482/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/10662482/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/10662482/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/10662482/plib_tmr2.o ../src/config/pic32mz/peripheral/tmr/plib_tmr2.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart5.o: ../src/config/pic32mz/peripheral/uart/plib_uart5.c  .generated_files/flags/pic32mz/94256dd9a1b8d6430aacab9f63302ef6620ae09a .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart5.o ../src/config/pic32mz/peripheral/uart/plib_uart5.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart6.o: ../src/config/pic32mz/peripheral/uart/plib_uart6.c  .generated_files/flags/pic32mz/2e11bbb2eabdd673455a345eff5a237a035b2de2 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart6.o ../src/config/pic32mz/peripheral/uart/plib_uart6.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart3.o: ../src/config/pic32mz/peripheral/uart/plib_uart3.c  .generated_files/flags/pic32mz/bd21ce709cac798f42f4ea9ea43b5316c7a94a0b .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart3.o ../src/config/pic32mz/peripheral/uart/plib_uart3.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart4.o: ../src/config/pic32mz/peripheral/uart/plib_uart4.c  .generated_files/flags/pic32mz/bc878fe93ef9b479dd4a689b8926b1e2e741f505 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart4.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart4.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart4.o ../src/config/pic32mz/peripheral/uart/plib_uart4.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart1.o: ../src/config/pic32mz/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mz/63e68bc8c1be36f41d3df846bdf3550cf84bd4a7 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart1.o ../src/config/pic32mz/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/330555317/plib_uart2.o: ../src/config/pic32mz/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mz/40dab551077b432b13eb9061c1c5cbe75960fc52 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/330555317" 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/330555317/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/330555317/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/330555317/plib_uart2.o ../src/config/pic32mz/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/10665088/plib_wdt.o: ../src/config/pic32mz/peripheral/wdt/plib_wdt.c  .generated_files/flags/pic32mz/35cc8750ce7138da6b1c68b68d2a40fa3bbb8589 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/10665088" 
	@${RM} ${OBJECTDIR}/_ext/10665088/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/10665088/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/10665088/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/10665088/plib_wdt.o ../src/config/pic32mz/peripheral/wdt/plib_wdt.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1991269565/xc32_monitor.o: ../src/config/pic32mz/stdio/xc32_monitor.c  .generated_files/flags/pic32mz/d55e3ef3ab5968077562b9e126923fe0b7c01de1 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1991269565" 
	@${RM} ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1991269565/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1991269565/xc32_monitor.o ../src/config/pic32mz/stdio/xc32_monitor.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1519118610/sys_cache.o: ../src/config/pic32mz/system/cache/sys_cache.c  .generated_files/flags/pic32mz/e156730e340c7842472a160933c24b1ff9d330fd .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1519118610" 
	@${RM} ${OBJECTDIR}/_ext/1519118610/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1519118610/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1519118610/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1519118610/sys_cache.o ../src/config/pic32mz/system/cache/sys_cache.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1373644956/sys_dma.o: ../src/config/pic32mz/system/dma/sys_dma.c  .generated_files/flags/pic32mz/d07786d671787fedba919b4e047d1f7229198f4d .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1373644956" 
	@${RM} ${OBJECTDIR}/_ext/1373644956/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/1373644956/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1373644956/sys_dma.o.d" -o ${OBJECTDIR}/_ext/1373644956/sys_dma.o ../src/config/pic32mz/system/dma/sys_dma.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1192657380/ff.o: ../src/config/pic32mz/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/pic32mz/5690d85272b2fc5a78e29c092212f8dc9ff6ff3d .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1192657380" 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1192657380/ff.o.d" -o ${OBJECTDIR}/_ext/1192657380/ff.o ../src/config/pic32mz/system/fs/fat_fs/file_system/ff.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1192657380/ffunicode.o: ../src/config/pic32mz/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/pic32mz/706c80a39fb7587efc9cd4349207129d89388383 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1192657380" 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1192657380/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1192657380/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1192657380/ffunicode.o ../src/config/pic32mz/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/727274963/diskio.o: ../src/config/pic32mz/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/pic32mz/67ca5ade79756e68b9eb4b34a765a8eabb5251bd .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/727274963" 
	@${RM} ${OBJECTDIR}/_ext/727274963/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/727274963/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/727274963/diskio.o.d" -o ${OBJECTDIR}/_ext/727274963/diskio.o ../src/config/pic32mz/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/252936118/sys_fs.o: ../src/config/pic32mz/system/fs/src/sys_fs.c  .generated_files/flags/pic32mz/853694718cfdaa00cb94949ab84818f3dfe89a45 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/252936118" 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/252936118/sys_fs.o.d" -o ${OBJECTDIR}/_ext/252936118/sys_fs.o ../src/config/pic32mz/system/fs/src/sys_fs.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o: ../src/config/pic32mz/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/pic32mz/c7213a3e21611a5936f9ad6cb417a5afc24fe62 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/252936118" 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/252936118/sys_fs_media_manager.o ../src/config/pic32mz/system/fs/src/sys_fs_media_manager.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o: ../src/config/pic32mz/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/pic32mz/fa37cf5a87946f0663aefaae9ce3b814ff589f3e .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/252936118" 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/252936118/sys_fs_fat_interface.o ../src/config/pic32mz/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832149040/sys_int.o: ../src/config/pic32mz/system/int/src/sys_int.c  .generated_files/flags/pic32mz/3b2207d5346e5863266539d1f763cd170ce7a9d7 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1832149040" 
	@${RM} ${OBJECTDIR}/_ext/1832149040/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832149040/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832149040/sys_int.o.d" -o ${OBJECTDIR}/_ext/1832149040/sys_int.o ../src/config/pic32mz/system/int/src/sys_int.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1636986698/sys_time.o: ../src/config/pic32mz/system/time/src/sys_time.c  .generated_files/flags/pic32mz/314d814939f0d22b858a393089ff14f0e049e30d .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1636986698" 
	@${RM} ${OBJECTDIR}/_ext/1636986698/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1636986698/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1636986698/sys_time.o.d" -o ${OBJECTDIR}/_ext/1636986698/sys_time.o ../src/config/pic32mz/system/time/src/sys_time.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202551283/usb_device.o: ../src/config/pic32mz/usb/src/usb_device.c  .generated_files/flags/pic32mz/3f913b757f82b5a230b1aefb19996d035f4c113f .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/202551283" 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/202551283/usb_device.o.d" -o ${OBJECTDIR}/_ext/202551283/usb_device.o ../src/config/pic32mz/usb/src/usb_device.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202551283/usb_device_cdc.o: ../src/config/pic32mz/usb/src/usb_device_cdc.c  .generated_files/flags/pic32mz/615b771c1e66936225b0223ce1168aad197fba69 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/202551283" 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/202551283/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/202551283/usb_device_cdc.o ../src/config/pic32mz/usb/src/usb_device_cdc.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o: ../src/config/pic32mz/usb/src/usb_device_cdc_acm.c  .generated_files/flags/pic32mz/4f0bde168cce8af88ae34ccb51b7121a5e180d86 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/202551283" 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/202551283/usb_device_cdc_acm.o ../src/config/pic32mz/usb/src/usb_device_cdc_acm.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/usb_device_init_data.o: ../src/config/pic32mz/usb_device_init_data.c  .generated_files/flags/pic32mz/6583224dcaaff67a75cce53579a0921f8632b37 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/953055421/usb_device_init_data.o ../src/config/pic32mz/usb_device_init_data.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/tasks.o: ../src/config/pic32mz/tasks.c  .generated_files/flags/pic32mz/674a8d2343bef62741a782ce75fdd16677af846a .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/tasks.o.d" -o ${OBJECTDIR}/_ext/953055421/tasks.o ../src/config/pic32mz/tasks.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/initialization.o: ../src/config/pic32mz/initialization.c  .generated_files/flags/pic32mz/c370fae5c70a488b6a00b15e58d087f8aa2ddcfa .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/initialization.o.d" -o ${OBJECTDIR}/_ext/953055421/initialization.o ../src/config/pic32mz/initialization.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/interrupts.o: ../src/config/pic32mz/interrupts.c  .generated_files/flags/pic32mz/2eff1e07aa43144b544d1386d62be1ed15c1bb5e .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/interrupts.o.d" -o ${OBJECTDIR}/_ext/953055421/interrupts.o ../src/config/pic32mz/interrupts.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/953055421/exceptions.o: ../src/config/pic32mz/exceptions.c  .generated_files/flags/pic32mz/ec2f4be3cccf80bb14249e4202dd66c62e454997 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/953055421" 
	@${RM} ${OBJECTDIR}/_ext/953055421/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/953055421/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/953055421/exceptions.o.d" -o ${OBJECTDIR}/_ext/953055421/exceptions.o ../src/config/pic32mz/exceptions.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1230022092/BodyImpedance.o: ../src/Figaro/BodyImpedance.c  .generated_files/flags/pic32mz/b65a48996acac799177a99402cbc4aaa7dcff550 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1230022092" 
	@${RM} ${OBJECTDIR}/_ext/1230022092/BodyImpedance.o.d 
	@${RM} ${OBJECTDIR}/_ext/1230022092/BodyImpedance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1230022092/BodyImpedance.o.d" -o ${OBJECTDIR}/_ext/1230022092/BodyImpedance.o ../src/Figaro/BodyImpedance.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1230022092/ad5940.o: ../src/Figaro/ad5940.c  .generated_files/flags/pic32mz/d889be2e7f2e4427e61eaeb22b030b5dab6dfb21 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1230022092" 
	@${RM} ${OBJECTDIR}/_ext/1230022092/ad5940.o.d 
	@${RM} ${OBJECTDIR}/_ext/1230022092/ad5940.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1230022092/ad5940.o.d" -o ${OBJECTDIR}/_ext/1230022092/ad5940.o ../src/Figaro/ad5940.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1230022092/ad5940main.o: ../src/Figaro/ad5940main.c  .generated_files/flags/pic32mz/689279d8b85a91ee68a55092850d738f30e2b57e .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1230022092" 
	@${RM} ${OBJECTDIR}/_ext/1230022092/ad5940main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1230022092/ad5940main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1230022092/ad5940main.o.d" -o ${OBJECTDIR}/_ext/1230022092/ad5940main.o ../src/Figaro/ad5940main.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1230022092/mpfit.o: ../src/Figaro/mpfit.c  .generated_files/flags/pic32mz/ca114d4094f83a141619c75ba9cdc006f57b3462 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1230022092" 
	@${RM} ${OBJECTDIR}/_ext/1230022092/mpfit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1230022092/mpfit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1230022092/mpfit.o.d" -o ${OBJECTDIR}/_ext/1230022092/mpfit.o ../src/Figaro/mpfit.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1230022092/pic32Port.o: ../src/Figaro/pic32Port.c  .generated_files/flags/pic32mz/a27de8b3b7e535f0efb34bf4afacf6b17894dac3 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1230022092" 
	@${RM} ${OBJECTDIR}/_ext/1230022092/pic32Port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1230022092/pic32Port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1230022092/pic32Port.o.d" -o ${OBJECTDIR}/_ext/1230022092/pic32Port.o ../src/Figaro/pic32Port.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz/7c045fbfc25bb424e832fe1cb74c17cf9d8f69f0 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz/fe65e2c330198c34704f5518a50386d8111534ed .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/communication.o: ../src/communication.c  .generated_files/flags/pic32mz/5264f5a04517ac030443d670ed5f6e3d4507b200 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/communication.o ../src/communication.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mdot.o: ../src/mdot.c  .generated_files/flags/pic32mz/ea3845f52093854a873406a323d9e61d564c89ea .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mdot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mdot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mdot.o.d" -o ${OBJECTDIR}/_ext/1360937237/mdot.o ../src/mdot.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/stringbuffer.o: ../src/stringbuffer.c  .generated_files/flags/pic32mz/66b40e20b578d1d0f404825174222e3274724c1f .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/stringbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/stringbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/stringbuffer.o.d" -o ${OBJECTDIR}/_ext/1360937237/stringbuffer.o ../src/stringbuffer.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/messaging.o: ../src/messaging.c  .generated_files/flags/pic32mz/aa4a8ba816e52ed80a72d6106872e86c715e6db8 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/messaging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/messaging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/messaging.o.d" -o ${OBJECTDIR}/_ext/1360937237/messaging.o ../src/messaging.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/nmea.o: ../src/nmea.c  .generated_files/flags/pic32mz/7fab78a80d8420c5ca4be72edc6a9352c845bba7 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/nmea.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/nmea.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/nmea.o.d" -o ${OBJECTDIR}/_ext/1360937237/nmea.o ../src/nmea.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/eeprom.o: ../src/eeprom.c  .generated_files/flags/pic32mz/72e454e7b173f9c908c0fb576fd45a66bf1c4a46 .generated_files/flags/pic32mz/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eeprom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz" -I"../src/config/pic32mz/system/fs/fat_fs/file_system" -I"../src/config/pic32mz/system/fs/fat_fs/hardware_access" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/eeprom.o.d" -o ${OBJECTDIR}/_ext/1360937237/eeprom.o ../src/eeprom.c    -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/GHG_App_EFG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/pic32mz/app_mz.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD4=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/GHG_App_EFG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD4=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/GHG_App_EFG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32mz/app_mz.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/GHG_App_EFG.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/GHG_App_EFG.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
