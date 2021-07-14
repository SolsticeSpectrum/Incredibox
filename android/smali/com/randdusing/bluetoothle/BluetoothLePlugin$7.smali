.class Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;
.super Landroid/bluetooth/BluetoothGattCallback;
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

    iput-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v3, "subscribe"

    invoke-static {v2, v1, v0, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v2, v1, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1, v1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2000(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v2, "status"

    const-string v3, "subscribedResult"

    invoke-static {p1, v1, v2, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    const-string v2, "value"

    invoke-static {p1, v1, v2, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;[B)V

    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1500(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v3, "read"

    invoke-static {v2, v1, v0, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object v2

    iget-object v4, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v4, v1, v0, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1900(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1, v0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2000(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1, v0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    if-nez p3, :cond_2

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p3, "status"

    invoke-static {p1, v0, p3, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    const-string p3, "value"

    invoke-static {p1, v0, p3, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;[B)V

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p2, "error"

    invoke-static {p1, v0, p2, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p2, "message"

    const-string p3, "Unable to read on return"

    invoke-static {p1, v0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 10

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1500(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v4, "write"

    invoke-static {v3, v2, v1, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object v3

    iget-object v5, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v5}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const-string v6, "Unable to write on return"

    const-string v7, "message"

    const-string v8, "error"

    const-string v9, "status"

    if-lez v5, :cond_3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p3, v1, p2, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/HashMap;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    if-nez v3, :cond_2

    return-void

    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2000(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2, p1, v8, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2, p1, v7, v6}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p1, v9, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_3
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1, v2, v1, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1900(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V

    if-nez v3, :cond_4

    return-void

    :cond_4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2000(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v0, "written"

    invoke-static {p3, p1, v9, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    const-string v0, "value"

    invoke-static {p3, p1, v0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;[B)V

    invoke-virtual {v3, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2, p1, v8, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2, p1, v7, v6}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p1, v9, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :goto_1
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_0

    iget-object v5, v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v5}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1400(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/randdusing/bluetoothle/Operation;

    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/randdusing/bluetoothle/Operation;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v6, :cond_0

    iget-object v5, v5, Lcom/randdusing/bluetoothle/Operation;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v5}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1500(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)V

    :cond_0
    iget-object v5, v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v5}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-nez v4, :cond_1

    return-void

    :cond_1
    const-string v5, "connect"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/cordova/CallbackContext;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iget-object v8, v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v8, v7, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    const-string v8, "state"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "peripheral"

    const-string v11, "message"

    const-string v12, "error"

    const-string v13, "discoveredState"

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz p2, :cond_3

    if-ne v9, v14, :cond_3

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v6, :cond_2

    return-void

    :cond_2
    iget-object v1, v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1, v7, v12, v5}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v2, "Connection failed"

    invoke-static {v1, v7, v11, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_3
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    const-string v9, "status"

    if-ne v2, v5, :cond_5

    if-nez v6, :cond_4

    return-void

    :cond_4
    iget-object v1, v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v2, "connected"

    invoke-static {v1, v7, v9, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2, v7}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v14}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    invoke-virtual {v6, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_1

    :cond_5
    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v2, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1600(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/HashMap;)[Lorg/apache/cordova/CallbackContext;

    move-result-object v2

    iget-object v5, v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v14, "isDisconnected"

    invoke-static {v5, v7, v12, v14}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v14, "Device is disconnected"

    invoke-static {v5, v7, v11, v14}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    array-length v5, v2

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v5, :cond_6

    aget-object v15, v2, v14

    invoke-virtual {v15, v7}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x0

    goto :goto_0

    :cond_6
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v6, :cond_7

    return-void

    :cond_7
    iget-object v1, v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v2, "disconnected"

    invoke-static {v1, v7, v9, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 6

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1500(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v4, "read"

    invoke-static {v3, v2, v1, v0, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2300(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object v3

    iget-object v5, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v5, v2, v1, v0, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2400(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V

    if-nez v3, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1, v0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1, v0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2500(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattDescriptor;)V

    const-string p1, "readDescriptor"

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v1, "status"

    invoke-static {p3, v0, v1, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object p2

    const-string p3, "value"

    invoke-static {p1, v0, p3, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;[B)V

    invoke-virtual {v3, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p3, "error"

    invoke-static {p2, v0, p3, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p2, "message"

    const-string p3, "Unable to read descriptor on return"

    invoke-static {p1, v0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 9

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1500(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget-object v6, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v6, v5, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0, v5, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2500(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattDescriptor;)V

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2600(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "status"

    const-string v7, "message"

    const-string v8, "error"

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object p2

    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    if-ne p2, v0, :cond_4

    const/4 p2, 0x0

    invoke-virtual {p1, v2, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result p1

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v0, "unsubscribe"

    invoke-static {p2, v3, v1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string v0, "Unable to unsubscribe"

    const-string v1, "subscription"

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1, v5, v8, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1, v5, v7, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_2
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1, v5, v8, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1, v5, v7, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p3, "unsubscribed"

    invoke-static {p1, v5, v6, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p2, "subscribe"

    invoke-static {p1, v3, v1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p3, "subscribed"

    invoke-static {p2, v5, v6, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lorg/apache/cordova/PluginResult;

    sget-object p3, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p2, p3, v5}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :goto_0
    return-void

    :cond_6
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v0, "write"

    invoke-static {p1, v4, v3, v1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2300(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    iget-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v2, v4, v3, v1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$2400(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V

    if-nez p1, :cond_7

    return-void

    :cond_7
    if-nez p3, :cond_8

    iget-object p3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v0, "writtenDescriptor"

    invoke-static {p3, v5, v6, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object p2

    const-string v0, "value"

    invoke-static {p3, v5, v0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;[B)V

    invoke-virtual {p1, v5}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_8
    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p3, "writeDescriptor"

    invoke-static {p2, v5, v8, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p3, "Descriptor not written on return"

    invoke-static {p2, v5, v7, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :goto_1
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "mtu"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v3, v0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    if-nez p3, :cond_2

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p3, "status"

    invoke-static {p1, v0, p3, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p2, "error"

    invoke-static {p1, v0, p2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p2, "message"

    const-string p3, "Unable to set MTU on return"

    invoke-static {p1, v0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "rssi"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v3, v0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    if-nez p3, :cond_2

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p3, "status"

    invoke-static {p1, v0, p3, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p2, "error"

    invoke-static {p1, v0, p2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p2, "message"

    const-string p3, "Unable to read RSSI on return"

    invoke-static {p1, v0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "discoveredState"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "discover"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_2

    return-void

    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v4, v1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1700(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Landroid/bluetooth/BluetoothGatt;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p2, "error"

    invoke-static {p1, v1, p2, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p2, "message"

    const-string v0, "Unable to discover device"

    invoke-static {p1, v1, p2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :goto_1
    return-void
.end method
