.class Lorg/apache/cordova/networkinformation/NetworkManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/networkinformation/NetworkManager;->registerConnectivityActionReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/networkinformation/NetworkManager;


# direct methods
.method constructor <init>(Lorg/apache/cordova/networkinformation/NetworkManager;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/cordova/networkinformation/NetworkManager$1;->this$0:Lorg/apache/cordova/networkinformation/NetworkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object p1, p0, Lorg/apache/cordova/networkinformation/NetworkManager$1;->this$0:Lorg/apache/cordova/networkinformation/NetworkManager;

    iget-object p1, p1, Lorg/apache/cordova/networkinformation/NetworkManager;->webView:Lorg/apache/cordova/CordovaWebView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/cordova/networkinformation/NetworkManager$1;->this$0:Lorg/apache/cordova/networkinformation/NetworkManager;

    iget-object v0, p1, Lorg/apache/cordova/networkinformation/NetworkManager;->sockMan:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/cordova/networkinformation/NetworkManager;->access$000(Lorg/apache/cordova/networkinformation/NetworkManager;Landroid/net/NetworkInfo;)V

    :cond_0
    iget-object p1, p0, Lorg/apache/cordova/networkinformation/NetworkManager$1;->this$0:Lorg/apache/cordova/networkinformation/NetworkManager;

    invoke-static {p1}, Lorg/apache/cordova/networkinformation/NetworkManager;->access$100(Lorg/apache/cordova/networkinformation/NetworkManager;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "none"

    const-string v1, "NetworkManager"

    if-nez p1, :cond_1

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object p1, p0, Lorg/apache/cordova/networkinformation/NetworkManager$1;->this$0:Lorg/apache/cordova/networkinformation/NetworkManager;

    invoke-static {p1}, Lorg/apache/cordova/networkinformation/NetworkManager;->access$100(Lorg/apache/cordova/networkinformation/NetworkManager;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const-string v0, "noConnectivity"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent no connectivity: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string p1, "Really no connectivity"

    invoke-static {v1, p1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p1, "!!! Switching to unknown, Intent states there is a connectivity."

    invoke-static {v1, p1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/cordova/networkinformation/NetworkManager$1;->this$0:Lorg/apache/cordova/networkinformation/NetworkManager;

    const-string p2, "unknown"

    invoke-static {p1, p2}, Lorg/apache/cordova/networkinformation/NetworkManager;->access$200(Lorg/apache/cordova/networkinformation/NetworkManager;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
