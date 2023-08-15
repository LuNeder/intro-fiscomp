/* ./tarefa-1-13836963.f -- translated by f2c (version 20200916).
   You must link the resulting object file with libf2c:
	on Microsoft Windows system, link with libf2c.lib;
	on Linux or Unix systems, link with .../path/to/libf2c.a -lm
	or, if you install libf2c.a in a standard place, with -lf2c -lm
	-- in that order, at the end of the command line, as in
		cc *.o -lf2c -lm
	Source for libf2c is in /netlib/f2c/libf2c.zip, e.g.,

		http://www.netlib.org/f2c/libf2c.zip
*/

#include "f2c.h"

/* Table of constant values */

static integer c__9 = 9;
static integer c__1 = 1;
static integer c__4 = 4;


/* Main program */ int MAIN__(void)
{
    /* System generated locals */
    real r__1;

    /* Builtin functions */
    integer s_wsle(cilist *), do_lio(integer *, integer *, char *, ftnlen), 
	    e_wsle(void), s_rsle(cilist *), e_rsle(void);
    double sqrt(doublereal);
    /* Subroutine */ int s_stop(char *, ftnlen);

    /* Local variables */
    static real a, b, c__, r1, r2, delta;

    /* Fortran I/O blocks */
    static cilist io___1 = { 0, 6, 0, 0, 0 };
    static cilist io___2 = { 0, 5, 0, 0, 0 };
    static cilist io___7 = { 0, 6, 0, 0, 0 };
    static cilist io___10 = { 0, 6, 0, 0, 0 };


    s_wsle(&io___1);
    do_lio(&c__9, &c__1, "De a, b e c da equacao", (ftnlen)22);
    e_wsle();
    s_rsle(&io___2);
    do_lio(&c__4, &c__1, (char *)&a, (ftnlen)sizeof(real));
    do_lio(&c__4, &c__1, (char *)&b, (ftnlen)sizeof(real));
    do_lio(&c__4, &c__1, (char *)&c__, (ftnlen)sizeof(real));
    e_rsle();
/* Computing 2nd power */
    r__1 = b;
    delta = sqrt(r__1 * r__1 - a * 4.f * c__);
    if (delta < 0.f) {
	s_wsle(&io___7);
	do_lio(&c__9, &c__1, "sem raizes", (ftnlen)10);
	e_wsle();
	s_stop("", (ftnlen)0);
    }
    r1 = (-b + delta) / (a * 2);
    r2 = (-b - delta) / (a * 2);
    s_wsle(&io___10);
    do_lio(&c__9, &c__1, "As ra\303\255zes s\303\243o", (ftnlen)15);
    do_lio(&c__4, &c__1, (char *)&r1, (ftnlen)sizeof(real));
    do_lio(&c__9, &c__1, "e", (ftnlen)1);
    do_lio(&c__4, &c__1, (char *)&r2, (ftnlen)sizeof(real));
    e_wsle();
    return 0;
} /* MAIN__ */

