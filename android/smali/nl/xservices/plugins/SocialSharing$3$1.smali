.class Lnl/xservices/plugins/SocialSharing$3$1;
.super Ljava/lang/Object;
.source "SocialSharing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/xservices/plugins/SocialSharing$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnl/xservices/plugins/SocialSharing$3;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/SocialSharing$3;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lnl/xservices/plugins/SocialSharing$3$1;->this$1:Lnl/xservices/plugins/SocialSharing$3;

    iput-object p2, p0, Lnl/xservices/plugins/SocialSharing$3$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$3$1;->this$1:Lnl/xservices/plugins/SocialSharing$3;

    iget-object v0, v0, Lnl/xservices/plugins/SocialSharing$3;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v0, v0, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing$3$1;->this$1:Lnl/xservices/plugins/SocialSharing$3;

    iget-object v1, v1, Lnl/xservices/plugins/SocialSharing$3;->val$plugin:Lnl/xservices/plugins/SocialSharing;

    iget-object v2, p0, Lnl/xservices/plugins/SocialSharing$3$1;->val$intent:Landroid/content/Intent;

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing$3$1;->this$1:Lnl/xservices/plugins/SocialSharing$3;

    iget-object v1, v1, Lnl/xservices/plugins/SocialSharing$3;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
