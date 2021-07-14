.class Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;
.super Landroid/bluetooth/BluetoothGattServerCallback;
.source "BluetoothLePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/randdusing/bluetoothle/BluetoothLePlugin;
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

    iput-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattServerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1, v0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1, v0, p4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2000(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p4, "status"

    const-string v1, "readRequested"

    invoke-static {p1, v0, p4, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "requestId"

    invoke-static {p1, v0, p4, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "offset"

    invoke-static {p1, v0, p3, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method public onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .locals 2

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1, v0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1, v0, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2000(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p3, "status"

    const-string v1, "writeRequested"

    invoke-static {p1, v0, p3, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "requestId"

    invoke-static {p1, v0, p3, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "offset"

    invoke-static {p1, v0, p3, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p2, "value"

    invoke-static {p1, v0, p2, p7}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;[B)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "preparedWrite"

    invoke-static {p1, v0, p3, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "responseNeeded"

    invoke-static {p1, v0, p3, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0, p2, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    const/4 p1, 0x2

    const-string v0, "status"

    if-ne p3, p1, :cond_1

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p3, "connected"

    invoke-static {p1, p2, v0, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p3, "disconnected"

    invoke-static {p1, p2, v0, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p3, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p3, p2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method public onDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 2

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1, v0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1, v0, p4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2500(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattDescriptor;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p4, "status"

    const-string v1, "readRequested"

    invoke-static {p1, v0, p4, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "requestId"

    invoke-static {p1, v0, p4, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "offset"

    invoke-static {p1, v0, p3, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method public onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .locals 6

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2600(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "status"

    if-eqz v0, :cond_2

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    iget-object p5, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p5, p4, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    iget-object p5, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p3

    invoke-static {p5, p4, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2000(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    sget-object p3, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-static {p7, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p5, "unsubscribed"

    invoke-static {p3, p4, v2, p5}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p5, "subscribed"

    invoke-static {p3, p4, v2, p5}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    new-instance p3, Lorg/apache/cordova/PluginResult;

    sget-object p5, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p3, p5, p4}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {p3, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p4, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p4

    invoke-virtual {p4, p3}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    iget-object p3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$700(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p2

    move v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    return-void

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v3, v0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1, v0, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2500(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattDescriptor;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p3, "writeRequested"

    invoke-static {p1, v0, v2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "requestId"

    invoke-static {p1, v0, p3, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "offset"

    invoke-static {p1, v0, p3, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p2, "value"

    invoke-static {p1, v0, p2, p7}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;[B)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "preparedWrite"

    invoke-static {p1, v0, p3, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "responseNeeded"

    invoke-static {p1, v0, p3, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method public onExecuteWrite(Landroid/bluetooth/BluetoothDevice;IZ)V
    .locals 0

    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1, v0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v1, "status"

    const-string v2, "mtuChanged"

    invoke-static {p1, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "mtu"

    invoke-static {p1, v0, v1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method public onNotificationSent(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1, v0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    const-string p1, "notificationSent"

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v1, "status"

    invoke-static {p2, v0, v1, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v1, "error"

    invoke-static {p2, v0, v1, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p2, "message"

    const-string v1, "Unable to send notification"

    invoke-static {p1, v0, p2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method public onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    .locals 2

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2700(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1, v0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattService;)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p2, "status"

    const-string v1, "serviceAdded"

    invoke-static {p1, v0, p2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2700(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p2, "error"

    const-string v1, "service"

    invoke-static {p1, v0, p2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p2, "message"

    const-string v1, "Unable to add service"

    invoke-static {p1, v0, p2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2700(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method
