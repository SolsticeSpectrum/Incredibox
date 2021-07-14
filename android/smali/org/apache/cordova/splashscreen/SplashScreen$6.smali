.class Lorg/apache/cordova/splashscreen/SplashScreen$6;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/splashscreen/SplashScreen;->spinnerStart()V
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

    iput-object p1, p0, Lorg/apache/cordova/splashscreen/SplashScreen$6;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lorg/apache/cordova/splashscreen/SplashScreen$6;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v0}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$400(Lorg/apache/cordova/splashscreen/SplashScreen;)V

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lorg/apache/cordova/splashscreen/SplashScreen$6;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    iget-object v1, v1, Lorg/apache/cordova/splashscreen/SplashScreen;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1102(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/splashscreen/SplashScreen$6$1;

    invoke-direct {v1, p0}, Lorg/apache/cordova/splashscreen/SplashScreen$6$1;-><init>(Lorg/apache/cordova/splashscreen/SplashScreen$6;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lorg/apache/cordova/splashscreen/SplashScreen$6;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    iget-object v3, v3, Lorg/apache/cordova/splashscreen/SplashScreen;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ProgressBar;

    iget-object v5, p0, Lorg/apache/cordova/splashscreen/SplashScreen$6;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    iget-object v5, v5, Lorg/apache/cordova/splashscreen/SplashScreen;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    const/4 v6, -0x1

    invoke-virtual {v5, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x2

    const/16 v6, 0x15

    if-lt v4, v6, :cond_0

    iget-object v4, p0, Lorg/apache/cordova/splashscreen/SplashScreen$6;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v4}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1200(Lorg/apache/cordova/splashscreen/SplashScreen;)Lorg/apache/cordova/CordovaPreferences;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "SplashScreenSpinnerColor"

    invoke-virtual {v4, v7, v6}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v6, 0x4

    new-array v7, v6, [[I

    new-array v8, v2, [I

    const v9, 0x101009e

    aput v9, v8, v1

    aput-object v8, v7, v1

    new-array v8, v2, [I

    const v9, -0x101009e

    aput v9, v8, v1

    aput-object v8, v7, v2

    new-array v8, v2, [I

    const v9, -0x10100a0

    aput v9, v8, v1

    aput-object v8, v7, v5

    new-array v8, v2, [I

    const v9, 0x10100a7

    aput v9, v8, v1

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    new-array v6, v6, [I

    aput v4, v6, v1

    aput v4, v6, v2

    aput v4, v6, v5

    aput v4, v6, v9

    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v7, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->clearFlags(I)V

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method
