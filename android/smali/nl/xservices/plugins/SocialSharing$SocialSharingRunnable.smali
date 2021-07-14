.class abstract Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;
.super Ljava/lang/Object;
.source "SocialSharing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/xservices/plugins/SocialSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SocialSharingRunnable"
.end annotation


# instance fields
.field public callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic this$0:Lnl/xservices/plugins/SocialSharing;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/SocialSharing;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    iput-object p1, p0, Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;->this$0:Lnl/xservices/plugins/SocialSharing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;->callbackContext:Lorg/apache/cordova/CallbackContext;

    return-void
.end method
