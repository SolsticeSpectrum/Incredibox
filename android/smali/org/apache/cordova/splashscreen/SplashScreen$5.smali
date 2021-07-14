.class Lorg/apache/cordova/splashscreen/SplashScreen$5;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/splashscreen/SplashScreen;->showSplashScreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

.field final synthetic val$drawableId:I

.field final synthetic val$effectiveSplashDuration:I

.field final synthetic val$hideAfterDelay:Z


# direct methods
.method constructor <init>(Lorg/apache/cordova/splashscreen/SplashScreen;IZI)V
    .locals 0

    iput-object p1, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    iput p2, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->val$drawableId:I

    iput-boolean p3, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->val$hideAfterDelay:Z

    iput p4, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->val$effectiveSplashDuration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    iget-object v0, v0, Lorg/apache/cordova/splashscreen/SplashScreen;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    iget-object v1, v1, Lorg/apache/cordova/splashscreen/SplashScreen;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$202(Lorg/apache/cordova/splashscreen/SplashScreen;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v2}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$200(Lorg/apache/cordova/splashscreen/SplashScreen;)Landroid/widget/ImageView;

    move-result-object v2

    iget v3, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->val$drawableId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v3}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$200(Lorg/apache/cordova/splashscreen/SplashScreen;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v2}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$200(Lorg/apache/cordova/splashscreen/SplashScreen;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    iget-object v2, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v2}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$200(Lorg/apache/cordova/splashscreen/SplashScreen;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    iget-object v0, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v0}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$200(Lorg/apache/cordova/splashscreen/SplashScreen;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v2}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$500(Lorg/apache/cordova/splashscreen/SplashScreen;)Lorg/apache/cordova/CordovaPreferences;

    move-result-object v2

    const-string v3, "backgroundColor"

    const/high16 v4, -0x1000000

    invoke-virtual {v2, v3, v4}, Lorg/apache/cordova/CordovaPreferences;->getInteger(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v0}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$600(Lorg/apache/cordova/splashscreen/SplashScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v0}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$200(Lorg/apache/cordova/splashscreen/SplashScreen;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v0}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$200(Lorg/apache/cordova/splashscreen/SplashScreen;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x1030010

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$102(Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v0, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    iget-object v0, v0, Lorg/apache/cordova/splashscreen/SplashScreen;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$100()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$100()Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v1}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$200(Lorg/apache/cordova/splashscreen/SplashScreen;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$100()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$100()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v0}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$700(Lorg/apache/cordova/splashscreen/SplashScreen;)Lorg/apache/cordova/CordovaPreferences;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ShowSplashScreenSpinner"

    invoke-virtual {v0, v2, v1}, Lorg/apache/cordova/CordovaPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v0}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$800(Lorg/apache/cordova/splashscreen/SplashScreen;)V

    :cond_2
    iget-boolean v0, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->val$hideAfterDelay:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/apache/cordova/splashscreen/SplashScreen$5$1;

    invoke-direct {v1, p0}, Lorg/apache/cordova/splashscreen/SplashScreen$5$1;-><init>(Lorg/apache/cordova/splashscreen/SplashScreen$5;)V

    iget v2, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->val$effectiveSplashDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
