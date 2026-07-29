SDKVERSION = 15.6
ARCHS = arm64 arm64e
THEOS_PACKAGE_SCHEME = rootless
THEOS_DEVICE_IP = localhost -p 2222
INSTALL_TARGET_PROCESSES = SpringBoard
PACKAGE_VERSION = 1.0.1-1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = RouteConfigurator
TARGET = iphone:clang:15.6:15.6
RouteConfigurator_FILES = Tweak.x
RouteConfigurator_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += routeconfigurator
SUBPROJECTS += routeconfiguratorcc
include $(THEOS_MAKE_PATH)/aggregate.mk
