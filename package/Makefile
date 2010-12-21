#
#	Makefile to build the tools packages
#
#	Copyright (c) Embedthis Software LLC, 2003-2011. All Rights Reserved.
#

include 		.makedep

STAGE_DIR		:= $(BLD_OUT_DIR)/staging
REL_DIR			:= $(BLD_OUT_DIR)/releases
VNAME			:= tools-$(BLD_VERSION)
DIST_VER_NAME	:= $(VNAME)-dist.tgz
DIST_PERM_NAME	:= tools-dist.tgz

dist packageExtra: clean prep $(REL_DIR)/$(DIST_VER_NAME)

prep:
	mkdir -p $(STAGE_DIR) $(REL_DIR)

$(REL_DIR)/$(DIST_VER_NAME): 
	$(call log) "[PACKAGE]" "Make tools-dist.tgz"
	cd .. ; cat package/dist.files | cpio --quiet -pdum $(BLD_ABS_OUT_DIR)/staging/$(VNAME)
	$(call log) "[Generate]" "tar cfz $(REL_DIR)/$(DIST_VER_NAME) -C $(STAGE_DIR) ."
	tar cfz $(REL_DIR)/$(DIST_VER_NAME) -C $(STAGE_DIR) .
	ln -s $(DIST_VER_NAME) $(REL_DIR)/$(DIST_PERM_NAME)
	rm -fr $(STAGE_DIR)

cleanExtra:
	rm -fr $(STAGE_DIR) $(REL_DIR)/$(DIST_VER_NAME) $(REL_DIR)/$(DIST_PERM_NAME)

#
#   Local variables:
#   tab-width: 4
#   c-basic-offset: 4
#   End:
#   vim: sw=4 ts=4
#
