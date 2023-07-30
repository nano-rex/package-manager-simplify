#!/bin/sh

# OpenBSD package manager

# repo
#/etc/installurl

# search
pkg_info -Q ${package}

# install
pkg_add -Iv ${package}

# remove
pkg_delete ${package}

# upgrade all
sysupgrade

