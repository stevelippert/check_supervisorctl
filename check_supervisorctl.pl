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
use Getopt::Std;


my %options;
getopts("h:",\%options);