THEOS_DEVICE_IP = 192.168.31.145
THEOS_DEVICE_PORT = 22

export ARCHS = arm64 armv7
export TARGET = iphone:clang:latest:8.0
export DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AFlexLoader
AFlexLoader_FILES = Tweak.xm

AFlexLoader_OBJ_FILES = lib/libAFlexLoader.a

AFlexLoader_FRAMEWORKS += Foundation UIKit
AFlexLoader_LDFLAGS += -lz -lsqlite3

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 WeChat"


