#!/usr/bin/perl
use warnings;
use strict;
# --
# Checks supervisorctl for programs that are not in the state of RUNNING.
# That is to say STOPPED, STARTING, BACKOFF, STOPPING, EXITED, FATAL, UNKNOWN
# Re-written in PERL.
#
#
# @author: Steve Lippert | steve.lippert@gmail.com
# @version: 0.2
# @date: 2012/02/27 (YMD)
# --
#   Copyright Steve Lippert 2012
#
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program; if not, write to the Free Software
#   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
#

#Requiring the things we need.
#use Nagios::Plugin;
use Getopt::Long;

my %options;
GetOptions(\%options, "help", "h","version", "v", "check:s", "c:s", "all", "a");

if ($options{help}||$options{h}) {
	print <<HELP;
	
$0: A Nagios check script to check on your supervisor scripts.

Syntax: $0 [--help or -h | --version or -v | --check=<SUPERVISOR_JOB_NAME> or -c=<SUPERVISOR_JOB_NAME> | --all or -a]

	--help or -h		: This help message
	--version or -v		: Print version on standard output and exit
	--check or -c		: Checks a specified Supervisor job
	--all or -a		: Checks all available Supervisor jobs (Same as version .1)
	
	Checks supervisorctl to see if specified or all programs are running.

	This plugin is NOT developped by the Nagios Plugin group.
	Please do not e-mail them for support on this plugin, since
	they won't know what you're talking about.

	Please contact steve.lippert\@gmail.com with questions.  Or visit https://github.com/stevelippert/check_supervisorctl
HELP
	exit;
}elsif ($options{version}||$options{v}){
	print "check_supervisorctl.pl, version .2\n";
	exit;
}elsif ($options{check}||$options{c}){
	
	print "I know this is the meat and potatoes of the script, but it isn't implemented yet.\n";
	print($options{c}."\n");
	exit;
}elsif ($options{all}||$options{a}){
	print "I know this is the meat and potatoes of the script, but it isn't implemented yet.\n";
	exit;
}