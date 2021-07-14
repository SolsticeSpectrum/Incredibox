.class Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;
.super Landroid/bluetooth/le/AdvertiseCallback;
.source "BluetoothLePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/randdusing/bluetoothle/BluetoothLePlugin;->createAdvertiseCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;


# direct methods
.method constructor <init>(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-direct {p0}, Landroid/bluetooth/le/AdvertiseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartFailure(I)V
    .locals 4

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$602(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Z)Z

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1300(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v2, "error"

    const-string v3, "startAdvertising"

    invoke-static {v1, v0, v2, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x3

    const-string v2, "message"

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v1, "Already started"

    invoke-static {p1, v0, v2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v1, "Too large data"

    invoke-static {p1, v0, v2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v1, "Feature unsupported"

    invoke-static {p1, v0, v2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v1, "Internal error"

    invoke-static {p1, v0, v2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v1, "Too many advertisers"

    invoke-static {p1, v0, v2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v1, "Advertising error"

    invoke-static {p1, v0, v2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1300(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1302(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;

    return-void
.end method

.method public onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 4

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$602(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Z)Z

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1300(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "mode"

    invoke-static {v1, v0, v3, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTimeout()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "timeout"

    invoke-static {v1, v0, v3, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "txPowerLevel"

    invoke-static {v1, v0, v3, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->isConnectable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "isConnectable"

    invoke-static {v1, v0, v2, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v1, "status"

    const-string v2, "advertisingStarted"

    invoke-static {p1, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1300(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1302(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;

    return-void
.end method
