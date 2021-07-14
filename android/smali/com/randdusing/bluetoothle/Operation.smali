.class public Lcom/randdusing/bluetoothle/Operation;
.super Ljava/lang/Object;
.source "Operation.java"


# instance fields
.field public args:Lorg/json/JSONArray;

.field public callbackContext:Lorg/apache/cordova/CallbackContext;

.field public device:Landroid/bluetooth/BluetoothDevice;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/randdusing/bluetoothle/Operation;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/randdusing/bluetoothle/Operation;->args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/randdusing/bluetoothle/Operation;->callbackContext:Lorg/apache/cordova/CallbackContext;

    return-void
.end method
