include $(THEOS)/makefiles/common.mk

TWEAK_NAME = RunMario
RunMario_FILES = Tweak.xm

export TARGET = iphone:clang
export ARCHS = armv7 arm64
export TARGET_IPHONEOS_DEPLOYMENT_VERSION = 8.0

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
