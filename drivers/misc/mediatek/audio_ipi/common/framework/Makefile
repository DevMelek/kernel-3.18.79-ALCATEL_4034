#
# Copyright (C) 2016 MediaTek Inc.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See http://www.gnu.org/licenses/gpl-2.0.html for more details.
#


### include
ccflags-y += \
	-I$(srctree)/drivers/misc/mediatek/base/power/include \
	-I$(srctree)/drivers/misc/mediatek/scp/$(MTK_PLATFORM) \
	-I$(srctree)/drivers/misc/mediatek/audio_ipi/common/utility

### DO
ifeq ($(CONFIG_MTK_DO),y)
ccflags-y += -I$(srctree)/drivers/staging/dyn_obj/$(MTK_PLATFORM)
endif

### call
ifeq ($(CONFIG_MTK_AURISYS_PHONE_CALL_SUPPORT),y)
ccflags-y += -I$(srctree)/drivers/misc/mediatek/audio_ipi/common/tasks/call
endif

### mp3
ifeq ($(CONFIG_MTK_AUDIO_TUNNELING_SUPPORT),y)
ccflags-y += -I$(srctree)/drivers/misc/mediatek/audio_ipi/common/tasks/mp3
endif


### c files
obj-y += audio_dma_buf_control.o
obj-y += audio_ipi_driver.o
obj-y += audio_ipi_message.o
obj-y += audio_ipi_queue.o
obj-y += audio_messenger_ipi.o
obj-y += audio_task_manager.o

ifeq ($(CONFIG_MT_ENG_BUILD),y)
CFLAGS_audio_dma_buf_control.o += -DDEBUG
CFLAGS_audio_ipi_driver.o += -DDEBUG
CFLAGS_audio_ipi_message.o += -DDEBUG
CFLAGS_audio_ipi_queue.o += -DDEBUG
CFLAGS_audio_messenger_ipi.o += -DDEBUG
CFLAGS_audio_task_manager.o += -DDEBUG
endif



