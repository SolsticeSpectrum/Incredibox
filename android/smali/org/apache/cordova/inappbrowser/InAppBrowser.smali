.class public Lorg/apache/cordova/inappbrowser/InAppBrowser;
.super Lorg/apache/cordova/CordovaPlugin;
.source "InAppBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;
    }
.end annotation


# static fields
.field private static final BEFORELOAD:Ljava/lang/String; = "beforeload"

.field private static final CLEAR_ALL_CACHE:Ljava/lang/String; = "clearcache"

.field private static final CLEAR_SESSION_CACHE:Ljava/lang/String; = "clearsessioncache"

.field private static final CLOSE_BUTTON_CAPTION:Ljava/lang/String; = "closebuttoncaption"

.field private static final CLOSE_BUTTON_COLOR:Ljava/lang/String; = "closebuttoncolor"

.field private static final DEFAULT_HARDWARE_BACK:Ljava/lang/Boolean;

.field private static final EXIT_EVENT:Ljava/lang/String; = "exit"

.field private static final FILECHOOSER_REQUESTCODE:I = 0x1

.field private static final FILECHOOSER_REQUESTCODE_LOLLIPOP:I = 0x2

.field private static final FOOTER:Ljava/lang/String; = "footer"

.field private static final FOOTER_COLOR:Ljava/lang/String; = "footercolor"

.field private static final FULLSCREEN:Ljava/lang/String; = "fullscreen"

.field private static final HARDWARE_BACK_BUTTON:Ljava/lang/String; = "hardwareback"

.field private static final HIDDEN:Ljava/lang/String; = "hidden"

.field private static final HIDE_NAVIGATION:Ljava/lang/String; = "hidenavigationbuttons"

.field private static final HIDE_URL:Ljava/lang/String; = "hideurlbar"

.field private static final LEFT_TO_RIGHT:Ljava/lang/String; = "lefttoright"

.field private static final LOAD_ERROR_EVENT:Ljava/lang/String; = "loaderror"

.field private static final LOAD_START_EVENT:Ljava/lang/String; = "loadstart"

.field private static final LOAD_STOP_EVENT:Ljava/lang/String; = "loadstop"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field protected static final LOG_TAG:Ljava/lang/String; = "InAppBrowser"

.field private static final MEDIA_PLAYBACK_REQUIRES_USER_ACTION:Ljava/lang/String; = "mediaPlaybackRequiresUserAction"

.field private static final MESSAGE_EVENT:Ljava/lang/String; = "message"

.field private static final NAVIGATION_COLOR:Ljava/lang/String; = "navigationbuttoncolor"

.field private static final NULL:Ljava/lang/String; = "null"

.field private static final SELF:Ljava/lang/String; = "_self"

.field private static final SHOULD_PAUSE:Ljava/lang/String; = "shouldPauseOnSuspend"

.field private static final SYSTEM:Ljava/lang/String; = "_system"

.field private static final TOOLBAR_COLOR:Ljava/lang/String; = "toolbarcolor"

.field private static final USER_WIDE_VIEW_PORT:Ljava/lang/String; = "useWideViewPort"

.field private static final ZOOM:Ljava/lang/String; = "zoom"

.field private static final customizableOptions:Ljava/util/List;


