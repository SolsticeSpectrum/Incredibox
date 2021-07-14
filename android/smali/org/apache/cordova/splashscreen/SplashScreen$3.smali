.class Lorg/apache/cordova/splashscreen/SplashScreen$3;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/splashscreen/SplashScreen;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/splashscreen/SplashScreen;


# direct methods
.method constructor <init>(Lorg/apache/cordova/splashscreen/SplashScreen;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/cordova/splashscreen/SplashScreen$3;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/apache/cordova/splashscreen/SplashScreen$3;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    iget-object v0, v0, Lorg/apache/cordova/splashscreen/SplashScreen;->webView:Lorg/apache/cordova/CordovaWebView;

    const-string v1, "splashscreen"

    const-string v2, "show"

    invoke-interface {v0, v1, v2}, Lorg/apache/cordova/CordovaWebView;->postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
