#############################################################################
# Makefile for building: src-sh
#############################################################################

first: make_default
MAKEFILE      = Makefile
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -R
INSTALL_FILE  = $(COPY_FILE)
INSTALL_PROGRAM = $(COPY_FILE)
INSTALL_DIR   = $(COPY_DIR)
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
PREFIX?= $(STAGEDIR)/usr/local
SUBTARGETS    =  \
		sub-trueosutils
		
sub-trueosutils: trueos-utils/$(MAKEFILE) FORCE
	cd trueos-utils/ && $(MAKE) -f $(MAKEFILE)
sub-trueosutils-make_default: trueos-utils/$(MAKEFILE) FORCE
	cd trueos-utils/ && $(MAKE) -f $(MAKEFILE) 
sub-trueosutils-make_first: trueos-utils/$(MAKEFILE) FORCE
	cd trueos-utils/ && $(MAKE) -f $(MAKEFILE) first
sub-trueosutils-all: trueos-utils/$(MAKEFILE) FORCE
	cd trueos-utils/ && $(MAKE) -f $(MAKEFILE) all
sub-trueosutils-clean: trueos-utils/$(MAKEFILE) FORCE
	cd trueos-utils/ && $(MAKE) -f $(MAKEFILE) clean
sub-trueosutils-install_subtargets: trueos-utils/$(MAKEFILE) FORCE
	cd trueos-utils/ && $(MAKE) -f $(MAKEFILE) install		

make_default: sub-trueosutils-make_default \
	FORCE

make_first: sub-trueosutils-make_first \
	FORCE

all:	sub-trueosutils-all \
	FORCE

clean: sub-trueosutils-clean \
	FORCE

install_subtargets: sub-trueosutils-install_subtargets \
	FORCE

install: install_subtargets FORCE

FORCE:

