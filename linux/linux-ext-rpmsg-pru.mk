#############################################################
#
# rpmsg-pru
#
#############################################################

LINUX_EXTENSIONS += rpmsg-pru

define RPMSG_PRU_PREPARE_KERNEL
	# Concat modules.dep
endef
