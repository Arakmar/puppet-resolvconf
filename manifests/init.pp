# resolvconf module
#
# Copyright 2008, admin(at)immerda.ch
# Copyright 2008, Puzzle ITC GmbH
# Marcel Härry haerry+puppet(at)puzzle.ch
# Simon Josi josi+puppet(at)puzzle.ch
#
# This program is free software; you can redistribute 
# it and/or modify it under the terms of the GNU 
# General Public License version 3 as published by 
# the Free Software Foundation.
#
# This class handles configuring /etc/resolv.conf
#
# Parameters:
#       $domainname: The default domain
#
#       $searchpath: Array of domains to search
#
#       $nameservers: List of nameservers to search
#
# Actions:
#       Configures the /etc/resolv.conf file according to parameters
#
# Requires:
#
# Sample Usage:
#       resolv_conf { "example":
#                       domainname  => "mydomain",
#                       searchpath  => ['mydomain', 'test.mydomain'],
#                       nameservers => ['192.168.1.100', '192.168.1.101', '192.168.1.102'],
#       }
#
class resolvconf {
        # noop
}

define resolv_conf($domainname = false, $searchpath, $nameservers) {
        file { "/etc/resolv.conf":
                owner   => root,
                group   => root,
                mode    => 644,
                content => template("resolvconf/resolvconf.erb"),
        }
}
