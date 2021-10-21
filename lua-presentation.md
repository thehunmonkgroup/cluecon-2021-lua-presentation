%title: FreeSWITCH Lua - scripting, tips and tricks
%author: Chad Phillips
%date: 2021-10-28

<br>
-> About me <-
=========

<br>
* Using FreeSWITCH since 2008
* Build complex call flows in Lua
* Wrote Comedian Mail replica in FreeSWITCH/Lua

----

-> Context for the talk <-
=========

<br>
* Assuming you
  * Are familiar with:
    * Basic programming concepts
    * FreeSWITCH
  * Are not as familiar with:
    * Lua
    * FreeSWITCH/Lua integration
<br>
* So much I could cover!
* Goals
  * Intro to Lua and integration into FreeSWITCH
  * Show off some capabilities
  * Point to further resources

----

-> Overview <-
=========

<br>
* What is Lua?
<br>
* Language primer
<br>
* Integration with FreeSWITCH
<br>
* Examples
  * Basic
  * Advanced
<br>
* Tips and tricks

----

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
  Frequently cited as one of the fastest scripting languages
<br>
* Simple and elegant
<br>
  * Table, the one complex data structure
<br>
  * Meta-mechanism
    * `setmetatable()`: metadata table for another table
    * Allows object-oriented programming

----

-> Primer <-
=========

* Quick overview, not exhaustive
* Consult [lua.org/manual](https://www.lua.org/manual/) for more

----

-> Integration with FreeSWITCH -- configuration <-
=========

<br>
* `mod_lua`: compiled and loaded
<br>
* Config: `conf/autoload_configs/lua.conf.xml`
<br>
  * `module-directory`: shared libraries
  * `script-directory`: scripts
<br>
* Scripts
  * `[base_dir]/scripts`

----

-> Examples <-
=========

* Just a taste
* Check out the [FreeSWITCH/Lua wiki pages](https://freeswitch.org/confluence/display/FREESWITCH/mod_lua)

----

-> Integration with FreeSWITCH -- objects <-
=========

<br>
* `freeswitch`: global object
<br>
* `session`: session object
<br>
* There are others, check [the doc](https://freeswitch.org/confluence/display/FREESWITCH/Lua+API+Reference)

----

-> Integration with FreeSWITCH -- executing scripts <-
=========

<br>
* `lua`
  * Runs in current thread
  * Waits for script completion
<br>
* `luarun`
  * Runs in separate thread
  * Returns immediately
<br>
* Console
  * `lua example.lua`
<br>
* Dialplan
  * `<action application="lua" data="example.lua"/>`

----

-> What else can you do? <-
=========

<br>
* Get/set session/global variables
<br>
* Events
  * Fire new: `freeswitch.Event()`
  * Consume: `freeswitch.EventConsumer()`
<br>
* Call management
  * Initiate new: `session:originate()`
  * Record audio `session:recordFile()`
  * Fire callback function on hangup: `session:setHangupHook()`
  * Dozens of other methods
* IVR Menus: `freeswitch.IVRMenu()`
* Send email
  * `freeswitch.email()`
  * Third party libraries
* ...and more...

----

->  Tips <-
=========

<br>
1. Debug with inspect.lua
<br>
  * Pretty output of any variable
  * [https://github.com/kikito/inspect.lua](https://github.com/kikito/inspect.lua)
2. Parse JSON
  * No native JSON parser
  * Use `freeswitch.JSON()`
3. Read the excellent documentation
  * [Programming in Lua (PIL)](https://www.lua.org/pil/)
  * [FreeSWITCH/Lua API reference](https://freeswitch.org/confluence/display/FREESWITCH/Lua+API+Reference)

----

https://hub.packtpub.com/scripting-freeswitch-lua/
https://freeswitch.org/confluence/display/FREESWITCH/mod_lua
https://tinyurl.com/cluecon-2021-lua-talk
pjsua --config-file ~/pjsip/1002.cfg
