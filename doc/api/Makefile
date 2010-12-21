#
#	Makefile -- API Documentation makefile
#
#	Copyright (c) Embedthis Software LLC, 2003-2011. All Rights Reserved.
#

include		.makedep

PRE_DIRS	+= gen*

gen:
	for f in $(PRE_DIRS) ; do \
		make -C $$f gen ; \
	done

tidy:
	tidy -q -config tidy.conf *.html
