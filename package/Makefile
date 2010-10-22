#
#	Makefile to build the combo tools package
#
#	Copyright (c) Embedthis Software LLC, 2003-2010. All Rights Reserved.
#

include 	.makedep

STAGING			:= $(PWD)/staging
TDIR			:= $(STAGING)/tools-$(BLD_VERSION)
REL_DIR			:= ../releases
COMBO_VER_NAME	:= tools-$(BLD_VERSION)-combo.tgz
COMBO_PERM_NAME	:= tools-combo.tgz
COMBO_VER		:= $(REL_DIR)/$(COMBO_VER_NAME)
COMBO_PERM		:= $(REL_DIR)/$(COMBO_PERM_NAME)

combo packageExtra: prep $(COMBO_VER) cleanExtra

prep:
	rm -fr $(STAGING) $(COMBO_VER) $(COMBO_PERM)

$(COMBO_VER): 
	$(call log) "[PACKAGE]" "Make tools-combo.tgz"
	cd .. ; cat package/export.files | cpio --quiet -pdum $(TDIR)
	@$(call log) "[Generate]" "tar cfz $(COMBO_VER) -C $(STAGING) ."
	tar cfz $(COMBO_VER) -C $(STAGING) .
	cd $(REL_DIR) ; ln -s $(COMBO_VER_NAME) $(COMBO_PERM_NAME)

cleanExtra:
	rm -fr $(STAGING)
