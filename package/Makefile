#
#	Makefile to build the tools packages
#
#	Copyright (c) Embedthis Software LLC, 2003-2010. All Rights Reserved.
#

include 	.makedep

STAGING			:= $(PWD)/staging
TDIR			:= $(STAGING)/tools-$(BLD_VERSION)
REL_DIR			:= $(BLD_OUT_DIR)/releases
DIST_VER_NAME	:= tools-$(BLD_VERSION)-dist.tgz
DIST_PERM_NAME	:= tools-dist.tgz
DIST_VER		:= $(REL_DIR)/$(DIST_VER_NAME)
DIST_PERM		:= $(REL_DIR)/$(DIST_PERM_NAME)

dist packageExtra: prep $(DIST_VER)

prep:
	rm -fr $(STAGING) $(DIST_VER) $(DIST_PERM)
	mkdir -p $(REL_DIR)

$(DIST_VER): 
	$(call log) "[PACKAGE]" "Make tools-dist.tgz"
	cd .. ; cat package/export.files | cpio --quiet -pdum $(TDIR)
	@$(call log) "[Generate]" "tar cfz $(DIST_VER) -C $(STAGING) ."
	tar cfz $(DIST_VER) -C $(STAGING) .
	cd $(REL_DIR) ; ln -s $(DIST_VER_NAME) $(DIST_PERM_NAME)
	rm -fr $(STAGING)

cleanExtra:
	rm -fr $(STAGING) $(REL_DIR)/*.tgz
