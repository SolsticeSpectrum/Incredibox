.class Lcom/randdusing/bluetoothle/BluetoothLePlugin$3;
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

    iput-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$3;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$3;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1000(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/cordova/CallbackContext;

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$3;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v3, v2, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    const/4 p1, 0x0

    const-string v3, "status"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$3;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v4, "bonded"

    invoke-static {v0, v2, v3, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$3;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v0, "bonding"

    invoke-static {p1, v2, v3, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$3;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    const-string v4, "unbonded"

    invoke-static {v0, v2, v3, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$3;->this$0:Lcom/randdusing/bluetoothle/BluetoothLePlugin;

    invoke-static {v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->access$1000(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance p2, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p2, v0, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    invoke-virtual {v1, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
