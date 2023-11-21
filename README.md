# Incredibox
A source code of PC version of Incredibox hacked from the Android version

You can run it on apache, nginx or any other web server.  
The Android version has same assets as PC version.  
All the differences are made with js/main.min.js and js/index.min.js

# Note
Version 9 came out, keep in mind that this is an old build of Incredibox  
from times when Incredibox wasn't obfuscated yet (0.5.4), you can  
play V9 just fine since I backported it to 0.5.4 in this project, mixes  
work just fine out of the box as the server only cares about version  

I am not obligated to fix any bugs that might arrise from backporting!

# Branches
There are 2 branches `main` and `modding`  
The main branch contains all the webapp code extracted from the Android app  
The modding branch aims to help modders with easy to follow tutorial

# Changing versions of the app
To change the version, just open `js/main.min.js` and `js/index.min.js`   
In those file, find those lines under `var machine = {},` in the beginning of the code  

```javascript
target = "desktop",
osname = "win",
appTotalVersion = appCN && "windows" == osname ? 4 : 8,
```
Then you can target `"desktop"` with
```
"mobile"
"browser" this will enable the demo version from incredibox website
```

then replace osname `"win"` with
```
"and"
"ios"
"osx"
```

and then replace `"windows"` in appTotalVersion with
```
"android"
"ios"
"mac os x"
```
