
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = 'main'
LDD_SITE = 'git@github.com:RamyKhoury/aeld-assignment-7.git'
LDD_SITE_METHOD = git

LDD_MODULE_SUBDIR += misc-modules
LDD_MODULE_SUBDIR += scull

define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin/scull_load
	$(INSTALL) -m 0755 -D $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin/scull_unload
	$(INSTALL) -m 0755 -D $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin/module_load
	$(INSTALL) -m 0755 -D $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin/module_unload
endef

$(eval $(kernel-module))
$(eval $(generic-package))
