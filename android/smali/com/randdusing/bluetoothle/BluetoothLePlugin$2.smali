.class Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$000(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/high16 v0, -0x80000000

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "status"

    if-eq p2, v0, :cond_4

    const/16 v0, 0xc

    if-eq p2, v0, :cond_3

    const/16 p1, 0xd

    if-eq p2, p1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$600(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$602(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Z)Z

    :cond_2
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$700(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$700(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattServer;->close()V

    goto/16 :goto_0

    :cond_3
    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v0, "enabled"

    invoke-static {p2, p1, v3, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$900(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)V

    new-instance p2, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p2, v0, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$000(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto/16 :goto_0

    :cond_4
    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v0, "disabled"

    invoke-static {p2, p1, v3, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v0, "message"

    const-string v3, "Bluetooth not enabled"

    invoke-static {p2, p1, v0, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$202(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$300(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p2

    if-eqz p2, :cond_5

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_5

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$400(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$500(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Landroid/bluetooth/le/ScanCallback;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :cond_5
    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$302(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$600(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$602(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Z)Z

    :cond_6
    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$702(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServer;

    new-instance p2, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p2, v0, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$000(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :cond_7
    :goto_0
    return-void
.end method
