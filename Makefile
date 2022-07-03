ARCHS = arm64 arm64e
THEOS_DEVICE_IP = localhost -p 2222
INSTALL_TARGET_PROCESSES = SpringBoard
TARGET = iphone:clang:14.4:12.1.2
PREFIX = $(THEOS)/toolchain/Xcode11.xctoolchain/usr/bin/
PACKAGE_VERSION = 1.1.5


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YTMusicUltimate

YTMusicUltimate_FILES = $(wildcard *.xm) $(wildcard *.m)
YTMusicUltimate_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
