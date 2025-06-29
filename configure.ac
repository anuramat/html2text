#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.
#
# Copyright 2020-2025 Fabian Groffen <grobian@bitzolder.nl>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License in the file COPYING for more details.

AC_PREREQ([2.71])
AC_INIT([html2text], [2.3.0.9999_pre], [BUG-REPORT-ADDRESS])
AC_CONFIG_MACRO_DIRS([m4])
AM_INIT_AUTOMAKE
AM_MAINTAINER_MODE([enable])
# necessary for running autopoint to get iconv.m4 using >=gettext-0.25
AM_GNU_GETTEXT_VERSION([0.20])
AM_GNU_GETTEXT([external])
AM_ICONV
LIBCURL_CHECK_CONFIG
#AC_CONFIG_SRCDIR([html.h])
AC_CONFIG_HEADERS([config.h])

# Checks for programs.
AC_PROG_YACC
AC_PROG_CXX
AX_CXX_COMPILE_STDCXX_11([noext], [mandatory])
AC_PROG_INSTALL
AC_PROG_LN_S

# Checks for typedefs, structures, and compiler characteristics.
AC_CHECK_HEADER_STDBOOL
AC_C_INLINE
AC_TYPE_SIZE_T
AC_CHECK_TYPES([ptrdiff_t])

# Checks for library functions.
AC_FUNC_ERROR_AT_LINE
AC_FUNC_MALLOC
AC_FUNC_REALLOC

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
