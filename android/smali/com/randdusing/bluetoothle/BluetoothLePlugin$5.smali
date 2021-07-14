.class Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothLePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/randdusing/bluetoothle/BluetoothLePlugin;->createScanCallback()V
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

    iput-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$300(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public onScanFailed(I)V
    .locals 5

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$300(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v3, "error"

    const-string v4, "startScan"

    invoke-static {v2, v1, v3, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v2, "message"

    const-string v3, "Scan already started"

    invoke-static {p1, v1, v2, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v2, "message"

    const-string v3, "Application registration failed"

    invoke-static {p1, v1, v2, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v2, "message"

    const-string v3, "Feature unsupported"

    invoke-static {p1, v1, v2, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v2, "message"

    const-string v3, "Internal error"

    invoke-static {p1, v1, v2, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v2, "message"

    const-string v3, "Scan failed to start"

    invoke-static {p1, v1, v2, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$300(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$302(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 6

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$300(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v2, "name"

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u0000"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v2, "rssi"

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v2, "advertisement"

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object p2

    invoke-static {v1, v0, v2, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;[B)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v1, "status"

    const-string v2, "scanResult"

    invoke-static {p2, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p2, v1, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$300(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
