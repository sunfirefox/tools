#
#	Makefile for bin
#
#	Copyright (c) Embedthis Software LLC, 2003-2010. All Rights Reserved.
#
 
include 		.makedep

dependExtra:
	mkdir -p $(BLD_BIN_DIR)

cleanExtra:
	rm -f $(BLD_BIN_DIR)/*.exe
	rm -f $(BLD_BIN_DIR)/*.lib
	rm -f $(BLD_BIN_DIR)/*.dylib
	rm -f $(BLD_BIN_DIR)/*.a
	rm -f $(BLD_BIN_DIR)/*.so
	rm -f $(BLD_BIN_DIR)/*.mod

clobberExtra: 
	[ "$(BUILD_CROSS)" = 1 ] && rm -fr "./$(BLD_HOST_SYSTEM)" ; true
