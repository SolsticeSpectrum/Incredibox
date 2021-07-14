.class Lnl/xservices/plugins/SocialSharing$2$2$1;
.super Ljava/lang/Object;
.source "SocialSharing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/xservices/plugins/SocialSharing$2$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lnl/xservices/plugins/SocialSharing$2$2;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/SocialSharing$2$2;)V
    .locals 0

    iput-object p1, p0, Lnl/xservices/plugins/SocialSharing$2$2$1;->this$2:Lnl/xservices/plugins/SocialSharing$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$2$2$1;->this$2:Lnl/xservices/plugins/SocialSharing$2$2;

    iget-object v0, v0, Lnl/xservices/plugins/SocialSharing$2$2;->this$1:Lnl/xservices/plugins/SocialSharing$2;

    iget-object v0, v0, Lnl/xservices/plugins/SocialSharing$2;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing$2$2$1;->this$2:Lnl/xservices/plugins/SocialSharing$2$2;

    iget-object v1, v1, Lnl/xservices/plugins/SocialSharing$2$2;->this$1:Lnl/xservices/plugins/SocialSharing$2;

    iget-object v1, v1, Lnl/xservices/plugins/SocialSharing$2;->val$msg:Ljava/lang/String;

    iget-object v2, p0, Lnl/xservices/plugins/SocialSharing$2$2$1;->this$2:Lnl/xservices/plugins/SocialSharing$2$2;

    iget-object v2, v2, Lnl/xservices/plugins/SocialSharing$2$2;->this$1:Lnl/xservices/plugins/SocialSharing$2;

    iget-object v2, v2, Lnl/xservices/plugins/SocialSharing$2;->this$0:Lnl/xservices/plugins/SocialSharing;

    invoke-static {v2}, Lnl/xservices/plugins/SocialSharing;->access$500(Lnl/xservices/plugins/SocialSharing;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnl/xservices/plugins/SocialSharing;->access$600(Lnl/xservices/plugins/SocialSharing;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$2$2$1;->this$2:Lnl/xservices/plugins/SocialSharing$2$2;

    iget-object v0, v0, Lnl/xservices/plugins/SocialSharing$2$2;->this$1:Lnl/xservices/plugins/SocialSharing$2;

    iget-object v0, v0, Lnl/xservices/plugins/SocialSharing$2;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing$2$2$1;->this$2:Lnl/xservices/plugins/SocialSharing$2$2;

    iget-object v1, v1, Lnl/xservices/plugins/SocialSharing$2$2;->this$1:Lnl/xservices/plugins/SocialSharing$2;

    iget-object v1, v1, Lnl/xservices/plugins/SocialSharing$2;->this$0:Lnl/xservices/plugins/SocialSharing;

    invoke-static {v1}, Lnl/xservices/plugins/SocialSharing;->access$500(Lnl/xservices/plugins/SocialSharing;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnl/xservices/plugins/SocialSharing;->access$700(Lnl/xservices/plugins/SocialSharing;Ljava/lang/String;)V

    return-void
.end method
