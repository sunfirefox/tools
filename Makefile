# 
#	Makefile -- Top level Makefile
#
#	Copyright (c) Embedthis Software LLC, 2003-2012. All Rights Reserved.
#
#	Standard Make targets supported are:
#	
#		make 						# Does a "make compile"
#		make clean					# Removes generated objects
#		make compile				# Compiles the source
#		make depend					# Generates the make dependencies
#		make test 					# Runs unit tests
#		make package				# Creates an installable package
#
#	To remove, use make uninstall-ITEM, where ITEM is a component above.
#

DEPS		=
PRE_DIRS	= build src doc projects package

include		build/make/Makefile.top

#
#   Local variables:
#   tab-width: 4
#   c-basic-offset: 4
#   End:
#   vim: sw=4 ts=4 noexpandtab
#
