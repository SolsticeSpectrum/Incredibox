# Incredibox
A source code of PC version of Incredibox hacked from the Android version

You can run it on apache, nginx or any other web server.  
The Android version has same assets as PC version.  
All the differences are made with js/main.min.js and js/index.min.js

# Branches
There are 2 branches `android` and `desktop`  
The desktop branch contains the version you can get on Steam or Mac  
The android branch contains the version from Google Store  
There is also `modding` branch which aims to help modders to begin with modding

# Changing versions of the app
To change the version, just open `js/main.min.js` and `js/index.min.js`   
In those file, find those lines under `var machine = {},` in the beginning of the code  

```javascript
target = "desktop",
osname = "win",
appTotalVersion = appCN && "windows" == osname ? 4 : 8,
```
Then you can replace `"desktop"` with
```
"mobile"
"browser" this will enable the demo version from incredibox website
```

then replace `"win"` with
```
"and"
"ios"
"osx"
```

and then replace `"windows"` with
```
"android"
"ios"
"mac os x"
```
