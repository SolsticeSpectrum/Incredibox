.class public Lorg/apache/cordova/engine/SystemWebView;
.super Landroid/webkit/WebView;
.source "SystemWebView.java"

# interfaces
.implements Lorg/apache/cordova/CordovaWebViewEngine$EngineView;


# instance fields
.field chromeClient:Lorg/apache/cordova/engine/SystemWebChromeClient;

.field private cordova:Lorg/apache/cordova/CordovaInterface;

.field private parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

.field private viewClient:Lorg/apache/cordova/engine/SystemWebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/engine/SystemWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebView;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v0, v0, Lorg/apache/cordova/engine/SystemWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    invoke-interface {v0, p1}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->onDispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getCordovaWebView()Lorg/apache/cordova/CordovaWebView;
    .locals 1

    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebView;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebViewEngine;->getCordovaWebView()Lorg/apache/cordova/CordovaWebView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method init(Lorg/apache/cordova/engine/SystemWebViewEngine;Lorg/apache/cordova/CordovaInterface;)V
    .locals 0

    iput-object p2, p0, Lorg/apache/cordova/engine/SystemWebView;->cordova:Lorg/apache/cordova/CordovaInterface;

    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebView;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object p2, p0, Lorg/apache/cordova/engine/SystemWebView;->viewClient:Lorg/apache/cordova/engine/SystemWebViewClient;

    if-nez p2, :cond_0

    new-instance p2, Lorg/apache/cordova/engine/SystemWebViewClient;

    invoke-direct {p2, p1}, Lorg/apache/cordova/engine/SystemWebViewClient;-><init>(Lorg/apache/cordova/engine/SystemWebViewEngine;)V

    invoke-virtual {p0, p2}, Lorg/apache/cordova/engine/SystemWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    iget-object p2, p0, Lorg/apache/cordova/engine/SystemWebView;->chromeClient:Lorg/apache/cordova/engine/SystemWebChromeClient;

    if-nez p2, :cond_1

    new-instance p2, Lorg/apache/cordova/engine/SystemWebChromeClient;

    invoke-direct {p2, p1}, Lorg/apache/cordova/engine/SystemWebChromeClient;-><init>(Lorg/apache/cordova/engine/SystemWebViewEngine;)V

    invoke-virtual {p0, p2}, Lorg/apache/cordova/engine/SystemWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_1
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lorg/apache/cordova/engine/SystemWebChromeClient;

    iput-object v0, p0, Lorg/apache/cordova/engine/SystemWebView;->chromeClient:Lorg/apache/cordova/engine/SystemWebChromeClient;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lorg/apache/cordova/engine/SystemWebViewClient;

    iput-object v0, p0, Lorg/apache/cordova/engine/SystemWebView;->viewClient:Lorg/apache/cordova/engine/SystemWebViewClient;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
