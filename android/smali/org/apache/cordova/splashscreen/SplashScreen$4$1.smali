.class Lorg/apache/cordova/splashscreen/SplashScreen$4$1;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/splashscreen/SplashScreen$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/splashscreen/SplashScreen$4;


# direct methods
.method constructor <init>(Lorg/apache/cordova/splashscreen/SplashScreen$4;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/cordova/splashscreen/SplashScreen$4$1;->this$1:Lorg/apache/cordova/splashscreen/SplashScreen$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$100()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/cordova/splashscreen/SplashScreen$4$1;->this$1:Lorg/apache/cordova/splashscreen/SplashScreen$4;

    iget-object p1, p1, Lorg/apache/cordova/splashscreen/SplashScreen$4;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {p1}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$200(Lorg/apache/cordova/splashscreen/SplashScreen;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$100()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$100()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    invoke-static {p1}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$102(Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v0, p0, Lorg/apache/cordova/splashscreen/SplashScreen$4$1;->this$1:Lorg/apache/cordova/splashscreen/SplashScreen$4;

    iget-object v0, v0, Lorg/apache/cordova/splashscreen/SplashScreen$4;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v0, p1}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$202(Lorg/apache/cordova/splashscreen/SplashScreen;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p1, p0, Lorg/apache/cordova/splashscreen/SplashScreen$4$1;->this$1:Lorg/apache/cordova/splashscreen/SplashScreen$4;

    iget-object p1, p1, Lorg/apache/cordova/splashscreen/SplashScreen$4;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {p1}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$400(Lorg/apache/cordova/splashscreen/SplashScreen;)V

    return-void
.end method
