#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "fstrcmp.h"
#include "fstrcmp.c"

MODULE = String::Similarity		PACKAGE = String::Similarity

double
fstrcmp(s1, s2)
	char *	s1
        char *	s2
        PROTOTYPE: @

