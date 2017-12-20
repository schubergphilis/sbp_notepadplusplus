Description
===========
This cookbook installs Notepad++

Requirements
============
* Chef 12.4+

Platform
--------
* Windows

Attributes
==========
* `default['notepadplusplus']['url']`
* `default['notepadplusplus']['checksum']`

Usage
=====
Include the default recipe on a node's runlist to ensure that Notepad++ is installed

Note about the origin
====
This modification was actually built upon https://github.com/Webtrends/notepadplusplus/ (hi Tim!) but renamed to cope with idle maintainers and name ambiguity.
