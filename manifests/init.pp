# resolvconf module
#
# Copyright 2008, admin(at)immerda.ch
# Copyright 2008, Puzzle ITC GmbH
# Marcel Härry haerry+puppet(at)puzzle.ch
# Simon Josi josi+puppet(at)puzzle.ch
#
# See LICENSE for the full license granted to you.

class resolvconf {
	$domainname = $domainname ? {
		"" => false,
		default => $domainname
	}
	
	$searchpath = $searchpath ? {
		"" => [],
		default => $searchpath
	}
	
	$nameservers = $nameservers ? {
		"" => [],
		default => $nameservers
	}
		
	file { "/etc/resolv.conf":
		owner   => root,
		group   => root,
		mode    => 644,
		content => template("resolvconf/resolvconf.erb"),
	}
}
