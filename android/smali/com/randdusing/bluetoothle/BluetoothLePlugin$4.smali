.class Lcom/randdusing/bluetoothle/BluetoothLePlugin$4;
.super Ljava/lang/Object;
.source "BluetoothLePlugin.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


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

    iput-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$4;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 3

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$4;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$4;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$300(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$4;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v2, v1, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$4;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v2, "rssi"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$4;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p2, "advertisement"

    invoke-static {p1, v1, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;[B)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$4;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string p2, "status"

    const-string p3, "scanResult"

    invoke-static {p1, v1, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$4;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$300(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
