.class Lorg/apache/cordova/splashscreen/SplashScreen$7;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/splashscreen/SplashScreen;->spinnerStop()V
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

    iput-object p1, p0, Lorg/apache/cordova/splashscreen/SplashScreen$7;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1102(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method