# instance fields
.field private allowedSchemes:[Ljava/lang/String;

.field private beforeload:Ljava/lang/String;

.field private callbackContext:Lorg/apache/cordova/CallbackContext;

.field private clearAllCache:Z

.field private clearSessionCache:Z

.field private closeButtonCaption:Ljava/lang/String;

.field private closeButtonColor:Ljava/lang/String;

.field private currentClient:Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;

.field private dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

.field private edittext:Landroid/widget/EditText;

.field private footerColor:Ljava/lang/String;

.field private fullscreen:Z

.field private hadwareBackButton:Z

.field private hideNavigationButtons:Z

.field private hideUrlBar:Z

.field private inAppWebView:Landroid/webkit/WebView;

.field private leftToRight:Z

.field private mUploadCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadCallbackLollipop:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mediaPlaybackRequiresUserGesture:Z

.field private navigationButtonColor:Ljava/lang/String;

.field private openWindowHidden:Z

.field private shouldPauseInAppBrowser:Z

.field private showFooter:Z

.field private showLocationBar:Z

.field private showZoomControls:Z

.field private toolbarColor:I

.field private useWideViewPort:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->DEFAULT_HARDWARE_BACK:Ljava/lang/Boolean;

    const-string v0, "closebuttoncaption"

    const-string v1, "toolbarcolor"

    const-string v2, "navigationbuttoncolor"

    const-string v3, "closebuttoncolor"

    const-string v4, "footercolor"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->customizableOptions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showZoomControls:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearAllCache:Z

    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearSessionCache:Z

    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hadwareBackButton:Z

    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mediaPlaybackRequiresUserGesture:Z

    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->shouldPauseInAppBrowser:Z

    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->useWideViewPort:Z

    const-string v2, ""

    iput-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeButtonCaption:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeButtonColor:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->leftToRight:Z

    const v3, -0x333334

    iput v3, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->toolbarColor:I

    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hideNavigationButtons:Z

    iput-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->navigationButtonColor:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hideUrlBar:Z

    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showFooter:Z

    iput-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->footerColor:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->beforeload:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->fullscreen:Z

    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->currentClient:Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;

    return-object p0
.end method

.method static synthetic access$002(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;)Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;
    .locals 0

    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->currentClient:Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;

    return-object p1
.end method

.method static synthetic access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->navigationButtonColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->goForward()V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->navigate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->footerColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/ValueCallback;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallbackLollipop:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$1502(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallbackLollipop:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1602(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallback:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->beforeload:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showZoomControls:Z

    return p0
.end method

.method static synthetic access$1900(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mediaPlaybackRequiresUserGesture:Z

    return p0
.end method

.method static synthetic access$200(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/CordovaPreferences;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->preferences:Lorg/apache/cordova/CordovaPreferences;

    return-object p0
.end method

.method static synthetic access$202(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
    .locals 0

    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/CordovaPreferences;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->preferences:Lorg/apache/cordova/CordovaPreferences;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearAllCache:Z

    return p0
.end method

.method static synthetic access$2300(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearSessionCache:Z

    return p0
.end method

.method static synthetic access$2400(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->useWideViewPort:Z

    return p0
.end method

.method static synthetic access$2500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hideNavigationButtons:Z

    return p0
.end method

.method static synthetic access$2600(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hideUrlBar:Z

    return p0
.end method

.method static synthetic access$2700(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 0

    invoke-direct {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->getShowLocationBar()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showFooter:Z

    return p0
.end method

.method static synthetic access$2900(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    return p0
.end method

.method static synthetic access$300(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/json/JSONObject;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic access$3000(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V

    return-void
.end method

.method static synthetic access$3100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->allowedSchemes:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3102(Lorg/apache/cordova/inappbrowser/InAppBrowser;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->allowedSchemes:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/CordovaPreferences;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->preferences:Lorg/apache/cordova/CordovaPreferences;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeButtonCaption:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeButtonColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->leftToRight:Z

    return p0
.end method

.method static synthetic access$700(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->fullscreen:Z

    return p0
.end method

.method static synthetic access$800(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .locals 0

    invoke-direct {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->getInAppBrowser()Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lorg/apache/cordova/inappbrowser/InAppBrowser;)I
    .locals 0

    iget p0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->toolbarColor:I

    return p0
.end method

.method private getInAppBrowser()Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .locals 0

    return-object p0
.end method

.method private getShowLocationBar()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    return v0
.end method

.method private goForward()V
    .locals 1

    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    :cond_0
    return-void
.end method

.method private injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object p2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$5;

    invoke-direct {v0, p0, p1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$5;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string p1, "InAppBrowser"

    const-string p2, "Can\'t inject code into the system browser"

    invoke-static {p1, p2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private navigate(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    return-void
.end method

.method private openExternalExcludeCurrentApp(Landroid/content/Intent;)V
    .locals 8

    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v6, :cond_3

    iget-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v6

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    new-array v0, v2, [Landroid/os/Parcelable;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private parseFeature(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/util/StringTokenizer;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-direct {p1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lorg/apache/cordova/inappbrowser/InAppBrowser;->customizableOptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "yes"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "no"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v3

    :cond_3
    :goto_1
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private sendUpdate(Lorg/json/JSONObject;Z)V
    .locals 1

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V

    return-void
.end method

.method private sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/cordova/PluginResult;

    invoke-direct {v0, p3, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {v0, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    :cond_0
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public closeDialog()V
    .locals 2

    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;

    invoke-direct {v1, p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "InAppBrowser"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iput-object p3, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v3}, Lorg/apache/cordova/CordovaArgs;->optString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "_self"

    :cond_1
    move-object v6, p1

    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CordovaArgs;->optString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->parseFeature(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "target = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lorg/apache/cordova/inappbrowser/InAppBrowser$1;

    move-object v4, p2

    move-object v5, p0

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lorg/apache/cordova/inappbrowser/InAppBrowser$1;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_2
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeDialog()V

    goto/16 :goto_3

    :cond_3
    const-string v0, "loadAfterBeforeload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->beforeload:Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, "unexpected loadAfterBeforeload called without feature beforeload=yes"

    invoke-static {v1, p1}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance p3, Lorg/apache/cordova/inappbrowser/InAppBrowser$2;

    invoke-direct {p3, p0, p1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$2;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_5
    const-string v0, "injectScriptCode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x0

    invoke-virtual {p2, v3}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v2

    const-string p3, "(function(){prompt(JSON.stringify([eval(%%s)]), \'gap-iab://%s\')})()"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    const-string v0, "injectScriptFile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2, v3}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_8

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v2

    const-string p3, "(function(d) { var c = d.createElement(\'script\'); c.src = %%s; c.onload = function() { prompt(\'\', \'gap-iab://%s\'); }; d.body.appendChild(c); })(document)"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_8
    const-string p1, "(function(d) { var c = d.createElement(\'script\'); c.src = %s; d.body.appendChild(c); })(document)"

    :goto_0
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    const-string v0, "injectStyleCode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2, v3}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_a

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v2

    const-string p3, "(function(d) { var c = d.createElement(\'style\'); c.innerHTML = %%s; d.body.appendChild(c); prompt(\'\', \'gap-iab://%s\');})(document)"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_a
    const-string p1, "(function(d) { var c = d.createElement(\'style\'); c.innerHTML = %s; d.body.appendChild(c); })(document)"

    :goto_1
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    const-string v0, "injectStyleFile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2, v3}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_c

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v2

    const-string p3, "(function(d) { var c = d.createElement(\'link\'); c.rel=\'stylesheet\'; c.type=\'text/css\'; c.href = %%s; d.head.appendChild(c); prompt(\'\', \'gap-iab://%s\');})(document)"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_c
    const-string p1, "(function(d) { var c = d.createElement(\'link\'); c.rel=\'stylesheet\'; c.type=\'text/css\'; c.href = %s; d.head.appendChild(c); })(document)"

    :goto_2
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    const-string p2, "show"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lorg/apache/cordova/inappbrowser/InAppBrowser$3;

    invoke-direct {p2, p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$3;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    invoke-virtual {p1, v3}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_3

    :cond_e
    const-string p2, "hide"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lorg/apache/cordova/inappbrowser/InAppBrowser$4;

    invoke-direct {p2, p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$4;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    invoke-virtual {p1, v3}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :goto_3
    return v3

    :cond_f
    return v2
.end method

.method public goBack()V
    .locals 1

    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void
.end method

.method public hardwareBack()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hadwareBackButton:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "InAppBrowser"

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_2

    const-string v0, "onActivityResult (For Android >= 5.0)"

    invoke-static {v1, v0}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallbackLollipop:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallbackLollipop:Landroid/webkit/ValueCallback;

    goto :goto_3

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_2
    const-string v0, "onActivityResult (For Android < 5.0)"

    invoke-static {v1, v0}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallback:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    if-nez v0, :cond_4

    return-void

    :cond_4
    if-eqz p3, :cond_6

    iget-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    const/4 p1, -0x1

    if-eq p2, p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_2

    :cond_6
    :goto_1
    move-object p1, v2

    :goto_2
    iget-object p2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallback:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallback:Landroid/webkit/ValueCallback;

    :goto_3
    return-void

    :cond_7
    :goto_4
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeDialog()V

    return-void
.end method

.method public onPause(Z)V
    .locals 0

    iget-boolean p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->shouldPauseInAppBrowser:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method public onReset()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeDialog()V

    return-void
.end method

.method public onResume(Z)V
    .locals 0

    iget-boolean p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->shouldPauseInAppBrowser:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public openExternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/cordova/CordovaResourceApi;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    const-string v1, "com.android.browser.application_id"

    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openExternalExcludeCurrentApp(Landroid/content/Intent;)V

    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InAppBrowser: Error loading url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "InAppBrowser"

    invoke-static {v1, p1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public showWebPage(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showZoomControls:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mediaPlaybackRequiresUserGesture:Z

    if-eqz p2, :cond_13

    const-string v2, "location"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "yes"

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    :cond_0
    iget-boolean v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    if-eqz v2, :cond_2

    const-string v2, "hidenavigationbuttons"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "hideurlbar"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hideNavigationButtons:Z

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hideUrlBar:Z

    :cond_2
    const-string v2, "zoom"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showZoomControls:Z

    :cond_3
    const-string v2, "hidden"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    :cond_4
    const-string v2, "hardwareback"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hadwareBackButton:Z

    goto :goto_0

    :cond_5
    sget-object v2, Lorg/apache/cordova/inappbrowser/InAppBrowser;->DEFAULT_HARDWARE_BACK:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hadwareBackButton:Z

    :goto_0
    const-string v2, "mediaPlaybackRequiresUserAction"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mediaPlaybackRequiresUserGesture:Z

    :cond_6
    const-string v2, "clearcache"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearAllCache:Z

    goto :goto_1

    :cond_7
    const-string v2, "clearsessioncache"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearSessionCache:Z

    :cond_8
    :goto_1
    const-string v2, "shouldPauseOnSuspend"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->shouldPauseInAppBrowser:Z

    :cond_9
    const-string v2, "useWideViewPort"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->useWideViewPort:Z

    :cond_a
    const-string v2, "closebuttoncaption"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_b

    iput-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeButtonCaption:Ljava/lang/String;

    :cond_b
    const-string v2, "closebuttoncolor"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_c

    iput-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeButtonColor:Ljava/lang/String;

    :cond_c
    const-string v2, "lefttoright"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->leftToRight:Z

    const-string v0, "toolbarcolor"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->toolbarColor:I

    :cond_e
    const-string v0, "navigationbuttoncolor"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_f

    iput-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->navigationButtonColor:Ljava/lang/String;

    :cond_f
    const-string v0, "footer"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showFooter:Z

    :cond_10
    const-string v0, "footercolor"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_11

    iput-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->footerColor:Ljava/lang/String;

    :cond_11
    const-string v0, "beforeload"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->beforeload:Ljava/lang/String;

    :cond_12
    const-string v0, "fullscreen"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_13

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->fullscreen:Z

    :cond_13
    iget-object p2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$7;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/cordova/inappbrowser/InAppBrowser$7;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;Lorg/apache/cordova/CordovaWebView;)V

    iget-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string p1, ""

    return-object p1
.end method
