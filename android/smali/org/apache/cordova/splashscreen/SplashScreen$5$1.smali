.class Lorg/apache/cordova/splashscreen/SplashScreen$5$1;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/splashscreen/SplashScreen$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/splashscreen/SplashScreen$5;


# direct methods
.method constructor <init>(Lorg/apache/cordova/splashscreen/SplashScreen$5;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5$1;->this$1:Lorg/apache/cordova/splashscreen/SplashScreen$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5$1;->this$1:Lorg/apache/cordova/splashscreen/SplashScreen$5;

    iget-object v0, v0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1000(Lorg/apache/cordova/splashscreen/SplashScreen;Z)V

    :cond_0
    return-void
.end method
