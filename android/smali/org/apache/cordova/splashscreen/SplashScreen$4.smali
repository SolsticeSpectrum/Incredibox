.class Lorg/apache/cordova/splashscreen/SplashScreen$4;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/splashscreen/SplashScreen;->removeSplashScreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

.field final synthetic val$forceHideImmediately:Z


# direct methods
.method constructor <init>(Lorg/apache/cordova/splashscreen/SplashScreen;Z)V
    .locals 0

    iput-object p1, p0, Lorg/apache/cordova/splashscreen/SplashScreen$4;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    iput-boolean p2, p0, Lorg/apache/cordova/splashscreen/SplashScreen$4;->val$forceHideImmediately:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$100()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/cordova/splashscreen/SplashScreen$4;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v0}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$200(Lorg/apache/cordova/splashscreen/SplashScreen;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$100()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/cordova/splashscreen/SplashScreen$4;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v0}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$300(Lorg/apache/cordova/splashscreen/SplashScreen;)I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v1, p0, Lorg/apache/cordova/splashscreen/SplashScreen$4;->val$forceHideImmediately:Z

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lorg/apache/cordova/splashscreen/SplashScreen$4;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v0}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$200(Lorg/apache/cordova/splashscreen/SplashScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lorg/apache/cordova/splashscreen/SplashScreen$4;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v0}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$200(Lorg/apache/cordova/splashscreen/SplashScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lorg/apache/cordova/splashscreen/SplashScreen$4$1;

    invoke-direct {v0, p0}, Lorg/apache/cordova/splashscreen/SplashScreen$4$1;-><init>(Lorg/apache/cordova/splashscreen/SplashScreen$4;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/splashscreen/SplashScreen$4;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v0}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$400(Lorg/apache/cordova/splashscreen/SplashScreen;)V

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$100()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$102(Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v1, p0, Lorg/apache/cordova/splashscreen/SplashScreen$4;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v1, v0}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$202(Lorg/apache/cordova/splashscreen/SplashScreen;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_1
    :goto_0
    return-void
.end method
