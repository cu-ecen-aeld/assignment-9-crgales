################################################################################
# ldd
################################################################################

LDD_VERSION = '3dcbf8379f61d5fd51057d5a192e44624720820a'
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-crgales.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_LICENSE = GPL-2.0+
LDD_LICENSE_FILES = COPYING

LDD_MODULE_SUBDIRS = misc-modules scull

#define LDD_BUILD_CMDS
#	$(MAKE) -C $(@D)/misc-modules modules
#	$(MAKE) -C $(@D)/scull modules
#endef

#define LDD_INSTALL_TARGET_CMDS
#	$(INSTALL) -D -m 0755 $(@D)/misc-modules/hello.ko $(TARGET_DIR)/lib/modules/$(KERNEL_VERSION)/extra/hello.ko
#	$(INSTALL) -D -m 0755 $(@D)/scull/scull.ko $(TARGET_DIR)/lib/modules/$(KERNEL_VERSION)/extra/scull.ko
#endef

$(eval $(kernel-module))
$(eval $(generic-package))