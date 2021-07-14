.class Lnl/xservices/plugins/SocialSharing$1$1;
.super Ljava/lang/Object;
.source "SocialSharing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/xservices/plugins/SocialSharing$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnl/xservices/plugins/SocialSharing$1;

.field final synthetic val$emailAppLists:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/SocialSharing$1;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lnl/xservices/plugins/SocialSharing$1$1;->this$1:Lnl/xservices/plugins/SocialSharing$1;

    iput-object p2, p0, Lnl/xservices/plugins/SocialSharing$1$1;->val$emailAppLists:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$1$1;->this$1:Lnl/xservices/plugins/SocialSharing$1;

    iget-object v0, v0, Lnl/xservices/plugins/SocialSharing$1;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v0, v0, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing$1$1;->this$1:Lnl/xservices/plugins/SocialSharing$1;

    iget-object v1, v1, Lnl/xservices/plugins/SocialSharing$1;->val$plugin:Lnl/xservices/plugins/SocialSharing;

    iget-object v2, p0, Lnl/xservices/plugins/SocialSharing$1$1;->val$emailAppLists:Landroid/content/Intent;

    const/4 v3, 0x3

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    return-void
.end method
