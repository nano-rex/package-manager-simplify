#!/bin/sh

#/etc/installurl

# package
pkg_info -Q xfce # search
pkg_add -Iv xfce # install
pkg_delete xfce # remove
sysupgrade

