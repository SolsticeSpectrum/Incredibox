.class Lnl/xservices/plugins/SocialSharing$2$2;
.super Ljava/util/TimerTask;
.source "SocialSharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/xservices/plugins/SocialSharing$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnl/xservices/plugins/SocialSharing$2;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/SocialSharing$2;)V
    .locals 0

    iput-object p1, p0, Lnl/xservices/plugins/SocialSharing$2$2;->this$1:Lnl/xservices/plugins/SocialSharing$2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$2$2;->this$1:Lnl/xservices/plugins/SocialSharing$2;

    iget-object v0, v0, Lnl/xservices/plugins/SocialSharing$2;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v0, v0, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lnl/xservices/plugins/SocialSharing$2$2$1;

    invoke-direct {v1, p0}, Lnl/xservices/plugins/SocialSharing$2$2$1;-><init>(Lnl/xservices/plugins/SocialSharing$2$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
