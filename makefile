# Application name
APPL ?= ble_hm1x

EXT_DEV_LIST += ble/hm1x
#
# root dir of embARC
#
EMBARC_ROOT = C:/embarc_osp

MID_SEL = common

# application source dirs
APPL_CSRC_DIR = .
APPL_ASMSRC_DIR = .

# application include dirs
APPL_INC_DIR = .

# include current project makefile
COMMON_COMPILE_PREREQUISITES += makefile

### Options above must be added before include options.mk ###
# include key embARC build system makefile
override EMBARC_ROOT := $(strip $(subst \,/,$(EMBARC_ROOT)))
include $(EMBARC_ROOT)/options/options.mk

TOOLCHAIN=gnu
CUR_CORE=arcem7d
BOARD=emsk 
BD_VER=22