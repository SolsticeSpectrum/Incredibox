/* 1.0.1 2021-04-23 19:29:44 */
const {
    app: app,
    BrowserWindow: BrowserWindow,
    Menu: Menu,
    dialog: dialog
} = require("electron"), path = require("path");
let mainWindow, menu;

function createWindow() {
    (mainWindow = new BrowserWindow({
        title: "Incredibox",
        width: 1980,
        height: 1200,
        minWidth: 1074,
        minHeight: 768,
        titleBarStyle: "hidden",
        backgroundColor: "#000000",
        show: !1,
        fullscreen: !0,
        autoHideMenuBar: !0,
        webPreferences: {
            devTools: !1,
            enableRemoteModule: !0,
            nodeIntegration: true,
            preload: path.join(__dirname, "preload.js"),
        }
    })).webContents.on("devtools-opened", () => {
        mainWindow.webContents.closeDevTools()
    }), mainWindow.loadFile(path.join(__dirname, "app/index.html")), mainWindow.on("close", e => {
        app.quitting || (e.preventDefault(), "darwin" === process.platform ? dialog.showMessageBox(mainWindow, {
            type: "question",
            title: "Confirm",
            buttons: [app.textlist["bt.quit"], app.textlist["bt.cancel"]],
            cancelId: 1,
            defaultId: 0,
            message: app.textlist["txt.quitAppConfirm"]
        }, function(e) {
            0 === e && (mainWindow.destroy(), app.quit())
        }) : (mainWindow.destroy(), app.quit()))
    }), mainWindow.once("ready-to-show", () => {
        void 0 != mainWindow && mainWindow.show()
    }), menu = Menu.buildFromTemplate(myMenu), Menu.setApplicationMenu(menu)
}
app.textlist = {
    "txt.quitAppConfirm": "Do you really want to quit Incredibox?",
    "bt.quit": "Quit",
    "bt.cancel": "Cancel"
}, app.name = "Incredibox", app.on("ready", createWindow), app.on("window-all-closed", function() {}), app.on("before-quit", () => {
    app.quitting = !0
}), app.on("activate", function() {
    null === mainWindow ? createWindow() : mainWindow.show()
});
const myMenu = [{
    role: "window",
    submenu: [{
        role: "zoom"
    }, {
        role: "togglefullscreen"
    }, {
        type: "separator"
    }, {
        role: "minimize"
    }, {
        role: "close"
    }]
}, {
    label: "Edit",
    submenu: [{
        role: "undo"
    }, {
        role: "redo"
    }, {
        type: "separator"
    }, {
        role: "cut"
    }, {
        role: "copy"
    }, {
        role: "paste"
    }, {
        role: "delete"
    }, {
        role: "selectall"
    }]
}];
"darwin" === process.platform && myMenu.unshift({
    label: app.name,
    submenu: [{
        role: "about"
    }, {
        type: "separator"
    }, {
        role: "hide"
    }, {
        role: "hideothers"
    }, {
        role: "unhide"
    }, {
        type: "separator"
    }, {
        role: "quit"
    }]
});
