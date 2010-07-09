#
#	Makefile to build the all-in-one combined tools package
#
#	Copyright (c) Embedthis Software LLC, 2003-2010. All Rights Reserved.
#

include 	.makedep

STAGING		:= staging/all-in-one 

combo packageExtra:
	$(call log) "[PACKAGE]" "Make tools-all.tgz"
	tar cfz ../releases/tools-all.tgz --files-from export.files -C $(BLD_TOP)
