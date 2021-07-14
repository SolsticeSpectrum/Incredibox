.class Lnl/xservices/plugins/SocialSharing$2$3;
.super Ljava/lang/Object;
.source "SocialSharing.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;

.field final synthetic val$sendIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/SocialSharing$2;Landroid/content/Intent;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lnl/xservices/plugins/SocialSharing$2$3;->this$1:Lnl/xservices/plugins/SocialSharing$2;

    iput-object p2, p0, Lnl/xservices/plugins/SocialSharing$2$3;->val$sendIntent:Landroid/content/Intent;

    iput-object p3, p0, Lnl/xservices/plugins/SocialSharing$2$3;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$2$3;->val$sendIntent:Landroid/content/Intent;

    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing$2$3;->this$1:Lnl/xservices/plugins/SocialSharing$2;

    iget-object v1, v1, Lnl/xservices/plugins/SocialSharing$2;->val$chooserTitle:Ljava/lang/String;

    iget-object v2, p0, Lnl/xservices/plugins/SocialSharing$2$3;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$2$3;->val$sendIntent:Landroid/content/Intent;

    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing$2$3;->this$1:Lnl/xservices/plugins/SocialSharing$2;

    iget-object v1, v1, Lnl/xservices/plugins/SocialSharing$2;->val$chooserTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing$2$3;->this$1:Lnl/xservices/plugins/SocialSharing$2;

    iget-object v1, v1, Lnl/xservices/plugins/SocialSharing$2;->val$mycordova:Lorg/apache/cordova/CordovaInterface;

    iget-object v2, p0, Lnl/xservices/plugins/SocialSharing$2$3;->this$1:Lnl/xservices/plugins/SocialSharing$2;

    iget-object v2, v2, Lnl/xservices/plugins/SocialSharing$2;->val$plugin:Lorg/apache/cordova/CordovaPlugin;

    iget-object v3, p0, Lnl/xservices/plugins/SocialSharing$2$3;->this$1:Lnl/xservices/plugins/SocialSharing$2;

    iget-boolean v3, v3, Lnl/xservices/plugins/SocialSharing$2;->val$boolResult:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    invoke-interface {v1, v2, v0, v3}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    return-void
.end method
