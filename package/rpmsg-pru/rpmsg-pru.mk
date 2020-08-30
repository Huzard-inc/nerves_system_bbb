#############################################################
#
# rpmsg-pru
#
#############################################################

RPMSG_PRU_VERSION = 4.19.94-ti-r50
RPMSG_PRU_SITE = https://github.com/beagleboard/linux/archive
RPMSG_PRU_SOURCE = $(RPMSG_PRU_VERSION).tar.gz
RPMSG_PRU_LICENSE = GPL-2.0
RPMSG_PRU_LICENSE_FILES = COPYING

RPMSG_PRU_MODULE_SUBDIRS = drivers/rpmsg
RPMSG_PRU_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)

# define EXTRA_DTS_BUILD_CMDS
# 	cp $(NERVES_DEFCONFIG_DIR)/package/extra-dts/*.dts* $(@D)
# 		for filename in $(@D)/*.dts; do \
# 			$(CPP) -I$(@D) -nostdinc -undef -D__DTS__ -x assembler-with-cpp $$filename | \
# 			  $(HOST_DIR)/usr/bin/dtc -Wno-unit_address_vs_reg -@ -I dts -O dtb -b 0 -o $${filename%.dts}.dtbo || exit 1; \
# 		done
# endef

# define EXTRA_DTS_INSTALL_TARGET_CMDS
# 		cp $(@D)/*.dtbo $(TARGET_DIR)/lib/firmware
# endef

# define RPMSG_PRU_BUILD_CMDS

# endef

# define RPMSG_PRU_INSTALL_TARGET_CMDS
# 	cp $(@D)/*.ko $(TARGET_DIR)/lib/modules/$(LINUX_VERSION_PROBED)/kernel/drivers/rpmsg
# endef

$(eval $(kernel-module))
$(eval $(generic-package))
