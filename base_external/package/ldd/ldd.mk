
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = '82a9d9a9ad26226dc2d62d1f12e383b5a8674b0b'
LDD_SITE = 'git@github.com:RamyKhoury/aeld-assignment-7.git'
LDD_SITE_METHOD = git

LDD_MODULE_SUBDIRS = misc-modules scull

define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin/scull_load
	$(INSTALL) -m 0755 -D $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin/scull_unload
	$(INSTALL) -m 0755 -D $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin/module_load
	$(INSTALL) -m 0755 -D $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin/module_unload
endef

$(eval $(kernel-module))
$(eval $(generic-package))
