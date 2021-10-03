%title: FreeSWITCH Lua - scripting, tips and tricks
%author: Chad Phillips
%date: 2021-10-28

<br>
-> What is Lua? <-
=========
<br>

* Scripting language
* Often used for:
  * Gaming
  * Embedded systems

----

-> What is Lua? <-
=========
* Small
<br>


```
204K /usr/bin/lua5.2
204K /usr/lib/x86_64-linux-gnu/liblua5.2.so.0.0.0
966K /usr/local/freeswitch/mod/mod_lua.so
```
<br>

## As far as embeddability goes - Python ranks a 2, Perl ranks a 4, JavaScript is a 5, and Lua is a 10!

----

-> What is Lua? <-
=========
* Fast
<br>
* Simple and elegant

----

-> Primer <-
=========

* Quick overview, not exhaustive
* Consult [lua.org/manual](https://www.lua.org/manual/) for more

----

-> Configuration in FreeSWITCH <-
=========

<br>

* conf/autoload_configs/lua.conf.xml
<br>
* module-directory: shared libraries
<br>
* script-directory: scripts
