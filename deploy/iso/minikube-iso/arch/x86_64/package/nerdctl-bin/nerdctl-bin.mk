################################################################################
# 
# nerdctl-bin
# 
################################################################################

NERDCTL_BIN_VERSION = 1.7.1
NERDCTL_BIN_COMMIT = 4692b3eaafc5dc3a3883d3b1cc0e70a35e3b5d32
NERDCTL_BIN_SITE = https://github.com/containerd/nerdctl/releases/download/v$(NERDCTL_BIN_VERSION)
NERDCTL_BIN_SOURCE = nerdctl-$(NERDCTL_BIN_AARCH64_VERSION)-linux-amd64.tar.gz
NERDCTL_BIN_STRIP_COMPONENTS = 0

define NERDCTL_BIN_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 \
                $(@D)/nerdctl \
                $(TARGET_DIR)/usr/bin/nerdctl
endef

$(eval $(generic-package))
