.class public Lcom/randdusing/bluetoothle/BluetoothLePlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "BluetoothLePlugin.java"


# instance fields
.field private final REQUEST_ACCESS_FINE_LOCATION:I

.field private final REQUEST_BT_ENABLE:I

.field private final REQUEST_LOCATION_SOURCE_SETTINGS:I

.field private final STATE_DISCOVERED:I

.field private final STATE_DISCOVERING:I

.field private final STATE_UNDISCOVERED:I

.field private addServiceCallback:Lorg/apache/cordova/CallbackContext;

.field private advertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private advertiseCallbackContext:Lorg/apache/cordova/CallbackContext;

.field private final baseUuidEnd:Ljava/lang/String;

.field private final baseUuidStart:Ljava/lang/String;

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private bluetoothGattServerCallback:Landroid/bluetooth/BluetoothGattServerCallback;

.field private bonds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/CallbackContext;",
            ">;"
        }
    .end annotation
.end field

.field private final clientConfigurationDescriptorUuid:Ljava/util/UUID;

.field private connections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final errorArguments:Ljava/lang/String;

.field private final errorBond:Ljava/lang/String;

.field private final errorCharacteristic:Ljava/lang/String;

.field private final errorCharacteristics:Ljava/lang/String;

.field private final errorConnect:Ljava/lang/String;

.field private final errorDescriptor:Ljava/lang/String;

.field private final errorDescriptors:Ljava/lang/String;

.field private final errorDisable:Ljava/lang/String;

.field private final errorDiscover:Ljava/lang/String;

.field private final errorEnable:Ljava/lang/String;

.field private final errorInitialize:Ljava/lang/String;

.field private final errorIsDisconnected:Ljava/lang/String;

.field private final errorIsNotConnected:Ljava/lang/String;

.field private final errorIsNotDisconnected:Ljava/lang/String;

.field private final errorMtu:Ljava/lang/String;

.field private final errorNeverConnected:Ljava/lang/String;

.field private final errorRead:Ljava/lang/String;

.field private final errorReadDescriptor:Ljava/lang/String;

.field private final errorReconnect:Ljava/lang/String;

.field private final errorRequestConnectionPriority:Ljava/lang/String;

.field private final errorRetrievePeripheralsByAddress:Ljava/lang/String;

.field private final errorRssi:Ljava/lang/String;

.field private final errorService:Ljava/lang/String;

.field private final errorServices:Ljava/lang/String;

.field private final errorStartScan:Ljava/lang/String;

.field private final errorStopScan:Ljava/lang/String;

.field private final errorSubscription:Ljava/lang/String;

.field private final errorUnbond:Ljava/lang/String;

.field private final errorWrite:Ljava/lang/String;

.field private final errorWriteDescriptor:Ljava/lang/String;

.field private gattServer:Landroid/bluetooth/BluetoothGattServer;

.field private initCallbackContext:Lorg/apache/cordova/CallbackContext;

.field private initPeripheralCallback:Lorg/apache/cordova/CallbackContext;

.field private isAdvertising:Z

.field private isBondReceiverRegistered:Z

.field private isReceiverRegistered:Z

.field private final keyAddress:Ljava/lang/String;

.field private final keyAdvertisement:Ljava/lang/String;

.field private final keyCallbackType:Ljava/lang/String;

.field private final keyCharacteristic:Ljava/lang/String;

.field private final keyCharacteristics:Ljava/lang/String;

.field private final keyConnectionPriority:Ljava/lang/String;

.field private final keyDescriptor:Ljava/lang/String;

.field private final keyDescriptors:Ljava/lang/String;

.field private final keyDiscoveredState:Ljava/lang/String;

.field private final keyError:Ljava/lang/String;

.field private final keyIsBonded:Ljava/lang/String;

.field private final keyIsConnected:Ljava/lang/String;

.field private final keyIsDiscoverable:Ljava/lang/String;

.field private final keyIsDiscovered:Ljava/lang/String;

.field private final keyIsEnabled:Ljava/lang/String;

.field private final keyIsInitialized:Ljava/lang/String;

.field private final keyIsScanning:Ljava/lang/String;

.field private final keyMatchMode:Ljava/lang/String;

.field private final keyMatchNum:Ljava/lang/String;

.field private final keyMessage:Ljava/lang/String;

.field private final keyMtu:Ljava/lang/String;

.field private final keyName:Ljava/lang/String;

.field private final keyPeripheral:Ljava/lang/String;

.field private final keyPermissions:Ljava/lang/String;

.field private final keyPin:Ljava/lang/String;

.field private final keyProperties:Ljava/lang/String;

.field private final keyRequest:Ljava/lang/String;

.field private final keyRssi:Ljava/lang/String;

.field private final keyScanMode:Ljava/lang/String;

.field private final keyService:Ljava/lang/String;

.field private final keyServices:Ljava/lang/String;

.field private final keyState:Ljava/lang/String;

.field private final keyStatus:Ljava/lang/String;

.field private final keyStatusReceiver:Ljava/lang/String;

.field private final keyType:Ljava/lang/String;

.field private final keyUuid:Ljava/lang/String;

.field private final keyValue:Ljava/lang/String;

.field private locationCallback:Lorg/apache/cordova/CallbackContext;

.field private final logAlreadyDiscovering:Ljava/lang/String;

.field private final logAlreadyScanning:Ljava/lang/String;

.field private final logBondFail:Ljava/lang/String;

.field private final logBonded:Ljava/lang/String;

.field private final logBonding:Ljava/lang/String;

.field private final logConnectFail:Ljava/lang/String;

.field private final logDiscoveryFail:Ljava/lang/String;

.field private final logIsDisconnected:Ljava/lang/String;

.field private final logIsNotConnected:Ljava/lang/String;

.field private final logIsNotDisconnected:Ljava/lang/String;

.field private final logMtuFail:Ljava/lang/String;

.field private final logMtuFailReturn:Ljava/lang/String;

.field private final logNeverConnected:Ljava/lang/String;

.field private final logNoAddress:Ljava/lang/String;

.field private final logNoArgObj:Ljava/lang/String;

.field private final logNoCharacteristic:Ljava/lang/String;

.field private final logNoDescriptor:Ljava/lang/String;

.field private final logNoDevice:Ljava/lang/String;

.field private final logNoService:Ljava/lang/String;

.field private final logNotDisabled:Ljava/lang/String;

.field private final logNotEnabled:Ljava/lang/String;

.field private final logNotInit:Ljava/lang/String;

.field private final logNotScanning:Ljava/lang/String;

.field private final logOperationUnsupported:Ljava/lang/String;

.field private final logPreviouslyConnected:Ljava/lang/String;

.field private final logReadDescriptorFail:Ljava/lang/String;

.field private final logReadDescriptorFailReturn:Ljava/lang/String;

.field private final logReadFail:Ljava/lang/String;

.field private final logReadFailReturn:Ljava/lang/String;

.field private final logReconnectFail:Ljava/lang/String;

.field private final logRequestConnectionPriorityFailed:Ljava/lang/String;

.field private final logRequestConnectionPriorityInvalid:Ljava/lang/String;

.field private final logRequestConnectionPriorityNull:Ljava/lang/String;

.field private final logRequiresAPI21:Ljava/lang/String;

.field private final logRssiFail:Ljava/lang/String;

.field private final logRssiFailReturn:Ljava/lang/String;

.field private final logScanStartFail:Ljava/lang/String;

.field private final logSubscribeAlready:Ljava/lang/String;

.field private final logSubscribeFail:Ljava/lang/String;

.field private final logUnbondFail:Ljava/lang/String;

.field private final logUnbonded:Ljava/lang/String;

.field private final logUnsubscribeAlready:Ljava/lang/String;

.field private final logUnsubscribeFail:Ljava/lang/String;

.field private final logWriteDescriptorFail:Ljava/lang/String;

.field private final logWriteDescriptorFailReturn:Ljava/lang/String;

.field private final logWriteDescriptorNotAllowed:Ljava/lang/String;

.field private final logWriteDescriptorValueNotFound:Ljava/lang/String;

.field private final logWriteDescriptorValueNotSet:Ljava/lang/String;

.field private final logWriteFail:Ljava/lang/String;

.field private final logWriteFailReturn:Ljava/lang/String;

.field private final logWriteValueNotFound:Ljava/lang/String;

.field private final logWriteValueNotSet:Ljava/lang/String;

.field private final mBondReceiver:Landroid/content/BroadcastReceiver;

.field private mPairingRequestReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final operationConnect:Ljava/lang/String;

.field private final operationDiscover:Ljava/lang/String;

.field private final operationMtu:Ljava/lang/String;

.field private final operationRead:Ljava/lang/String;

.field private final operationRssi:Ljava/lang/String;

.field private final operationSubscribe:Ljava/lang/String;

.field private final operationUnsubscribe:Ljava/lang/String;

.field private final operationWrite:Ljava/lang/String;

.field private final permissionRead:Ljava/lang/String;

.field private final permissionReadEncrypted:Ljava/lang/String;

.field private final permissionReadEncryptedMITM:Ljava/lang/String;

.field private final permissionWrite:Ljava/lang/String;

.field private final permissionWriteEncrypted:Ljava/lang/String;

.field private final permissionWriteEncryptedMITM:Ljava/lang/String;

.field private final permissionWriteSigned:Ljava/lang/String;

.field private final permissionWriteSignedMITM:Ljava/lang/String;

.field private permissionsCallback:Lorg/apache/cordova/CallbackContext;

.field private final propertyAuthenticatedSignedWrites:Ljava/lang/String;

.field private final propertyBroadcast:Ljava/lang/String;

.field private final propertyConnectionPriorityBalanced:Ljava/lang/String;

.field private final propertyConnectionPriorityHigh:Ljava/lang/String;

.field private final propertyConnectionPriorityLow:Ljava/lang/String;

.field private final propertyExtendedProperties:Ljava/lang/String;

.field private final propertyIndicate:Ljava/lang/String;

.field private final propertyIndicateEncryptionRequired:Ljava/lang/String;

.field private final propertyNotify:Ljava/lang/String;

.field private final propertyNotifyEncryptionRequired:Ljava/lang/String;

.field private final propertyRead:Ljava/lang/String;

.field private final propertyWrite:Ljava/lang/String;

.field private final propertyWriteWithoutResponse:Ljava/lang/String;

.field private queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/randdusing/bluetoothle/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private queueQuick:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation
.end field

.field private scanCallback:Landroid/bluetooth/le/ScanCallback;

.field private scanCallbackContext:Lorg/apache/cordova/CallbackContext;

.field private scanCallbackKitKat:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private final statusBonded:Ljava/lang/String;

.field private final statusBonding:Ljava/lang/String;

.field private final statusClosed:Ljava/lang/String;

.field private final statusConnected:Ljava/lang/String;

.field private final statusConnectionPriorityRequested:Ljava/lang/String;

.field private final statusDisabled:Ljava/lang/String;

.field private final statusDisconnected:Ljava/lang/String;

.field private final statusDiscovered:Ljava/lang/String;

.field private final statusEnabled:Ljava/lang/String;

.field private final statusMtu:Ljava/lang/String;

.field private final statusRead:Ljava/lang/String;

.field private final statusReadDescriptor:Ljava/lang/String;

.field private final statusRssi:Ljava/lang/String;

.field private final statusScanResult:Ljava/lang/String;

.field private final statusScanStarted:Ljava/lang/String;

.field private final statusScanStopped:Ljava/lang/String;

.field private final statusSubscribed:Ljava/lang/String;

.field private final statusSubscribedResult:Ljava/lang/String;

.field private final statusUnbonded:Ljava/lang/String;

.field private final statusUnsubscribed:Ljava/lang/String;

.field private final statusWritten:Ljava/lang/String;

.field private final statusWrittenDescriptor:Ljava/lang/String;

.field private final writeTypeNoResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    const v0, 0xe8eb

    iput v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->REQUEST_BT_ENABLE:I

    const v0, 0xe8ec

    iput v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->REQUEST_ACCESS_FINE_LOCATION:I

    const v0, 0xe8ed

    iput v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->REQUEST_LOCATION_SOURCE_SETTINGS:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isReceiverRegistered:Z

    iput-boolean v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isBondReceiverRegistered:Z

    iput-boolean v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isAdvertising:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bonds:Ljava/util/HashMap;

    iput v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->STATE_UNDISCOVERED:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->STATE_DISCOVERING:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->STATE_DISCOVERED:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queueQuick:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queue:Ljava/util/LinkedList;

    const-string v0, "status"

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyStatus:Ljava/lang/String;

    const-string v0, "error"

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyError:Ljava/lang/String;

    const-string v0, "message"

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyMessage:Ljava/lang/String;

    const-string v0, "request"

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyRequest:Ljava/lang/String;

    const-string v0, "statusReceiver"

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyStatusReceiver:Ljava/lang/String;

    const-string v0, "name"

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyName:Ljava/lang/String;

    const-string v0, "address"

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyAddress:Ljava/lang/String;

    const-string v0, "rssi"

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyRssi:Ljava/lang/String;

    const-string v1, "scanMode"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyScanMode:Ljava/lang/String;

    const-string v1, "matchMode"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyMatchMode:Ljava/lang/String;

    const-string v1, "matchNum"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyMatchNum:Ljava/lang/String;

    const-string v1, "callbackType"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyCallbackType:Ljava/lang/String;

    const-string v1, "advertisement"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyAdvertisement:Ljava/lang/String;

    const-string v1, "uuid"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyUuid:Ljava/lang/String;

    const-string v1, "service"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyService:Ljava/lang/String;

    const-string v2, "services"

    iput-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyServices:Ljava/lang/String;

    const-string v3, "characteristic"

    iput-object v3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyCharacteristic:Ljava/lang/String;

    const-string v4, "characteristics"

    iput-object v4, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyCharacteristics:Ljava/lang/String;

    const-string v5, "properties"

    iput-object v5, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyProperties:Ljava/lang/String;

    const-string v5, "permissions"

    iput-object v5, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyPermissions:Ljava/lang/String;

    const-string v5, "descriptor"

    iput-object v5, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyDescriptor:Ljava/lang/String;

    const-string v6, "descriptors"

    iput-object v6, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyDescriptors:Ljava/lang/String;

    const-string v7, "value"

    iput-object v7, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyValue:Ljava/lang/String;

    const-string v7, "type"

    iput-object v7, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyType:Ljava/lang/String;

    const-string v7, "isInitialized"

    iput-object v7, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyIsInitialized:Ljava/lang/String;

    const-string v7, "isEnabled"

    iput-object v7, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyIsEnabled:Ljava/lang/String;

    const-string v7, "isScanning"

    iput-object v7, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyIsScanning:Ljava/lang/String;

    const-string v7, "isBonded"

    iput-object v7, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyIsBonded:Ljava/lang/String;

    const-string v7, "isConnected"

    iput-object v7, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyIsConnected:Ljava/lang/String;

    const-string v7, "isDiscovered"

    iput-object v7, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyIsDiscovered:Ljava/lang/String;

    const-string v7, "isDiscoverable"

    iput-object v7, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyIsDiscoverable:Ljava/lang/String;

    const-string v7, "peripheral"

    iput-object v7, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyPeripheral:Ljava/lang/String;

    const-string v7, "state"

    iput-object v7, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyState:Ljava/lang/String;

    const-string v7, "discoveredState"

    iput-object v7, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyDiscoveredState:Ljava/lang/String;

    const-string v7, "connectionPriority"

    iput-object v7, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyConnectionPriority:Ljava/lang/String;

    const-string v7, "mtu"

    iput-object v7, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyMtu:Ljava/lang/String;

    const-string v8, "pin"

    iput-object v8, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->keyPin:Ljava/lang/String;

    const-string v8, "noResponse"

    iput-object v8, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->writeTypeNoResponse:Ljava/lang/String;

    const-string v8, "enabled"

    iput-object v8, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusEnabled:Ljava/lang/String;

    const-string v8, "disabled"

    iput-object v8, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusDisabled:Ljava/lang/String;

    const-string v8, "scanStarted"

    iput-object v8, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusScanStarted:Ljava/lang/String;

    const-string v8, "scanStopped"

    iput-object v8, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusScanStopped:Ljava/lang/String;

    const-string v8, "scanResult"

    iput-object v8, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusScanResult:Ljava/lang/String;

    const-string v8, "bonded"

    iput-object v8, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusBonded:Ljava/lang/String;

    const-string v8, "bonding"

    iput-object v8, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusBonding:Ljava/lang/String;

    const-string v8, "unbonded"

    iput-object v8, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusUnbonded:Ljava/lang/String;

    const-string v8, "connected"

    iput-object v8, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusConnected:Ljava/lang/String;

    const-string v8, "disconnected"

    iput-object v8, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusDisconnected:Ljava/lang/String;

    const-string v8, "closed"

    iput-object v8, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusClosed:Ljava/lang/String;

    const-string v8, "discovered"

    iput-object v8, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusDiscovered:Ljava/lang/String;

    const-string v8, "read"

    iput-object v8, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusRead:Ljava/lang/String;

    const-string v9, "subscribed"

    iput-object v9, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusSubscribed:Ljava/lang/String;

    const-string v9, "subscribedResult"

    iput-object v9, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusSubscribedResult:Ljava/lang/String;

    const-string v9, "unsubscribed"

    iput-object v9, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusUnsubscribed:Ljava/lang/String;

    const-string v9, "written"

    iput-object v9, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusWritten:Ljava/lang/String;

    const-string v9, "readDescriptor"

    iput-object v9, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusReadDescriptor:Ljava/lang/String;

    const-string v10, "writtenDescriptor"

    iput-object v10, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusWrittenDescriptor:Ljava/lang/String;

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusRssi:Ljava/lang/String;

    const-string v10, "connectionPriorityRequested"

    iput-object v10, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusConnectionPriorityRequested:Ljava/lang/String;

    iput-object v7, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->statusMtu:Ljava/lang/String;

    const-string v10, "broadcast"

    iput-object v10, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->propertyBroadcast:Ljava/lang/String;

    iput-object v8, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->propertyRead:Ljava/lang/String;

    const-string v10, "writeWithoutResponse"

    iput-object v10, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->propertyWriteWithoutResponse:Ljava/lang/String;

    const-string v10, "write"

    iput-object v10, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->propertyWrite:Ljava/lang/String;

    const-string v11, "notify"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->propertyNotify:Ljava/lang/String;

    const-string v11, "indicate"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->propertyIndicate:Ljava/lang/String;

    const-string v11, "authenticatedSignedWrites"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->propertyAuthenticatedSignedWrites:Ljava/lang/String;

    const-string v11, "extendedProperties"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->propertyExtendedProperties:Ljava/lang/String;

    const-string v11, "notifyEncryptionRequired"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->propertyNotifyEncryptionRequired:Ljava/lang/String;

    const-string v11, "indicateEncryptionRequired"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->propertyIndicateEncryptionRequired:Ljava/lang/String;

    const-string v11, "high"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->propertyConnectionPriorityHigh:Ljava/lang/String;

    const-string v11, "low"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->propertyConnectionPriorityLow:Ljava/lang/String;

    const-string v11, "balanced"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->propertyConnectionPriorityBalanced:Ljava/lang/String;

    iput-object v8, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->permissionRead:Ljava/lang/String;

    const-string v11, "readEncrypted"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->permissionReadEncrypted:Ljava/lang/String;

    const-string v11, "readEncryptedMITM"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->permissionReadEncryptedMITM:Ljava/lang/String;

    iput-object v10, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->permissionWrite:Ljava/lang/String;

    const-string v11, "writeEncrypted"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->permissionWriteEncrypted:Ljava/lang/String;

    const-string v11, "writeEncryptedMITM"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->permissionWriteEncryptedMITM:Ljava/lang/String;

    const-string v11, "writeSigned"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->permissionWriteSigned:Ljava/lang/String;

    const-string v11, "writeSignedMITM"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->permissionWriteSignedMITM:Ljava/lang/String;

    const-string v11, "initialize"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorInitialize:Ljava/lang/String;

    const-string v11, "enable"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorEnable:Ljava/lang/String;

    const-string v11, "disable"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorDisable:Ljava/lang/String;

    const-string v11, "arguments"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorArguments:Ljava/lang/String;

    const-string v11, "startScan"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorStartScan:Ljava/lang/String;

    const-string v11, "stopScan"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorStopScan:Ljava/lang/String;

    const-string v11, "bond"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorBond:Ljava/lang/String;

    const-string v11, "unbond"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorUnbond:Ljava/lang/String;

    const-string v11, "connect"

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorConnect:Ljava/lang/String;

    const-string v12, "reconnect"

    iput-object v12, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorReconnect:Ljava/lang/String;

    const-string v12, "discover"

    iput-object v12, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorDiscover:Ljava/lang/String;

    iput-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorServices:Ljava/lang/String;

    iput-object v4, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorCharacteristics:Ljava/lang/String;

    iput-object v6, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorDescriptors:Ljava/lang/String;

    iput-object v8, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorRead:Ljava/lang/String;

    const-string v2, "subscription"

    iput-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorSubscription:Ljava/lang/String;

    iput-object v10, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorWrite:Ljava/lang/String;

    iput-object v9, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorReadDescriptor:Ljava/lang/String;

    const-string v2, "writeDescriptor"

    iput-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorWriteDescriptor:Ljava/lang/String;

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorRssi:Ljava/lang/String;

    const-string v2, "neverConnected"

    iput-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorNeverConnected:Ljava/lang/String;

    const-string v2, "isNotDisconnected"

    iput-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorIsNotDisconnected:Ljava/lang/String;

    const-string v2, "isNotConnected"

    iput-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorIsNotConnected:Ljava/lang/String;

    const-string v2, "isDisconnected"

    iput-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorIsDisconnected:Ljava/lang/String;

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorService:Ljava/lang/String;

    iput-object v3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorCharacteristic:Ljava/lang/String;

    iput-object v5, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorDescriptor:Ljava/lang/String;

    const-string v1, "requestConnectPriority"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorRequestConnectionPriority:Ljava/lang/String;

    iput-object v7, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorMtu:Ljava/lang/String;

    const-string v1, "retrievePeripheralsByAddress"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->errorRetrievePeripheralsByAddress:Ljava/lang/String;

    const-string v1, "Bluetooth not enabled"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logNotEnabled:Ljava/lang/String;

    const-string v1, "Bluetooth not disabled"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logNotDisabled:Ljava/lang/String;

    const-string v1, "Bluetooth not initialized"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logNotInit:Ljava/lang/String;

    const-string v1, "Operation unsupported"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logOperationUnsupported:Ljava/lang/String;

    const-string v1, "Scanning already in progress"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logAlreadyScanning:Ljava/lang/String;

    const-string v1, "Scan failed to start"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logScanStartFail:Ljava/lang/String;

    const-string v1, "Not scanning"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logNotScanning:Ljava/lang/String;

    const-string v1, "Device already bonded"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logBonded:Ljava/lang/String;

    const-string v1, "Device already bonding"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logBonding:Ljava/lang/String;

    const-string v1, "Device already unbonded"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logUnbonded:Ljava/lang/String;

    const-string v1, "Device failed to bond on return"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logBondFail:Ljava/lang/String;

    const-string v1, "Device failed to unbond on return"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logUnbondFail:Ljava/lang/String;

    const-string v1, "Device previously connected, reconnect or close for new device"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logPreviouslyConnected:Ljava/lang/String;

    const-string v1, "Connection failed"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logConnectFail:Ljava/lang/String;

    const-string v1, "Never connected to device"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logNeverConnected:Ljava/lang/String;

    const-string v1, "Device isn\'t connected"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logIsNotConnected:Ljava/lang/String;

    const-string v1, "Device isn\'t disconnected"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logIsNotDisconnected:Ljava/lang/String;

    const-string v1, "Device is disconnected"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logIsDisconnected:Ljava/lang/String;

    const-string v1, "No device address"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logNoAddress:Ljava/lang/String;

    const-string v1, "Device not found"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logNoDevice:Ljava/lang/String;

    const-string v1, "Reconnection to device failed"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logReconnectFail:Ljava/lang/String;

    const-string v1, "Already discovering device"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logAlreadyDiscovering:Ljava/lang/String;

    const-string v1, "Unable to discover device"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logDiscoveryFail:Ljava/lang/String;

    const-string v1, "Argument object not found"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logNoArgObj:Ljava/lang/String;

    const-string v1, "Service not found"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logNoService:Ljava/lang/String;

    const-string v1, "Characteristic not found"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logNoCharacteristic:Ljava/lang/String;

    const-string v1, "Descriptor not found"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logNoDescriptor:Ljava/lang/String;

    const-string v1, "Unable to read"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logReadFail:Ljava/lang/String;

    const-string v1, "Unable to read on return"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logReadFailReturn:Ljava/lang/String;

    const-string v1, "Unable to subscribe"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logSubscribeFail:Ljava/lang/String;

    const-string v1, "Already subscribed"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logSubscribeAlready:Ljava/lang/String;

    const-string v1, "Unable to unsubscribe"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logUnsubscribeFail:Ljava/lang/String;

    const-string v1, "Already unsubscribed"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logUnsubscribeAlready:Ljava/lang/String;

    const-string v1, "Unable to write"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logWriteFail:Ljava/lang/String;

    const-string v1, "Unable to write on return"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logWriteFailReturn:Ljava/lang/String;

    const-string v1, "Write value not found"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logWriteValueNotFound:Ljava/lang/String;

    const-string v1, "Write value not set"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logWriteValueNotSet:Ljava/lang/String;

    const-string v1, "Unable to read descriptor"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logReadDescriptorFail:Ljava/lang/String;

    const-string v1, "Unable to read descriptor on return"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logReadDescriptorFailReturn:Ljava/lang/String;

    const-string v1, "Unable to write client configuration descriptor"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logWriteDescriptorNotAllowed:Ljava/lang/String;

    const-string v1, "Unable to write descriptor"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logWriteDescriptorFail:Ljava/lang/String;

    const-string v1, "Write descriptor value not found"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logWriteDescriptorValueNotFound:Ljava/lang/String;

    const-string v1, "Write descriptor value not set"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logWriteDescriptorValueNotSet:Ljava/lang/String;

    const-string v1, "Descriptor not written on return"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logWriteDescriptorFailReturn:Ljava/lang/String;

    const-string v1, "Unable to read RSSI"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logRssiFail:Ljava/lang/String;

    const-string v1, "Unable to read RSSI on return"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logRssiFailReturn:Ljava/lang/String;

    const-string v1, "Request connection priority not set"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logRequestConnectionPriorityNull:Ljava/lang/String;

    const-string v1, "Request connection priority is invalid"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logRequestConnectionPriorityInvalid:Ljava/lang/String;

    const-string v1, "Request connection priority failed"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logRequestConnectionPriorityFailed:Ljava/lang/String;

    const-string v1, "Unable to set MTU"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logMtuFail:Ljava/lang/String;

    const-string v1, "Unable to set MTU on return"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logMtuFailReturn:Ljava/lang/String;

    const-string v1, "Requires API level 21"

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->logRequiresAPI21:Ljava/lang/String;

    iput-object v11, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->operationConnect:Ljava/lang/String;

    iput-object v12, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->operationDiscover:Ljava/lang/String;

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->operationRssi:Ljava/lang/String;

    iput-object v8, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->operationRead:Ljava/lang/String;

    const-string v0, "subscribe"

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->operationSubscribe:Ljava/lang/String;

    const-string v0, "unsubscribe"

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->operationUnsubscribe:Ljava/lang/String;

    iput-object v10, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->operationWrite:Ljava/lang/String;

    iput-object v7, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->operationMtu:Ljava/lang/String;

    const-string v0, "0000"

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->baseUuidStart:Ljava/lang/String;

    const-string v0, "-0000-1000-8000-00805F9B34FB"

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->baseUuidEnd:Ljava/lang/String;

    const-string v0, "00002902-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->clientConfigurationDescriptorUuid:Ljava/util/UUID;

    new-instance v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;

    invoke-direct {v0, p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin$2;-><init>(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)V

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$3;

    invoke-direct {v0, p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin$3;-><init>(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)V

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->mBondReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$4;

    invoke-direct {v0, p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin$4;-><init>(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)V

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->scanCallbackKitKat:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->scanCallback:Landroid/bluetooth/le/ScanCallback;

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->advertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    new-instance v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;

    invoke-direct {v0, p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin$7;-><init>(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)V

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    new-instance v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;

    invoke-direct {v0, p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin$8;-><init>(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)V

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothGattServerCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->createScanCallback()V

    invoke-direct {p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->createAdvertiseCallback()V

    return-void
.end method

.method private AddCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/CallbackContext;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->EnsureCallback(Ljava/util/UUID;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private AddDescriptorCallback(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/CallbackContext;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->EnsureDescriptorCallback(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private EnsureCallback(Ljava/util/UUID;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private EnsureDescriptorCallback(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->EnsureCallback(Ljava/util/UUID;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    if-eqz p3, :cond_0

    return-object p3

    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3
.end method

.method private GetCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/cordova/CallbackContext;"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/cordova/CallbackContext;

    return-object p1
.end method

.method private GetCallbacks(Ljava/util/HashMap;)[Lorg/apache/cordova/CallbackContext;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)[",
            "Lorg/apache/cordova/CallbackContext;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string v3, "discover"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "rssi"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "mtu"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/cordova/CallbackContext;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v3, v2, Ljava/util/UUID;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-direct {p0, v2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->GetMoreCallbacks(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/cordova/CallbackContext;

    return-object p1
.end method

.method private GetDescriptorCallback(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/cordova/CallbackContext;"
        }
    .end annotation

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-nez p1, :cond_1

    return-object p3

    :cond_1
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/cordova/CallbackContext;

    return-object p1
.end method

.method private GetMoreCallbacks(Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/cordova/CallbackContext;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/UUID;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-direct {p0, v1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->GetMoreCallbacks(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/cordova/CallbackContext;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private RemoveCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private RemoveDescriptorCallback(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    iget-object p0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->initCallbackContext:Lorg/apache/cordova/CallbackContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bonds:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addPropertyBytes(Lorg/json/JSONObject;Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$1300(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    iget-object p0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->advertiseCallbackContext:Lorg/apache/cordova/CallbackContext;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    iput-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->advertiseCallbackContext:Lorg/apache/cordova/CallbackContext;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queue:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)V
    .locals 0

    invoke-direct {p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queueRemove()V

    return-void
.end method

.method static synthetic access$1600(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/HashMap;)[Lorg/apache/cordova/CallbackContext;
    .locals 0

    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->GetCallbacks(Ljava/util/HashMap;)[Lorg/apache/cordova/CallbackContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Landroid/bluetooth/BluetoothGatt;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getDiscovery(Landroid/bluetooth/BluetoothGatt;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->GetCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->RemoveCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->connections:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addCharacteristic(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method static synthetic access$202(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->connections:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queueQuick:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/HashMap;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->writeQ(Ljava/util/HashMap;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->GetDescriptorCallback(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->RemoveDescriptorCallback(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDescriptor(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattDescriptor;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->clientConfigurationDescriptorUuid:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    iget-object p0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addServiceCallback:Lorg/apache/cordova/CallbackContext;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addService(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattService;)V

    return-void
.end method

.method static synthetic access$300(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    iget-object p0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->scanCallbackContext:Lorg/apache/cordova/CallbackContext;

    return-object p0
.end method

.method static synthetic access$302(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    iput-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->scanCallbackContext:Lorg/apache/cordova/CallbackContext;

    return-object p1
.end method

.method static synthetic access$400(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    iget-object p0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Landroid/bluetooth/le/ScanCallback;
    .locals 0

    iget-object p0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->scanCallback:Landroid/bluetooth/le/ScanCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isAdvertising:Z

    return p0
.end method

.method static synthetic access$602(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isAdvertising:Z

    return p1
.end method

.method static synthetic access$700(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Landroid/bluetooth/BluetoothGattServer;
    .locals 0

    iget-object p0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->gattServer:Landroid/bluetooth/BluetoothGattServer;

    return-object p0
.end method

.method static synthetic access$702(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServer;
    .locals 0

    iput-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->gattServer:Landroid/bluetooth/BluetoothGattServer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    iget-object p0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->initPeripheralCallback:Lorg/apache/cordova/CallbackContext;

    return-object p0
.end method

.method static synthetic access$900(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)V
    .locals 0

    invoke-direct {p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->initGattServer()V

    return-void
.end method

.method private addCharacteristic(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addService(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattService;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->formatUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "characteristic"

    invoke-direct {p0, p1, v0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addDescriptor(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addCharacteristic(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->formatUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "descriptor"

    invoke-direct {p0, p1, v0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "address"

    invoke-direct {p0, p1, v1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "name"

    invoke-direct {p0, p1, v0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_0

    :try_start_0
    sget-object p3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private addPropertyBytes(Lorg/json/JSONObject;Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p3, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addService(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattService;)V
    .locals 1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->formatUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "service"

    invoke-direct {p0, p1, v0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addServiceAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iput-object v1, v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addServiceCallback:Lorg/apache/cordova/CallbackContext;

    const-string v3, "service"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getUUID(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    new-instance v6, Landroid/bluetooth/BluetoothGattService;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;I)V

    const-string v8, "characteristics"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_20

    :try_start_0
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v11, "uuid"

    invoke-virtual {v10, v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getUUID(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v12

    const-string v13, "properties"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "write"

    const-string v15, "read"

    const/16 v16, 0x1

    if-eqz v13, :cond_b

    const-string v7, "broadcast"

    invoke-virtual {v13, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v17, v8

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const-string v8, "extendedProps"

    invoke-virtual {v13, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    or-int/lit16 v7, v7, 0x80

    :cond_2
    const-string v8, "indicate"

    invoke-virtual {v13, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    or-int/lit8 v7, v7, 0x20

    const/16 v18, 0x1

    goto :goto_2

    :cond_3
    const/16 v18, 0x0

    :goto_2
    const-string v8, "notify"

    invoke-virtual {v13, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    or-int/lit8 v7, v7, 0x10

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    move/from16 v8, v18

    :goto_3
    invoke-virtual {v13, v15, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_5

    or-int/lit8 v7, v7, 0x2

    :cond_5
    move/from16 v18, v8

    const-string v8, "signedWrite"

    invoke-virtual {v13, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    or-int/lit8 v7, v7, 0x40

    :cond_6
    invoke-virtual {v13, v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    or-int/lit8 v7, v7, 0x8

    :cond_7
    const-string v8, "writeNoResponse"

    invoke-virtual {v13, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    or-int/lit8 v7, v7, 0x4

    :cond_8
    const-string v8, "notifyEncryptionRequired"

    invoke-virtual {v13, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    or-int/lit16 v7, v7, 0x100

    :cond_9
    const-string v8, "indicateEncryptionRequired"

    invoke-virtual {v13, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    or-int/lit16 v7, v7, 0x200

    :cond_a
    move/from16 v8, v18

    goto :goto_4

    :cond_b
    move-object/from16 v17, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_4
    const-string v13, "permissions"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v4, "writeSignedMITM"

    const-string v1, "writeSigned"

    move-object/from16 v19, v3

    const-string v3, "writeEncryptedMITM"

    move-object/from16 v20, v5

    const-string v5, "writeEncrypted"

    move/from16 v21, v9

    const-string v9, "readEncryptedMITM"

    move-object/from16 v22, v6

    const-string v6, "readEncrypted"

    if-eqz v10, :cond_13

    move-object/from16 v23, v13

    const/4 v13, 0x0

    invoke-virtual {v10, v15, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_c

    const/16 v18, 0x1

    goto :goto_5

    :cond_c
    const/16 v18, 0x0

    :goto_5
    invoke-virtual {v10, v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_d

    or-int/lit8 v18, v18, 0x2

    :cond_d
    invoke-virtual {v10, v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_e

    or-int/lit8 v18, v18, 0x4

    :cond_e
    invoke-virtual {v10, v14, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_f

    or-int/lit8 v18, v18, 0x10

    :cond_f
    invoke-virtual {v10, v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_10

    or-int/lit8 v18, v18, 0x20

    :cond_10
    invoke-virtual {v10, v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_11

    or-int/lit8 v18, v18, 0x40

    :cond_11
    move-object/from16 v24, v3

    move/from16 v3, v18

    invoke-virtual {v10, v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_12

    or-int/lit16 v3, v3, 0x80

    :cond_12
    invoke-virtual {v10, v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_14

    or-int/lit16 v3, v3, 0x100

    goto :goto_6

    :cond_13
    move-object/from16 v24, v3

    move-object/from16 v23, v13

    const/4 v3, 0x0

    :cond_14
    :goto_6
    new-instance v10, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {v10, v12, v7, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    if-eqz v8, :cond_15

    new-instance v3, Landroid/bluetooth/BluetoothGattDescriptor;

    iget-object v7, v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->clientConfigurationDescriptorUuid:Ljava/util/UUID;

    const/16 v8, 0x11

    invoke-direct {v3, v7, v8}, Landroid/bluetooth/BluetoothGattDescriptor;-><init>(Ljava/util/UUID;I)V

    invoke-virtual {v10, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    :cond_15
    const-string v3, "descriptors"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1f

    const/4 v7, 0x0

    :goto_7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_1f

    :try_start_1
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getUUID(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v13

    move-object/from16 v12, v23

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    move-object/from16 v23, v2

    if-eqz v8, :cond_1d

    const/4 v2, 0x0

    invoke-virtual {v8, v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_16

    const/16 v18, 0x1

    goto :goto_8

    :cond_16
    const/16 v18, 0x0

    :goto_8
    invoke-virtual {v8, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_17

    or-int/lit8 v18, v18, 0x2

    :cond_17
    invoke-virtual {v8, v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_18

    or-int/lit8 v18, v18, 0x4

    :cond_18
    invoke-virtual {v8, v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_19

    or-int/lit8 v18, v18, 0x10

    :cond_19
    invoke-virtual {v8, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_1a

    or-int/lit8 v18, v18, 0x20

    :cond_1a
    move-object/from16 v26, v24

    move-object/from16 v24, v3

    move-object/from16 v3, v26

    invoke-virtual {v8, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_1b

    or-int/lit8 v18, v18, 0x40

    :cond_1b
    move-object/from16 v25, v3

    move/from16 v3, v18

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1c

    or-int/lit16 v3, v3, 0x80

    :cond_1c
    invoke-virtual {v8, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1e

    or-int/lit16 v3, v3, 0x100

    goto :goto_9

    :cond_1d
    move-object/from16 v25, v24

    const/4 v2, 0x0

    move-object/from16 v24, v3

    const/4 v3, 0x0

    :cond_1e
    :goto_9
    new-instance v8, Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-direct {v8, v13, v3}, Landroid/bluetooth/BluetoothGattDescriptor;-><init>(Ljava/util/UUID;I)V

    invoke-virtual {v10, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_a

    :catch_0
    move-object/from16 v12, v23

    move-object/from16 v25, v24

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    const/4 v2, 0x0

    :goto_a
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v24, v25

    move-object/from16 v23, v12

    goto/16 :goto_7

    :cond_1f
    move-object/from16 v23, v2

    const/4 v2, 0x0

    move-object/from16 v1, v22

    invoke-virtual {v1, v10}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_b

    :catch_1
    move-object/from16 v23, v2

    move-object/from16 v19, v3

    move-object v2, v4

    move-object/from16 v20, v5

    move-object v1, v6

    move-object/from16 v17, v8

    move/from16 v21, v9

    :goto_b
    add-int/lit8 v9, v21, 0x1

    move-object v6, v1

    move-object v4, v2

    move-object/from16 v8, v17

    move-object/from16 v3, v19

    move-object/from16 v5, v20

    move-object/from16 v2, v23

    const/4 v7, 0x0

    move-object/from16 v1, p2

    goto/16 :goto_0

    :cond_20
    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object v1, v6

    iget-object v2, v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->gattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGattServer;->addService(Landroid/bluetooth/BluetoothGattService;)Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v3, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "status"

    const-string v3, "serviceAdded"

    invoke-direct {v0, v1, v2, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_c

    :cond_21
    move-object/from16 v2, p2

    move-object/from16 v3, v19

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "error"

    invoke-direct {v0, v1, v4, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "message"

    const-string v4, "Failed to add service"

    invoke-direct {v0, v1, v3, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :goto_c
    return-void
.end method

.method private bondAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 8

    iget-boolean v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isBondReceiverRegistered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->mBondReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isBondReceiverRegistered:Z

    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const-string v1, "message"

    const-string v2, "bond"

    const-string v3, "error"

    if-nez v0, :cond_4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0, v3, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "Device not found"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "address"

    invoke-direct {p0, v0, v1, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_4
    iget-object v4, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bonds:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/cordova/CallbackContext;

    const-string v5, "Device already bonding"

    if-eqz v4, :cond_5

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p1, v3, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v1, v5}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    const/16 v6, 0xc

    if-eq v4, v6, :cond_8

    const/16 v7, 0xb

    if-ne v4, v7, :cond_6

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bonds:Ljava/util/HashMap;

    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v4, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v4, v3, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Device failed to bond on return"

    invoke-direct {p0, v4, v1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v4}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bonds:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void

    :cond_8
    :goto_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p1, v3, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    if-ne v4, v6, :cond_9

    const-string v5, "Device already bonded"

    :cond_9
    invoke-direct {p0, p1, v1, v5}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void
.end method

.method private closeAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->wasNeverConnected(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v1, "peripheral"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "status"

    const-string v4, "closed"

    invoke-direct {p0, v2, v3, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->connections:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v2}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queue:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/randdusing/bluetoothle/Operation;

    if-eqz p2, :cond_4

    iget-object v0, p2, Lcom/randdusing/bluetoothle/Operation;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_4

    iget-object p2, p2, Lcom/randdusing/bluetoothle/Operation;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queueRemove()V

    :cond_4
    return-void
.end method

.method private connectAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->wasConnected(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const-string v4, "connect"

    if-nez v3, :cond_4

    const-string p1, "error"

    invoke-direct {p0, v2, p1, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "message"

    const-string v0, "Device not found"

    invoke-direct {p0, v2, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "address"

    invoke-direct {p0, v2, p1, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "state"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "discoveredState"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_5

    const-string p2, "autoConnect"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_5
    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->connections:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p2, v2, :cond_6

    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getTransportMode(Lorg/json/JSONObject;)I

    move-result p1

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v3, p2, v0, v2, p1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v3, p1, v0, p2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    :goto_0
    const-string p2, "peripheral"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createAdvertiseCallback()V
    .locals 1

    new-instance v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;

    invoke-direct {v0, p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin$6;-><init>(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)V

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->advertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    return-void
.end method

.method private createScanCallback()V
    .locals 1

    new-instance v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;

    invoke-direct {v0, p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin$5;-><init>(Lcom/randdusing/bluetoothle/BluetoothLePlugin;)V

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->scanCallback:Landroid/bluetooth/le/ScanCallback;

    return-void
.end method

.method private disableAction(Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "error"

    const-string v2, "disable"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "message"

    const-string v2, "Bluetooth not disabled"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method private disconnectAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->wasNeverConnected(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v1, "peripheral"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-direct {p0, p1, v2, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isDisconnected(Ljava/util/HashMap;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    :cond_4
    const-string v3, "state"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v5, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    const-string v2, "connect"

    if-ne v4, v0, :cond_5

    const-string v0, "status"

    const-string v4, "disconnected"

    invoke-direct {p0, v5, v0, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v3, v4, v5}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {v3, v0}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    invoke-virtual {p2, v3}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    return-void
.end method

.method private discoverAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 9

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->wasNeverConnected(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    const-string v2, "peripheral"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {p0, v1, v3, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotConnected(Ljava/util/HashMap;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    :cond_4
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v4, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    const-string v3, "discover"

    const/4 v5, 0x0

    const-string v6, "clearCache"

    const-string v7, "discoveredState"

    if-eqz p1, :cond_5

    invoke-virtual {p1, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_5
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v0, :cond_6

    const-string p1, "error"

    invoke-direct {p0, v4, p1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "message"

    const-string v0, "Already discovering device"

    invoke-direct {p0, v4, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v4}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_6
    const/4 v4, 0x2

    if-ne v8, v4, :cond_7

    invoke-direct {p0, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getDiscovery(Landroid/bluetooth/BluetoothGatt;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void

    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z

    :cond_8
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    return-void
.end method

.method private enableAction(Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotDisabled(Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "error"

    const-string v2, "enable"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "message"

    const-string v2, "Bluetooth not enabled"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :cond_2
    return-void
.end method

.method private formatUuid(Ljava/util/UUID;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getAdapterInfoAction(Lorg/apache/cordova/CallbackContext;)V
    .locals 11

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v2, "isDiscoverable"

    const-string v3, "isScanning"

    const-string v4, "isEnabled"

    const-string v5, "isInitialized"

    const-string v6, "name"

    const-string v7, "address"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v9, "bluetooth"

    invoke-virtual {v1, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v7, v9}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v6, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v5, v10}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v4, v10}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v3, v10}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v2, v10}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v8}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v7, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v6, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v5, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v4, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->scanCallbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v3, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    const/16 v3, 0x17

    if-ne v1, v3, :cond_2

    const/4 v9, 0x1

    :cond_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v8}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method private getAddress(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string v0, "address"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    return-object p1
.end method

.method private getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCharacteristic(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 2

    const-string v0, "characteristic"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getUUID(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    return-object p1
.end method

.method private getDescriptor(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 2

    const-string v0, "descriptor"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getUUID(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    return-object p1
.end method

.method private getDiscovery(Landroid/bluetooth/BluetoothGatt;)Lorg/json/JSONObject;
    .locals 13

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const-string v2, "status"

    const-string v3, "discovered"

    invoke-direct {p0, v0, v2, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->formatUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "uuid"

    invoke-direct {p0, v3, v5, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothGattCharacteristic;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->formatUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v5, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v6}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getProperties(Landroid/bluetooth/BluetoothGattCharacteristic;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "properties"

    invoke-direct {p0, v7, v9, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v6}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getPermissions(Landroid/bluetooth/BluetoothGattCharacteristic;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "permissions"

    invoke-direct {p0, v7, v9, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothGattDescriptor;

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->formatUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v5, v12}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v10}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getPermissions(Landroid/bluetooth/BluetoothGattDescriptor;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {p0, v11, v9, v10}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_0
    const-string v6, "descriptors"

    invoke-direct {p0, v7, v6, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    const-string v2, "characteristics"

    invoke-direct {p0, v3, v2, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_2
    const-string p1, "services"

    invoke-direct {p0, v0, p1, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getMtu(Lorg/json/JSONObject;)I
    .locals 1

    const-string v0, "mtu"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x17

    :cond_0
    return p1
.end method

.method private getPermissions(Landroid/bluetooth/BluetoothGattCharacteristic;)Lorg/json/JSONObject;
    .locals 4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getPermissions()I

    move-result p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-ne v1, v2, :cond_0

    const-string v1, "read"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "readEncrypted"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const-string v1, "readEncryptedMITM"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    const-string v1, "write"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    const-string v1, "writeEncrypted"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    and-int/lit8 v1, p1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_5

    const-string v1, "writeEncryptedMITM"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    and-int/lit16 v1, p1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_6

    const-string v1, "writeSigned"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    const/16 v1, 0x100

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_7

    const-string p1, "writeSignedMITM"

    invoke-direct {p0, v0, p1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    return-object v0
.end method

.method private getPermissions(Landroid/bluetooth/BluetoothGattDescriptor;)Lorg/json/JSONObject;
    .locals 4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getPermissions()I

    move-result p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-ne v1, v2, :cond_0

    const-string v1, "read"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "readEncrypted"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const-string v1, "readEncryptedMITM"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    const-string v1, "write"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    const-string v1, "writeEncrypted"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    and-int/lit8 v1, p1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_5

    const-string v1, "writeEncryptedMITM"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    and-int/lit16 v1, p1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_6

    const-string v1, "writeSigned"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    const/16 v1, 0x100

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_7

    const-string p1, "writeSignedMITM"

    invoke-direct {p0, v0, p1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    return-object v0
.end method

.method private getPin(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string v0, "pin"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getProperties(Landroid/bluetooth/BluetoothGattCharacteristic;)Lorg/json/JSONObject;
    .locals 4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-ne v1, v2, :cond_0

    const-string v1, "broadcast"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "read"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const-string v1, "writeWithoutResponse"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    const-string v1, "write"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    const-string v1, "notify"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    const-string v1, "indicate"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    and-int/lit8 v1, p1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    const-string v1, "authenticatedSignedWrites"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    and-int/lit16 v1, p1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    const-string v1, "extendedProperties"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    and-int/lit16 v1, p1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8

    const-string v1, "notifyEncryptionRequired"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    const/16 v1, 0x200

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_9

    const-string p1, "indicateEncryptionRequired"

    invoke-direct {p0, v0, p1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    return-object v0
.end method

.method private getPropertyBytes(Lorg/json/JSONObject;Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_2

    array-length p2, p1

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getRequest(Lorg/json/JSONObject;)Z
    .locals 2

    const-string v0, "request"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private getService(Landroid/bluetooth/BluetoothGatt;Lorg/json/JSONObject;)Landroid/bluetooth/BluetoothGattService;
    .locals 2

    const-string v0, "service"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getUUID(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    return-object p1
.end method

.method private getServiceUuids(Lorg/json/JSONObject;)[Ljava/util/UUID;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/util/UUID;

    return-object p1

    :cond_0
    const-string v1, "services"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    new-array p1, v0, [Ljava/util/UUID;

    return-object p1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-0000-1000-8000-00805F9B34FB"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    :try_start_0
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/UUID;

    return-object p1
.end method

.method private getStatusReceiver(Lorg/json/JSONObject;)Z
    .locals 2

    const-string v0, "statusReceiver"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private getTransportMode(Lorg/json/JSONObject;)I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "transport"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "BLE"

    const-string v1, "An exception occurred while transport connection parameter, fall back to: BluetoothDevice.TRANSPORT_AUTO"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method private getUUID(Ljava/lang/String;)Ljava/util/UUID;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-0000-1000-8000-00805F9B34FB"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method private getWriteType(Lorg/json/JSONObject;)I
    .locals 2

    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "noResponse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method private initGattServer()V
    .locals 3

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->gattServer:Landroid/bluetooth/BluetoothGattServer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothGattServerCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    iput-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->gattServer:Landroid/bluetooth/BluetoothGattServer;

    :cond_0
    return-void
.end method

.method private initializeAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 9

    iput-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->initCallbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v0, "enabled"

    const-string v1, "Bluetooth not enabled"

    const-string v2, "message"

    const-string v3, "disabled"

    const-string v4, "status"

    const/4 v5, 0x1

    if-eqz p2, :cond_1

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, v4, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p2, v0, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v5}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->initCallbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v4, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p2, v0, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v5}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->initCallbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :goto_0
    return-void

    :cond_1
    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getStatusReceiver(Lorg/json/JSONObject;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v5, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isReceiverRegistered:Z

    :cond_2
    const-string v6, "bluetooth"

    invoke-virtual {p2, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->connections:Ljava/util/HashMap;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iget-object v6, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0, p2, v4, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, v0, p2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v5}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->initCallbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getRequest(Lorg/json/JSONObject;)Z

    move-result v0

    :cond_4
    if-eqz v0, :cond_5

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    const v0, 0xe8eb

    invoke-interface {p2, p0, p1, v0}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, p2, v4, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p2, v2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, v0, p2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v5}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->initCallbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :goto_1
    return-void
.end method

.method private initializePeripheralAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p1, v0, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "error"

    const-string v1, "initializePeripheral"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "message"

    const-string v1, "Operation unsupported"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    iput-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->initPeripheralCallback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->initGattServer()V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "status"

    const-string v0, "enabled"

    invoke-direct {p0, p1, p2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p2, v0, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->initPeripheralCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method private isAdvertisingAction(Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-boolean v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isAdvertising:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isAdvertising"

    invoke-direct {p0, v0, v2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method private isBondedAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "error"

    const-string v2, "bond"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "message"

    const-string v2, "Device not found"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "address"

    invoke-direct {p0, v0, v1, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_3
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 v2, 0xc

    if-ne p1, v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "isBonded"

    invoke-direct {p0, p1, v2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method private isConnectedAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->wasNeverConnected(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v1, "peripheral"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    const-string v2, "state"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "isConnected"

    invoke-direct {p0, v1, v2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method private isDisconnected(Ljava/util/HashMap;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lorg/apache/cordova/CallbackContext;",
            ")Z"
        }
    .end annotation

    const-string v0, "state"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "error"

    const-string v1, "isDisconnected"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "message"

    const-string v1, "Device is disconnected"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    return p1
.end method

.method private isDiscoveredAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->wasNeverConnected(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v1, "peripheral"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotConnected(Ljava/util/HashMap;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    const-string v2, "discoveredState"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "isDiscovered"

    invoke-direct {p0, p1, v2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method private isEnabledAction(Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "isEnabled"

    invoke-direct {p0, v1, v2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method private isInitializedAction(Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "isInitialized"

    invoke-direct {p0, v1, v2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method private isLocationEnabled()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "location_mode"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method private isLocationEnabledAction(Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isLocationEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isLocationEnabled"

    invoke-direct {p0, v0, v2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method private isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "error"

    const-string v1, "connect"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "message"

    const-string v1, "No device address"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "error"

    const-string v1, "arguments"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "message"

    const-string v1, "Argument object not found"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    return p1
.end method

.method private isNotCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "error"

    const-string v1, "characteristic"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "message"

    const-string v1, "Characteristic not found"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    return p1
.end method

.method private isNotConnected(Ljava/util/HashMap;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lorg/apache/cordova/CallbackContext;",
            ")Z"
        }
    .end annotation

    const-string v0, "state"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "error"

    const-string v1, "isNotConnected"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "message"

    const-string v1, "Device isn\'t connected"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    return p1
.end method

.method private isNotDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "error"

    const-string v1, "descriptor"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "message"

    const-string v1, "Descriptor not found"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    return p1
.end method

.method private isNotDisabled(Lorg/apache/cordova/CallbackContext;)Z
    .locals 3

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "error"

    const-string v2, "disable"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "message"

    const-string v2, "Bluetooth not disabled"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isNotDisconnected(Ljava/util/HashMap;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lorg/apache/cordova/CallbackContext;",
            ")Z"
        }
    .end annotation

    const-string v0, "state"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "error"

    const-string v1, "isNotDisconnected"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "message"

    const-string v1, "Device isn\'t disconnected"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    return p1
.end method

.method private isNotEnabled(Lorg/apache/cordova/CallbackContext;)Z
    .locals 3

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "error"

    const-string v2, "enable"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "message"

    const-string v2, "Bluetooth not enabled"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "error"

    const-string v1, "initialize"

    invoke-direct {p0, p2, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "message"

    const-string v1, "Bluetooth not initialized"

    invoke-direct {p0, p2, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotEnabled(Lorg/apache/cordova/CallbackContext;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isNotService(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "error"

    const-string v1, "service"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "message"

    const-string v1, "Service not found"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    return p1
.end method

.method private isScanningAction(Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->scanCallbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "isScanning"

    invoke-direct {p0, v1, v2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method private mtuAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 8

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->wasNeverConnected(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v1, "peripheral"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    const-string v5, "message"

    const-string v6, "error"

    const-string v7, "mtu"

    if-ge v3, v4, :cond_4

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p1, v6, v7}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Requires API level 21"

    invoke-direct {p0, p1, v5, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_4
    invoke-direct {p0, v0, v2, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotConnected(Ljava/util/HashMap;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, v7, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getMtu(Lorg/json/JSONObject;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p1, v6, v7}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Unable to set MTU"

    invoke-direct {p0, p1, v5, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method private notifyAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const-string v1, "service"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getUUID(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->gattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    const-string v4, "message"

    const-string v5, "error"

    if-nez v3, :cond_2

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v6, v5, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Service not found"

    invoke-direct {p0, v6, v4, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v6}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :cond_2
    const-string v1, "characteristic"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getUUID(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v3, v5, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Characteristic not found"

    invoke-direct {p0, v3, v4, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :cond_3
    const-string v1, "value"

    invoke-direct {p0, p1, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getPropertyBytes(Lorg/json/JSONObject;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "respond"

    invoke-direct {p0, p1, v5, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Failed to set value"

    invoke-direct {p0, p1, v4, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :cond_4
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->clientConfigurationDescriptorUuid:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object p1

    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->gattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v1, v0, v2, p1}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "notify"

    invoke-direct {p0, p1, v5, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Failed to notify"

    invoke-direct {p0, p1, v4, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :cond_5
    return-void
.end method

.method private queueNext()V
    .locals 3

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/randdusing/bluetoothle/Operation;

    iget-object v1, v0, Lcom/randdusing/bluetoothle/Operation;->type:Ljava/lang/String;

    const-string v2, "read"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->readAction(Lcom/randdusing/bluetoothle/Operation;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/randdusing/bluetoothle/Operation;->type:Ljava/lang/String;

    const-string v2, "write"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->writeAction(Lcom/randdusing/bluetoothle/Operation;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/randdusing/bluetoothle/Operation;->type:Ljava/lang/String;

    const-string v2, "readDescriptor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->readDescriptorAction(Lcom/randdusing/bluetoothle/Operation;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/randdusing/bluetoothle/Operation;->type:Ljava/lang/String;

    const-string v2, "writeDescriptor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->writeDescriptorAction(Lcom/randdusing/bluetoothle/Operation;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/randdusing/bluetoothle/Operation;->type:Ljava/lang/String;

    const-string v2, "subscribe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->subscribeAction(Lcom/randdusing/bluetoothle/Operation;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->unsubscribeAction(Lcom/randdusing/bluetoothle/Operation;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queueRemove()V

    :cond_5
    return-void
.end method

.method private queueRemove()V
    .locals 1

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queueNext()V

    return-void
.end method

.method private queueStart()V
    .locals 2

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queueNext()V

    return-void
.end method

.method private readAction(Lcom/randdusing/bluetoothle/Operation;)Z
    .locals 9

    iget-object v0, p1, Lcom/randdusing/bluetoothle/Operation;->args:Lorg/json/JSONArray;

    iget-object v1, p1, Lcom/randdusing/bluetoothle/Operation;->callbackContext:Lorg/apache/cordova/CallbackContext;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    :cond_0
    invoke-direct {p0, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    invoke-direct {p0, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v4

    :cond_2
    invoke-direct {p0, v3, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->wasNeverConnected(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Ljava/util/HashMap;

    move-result-object v3

    if-nez v3, :cond_3

    return v4

    :cond_3
    const-string v5, "peripheral"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-direct {p0, v3, v6, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotConnected(Ljava/util/HashMap;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v7

    if-eqz v7, :cond_4

    return v4

    :cond_4
    invoke-direct {p0, v5, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getService(Landroid/bluetooth/BluetoothGatt;Lorg/json/JSONObject;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v7

    invoke-direct {p0, v7, v6, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotService(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v8

    if-eqz v8, :cond_5

    return v4

    :cond_5
    invoke-direct {p0, v0, v7}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getCharacteristic(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-direct {p0, v0, v6, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v7

    if-eqz v7, :cond_6

    return v4

    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    const-string v8, "read"

    invoke-direct {p0, v7, v3, v8, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->AddCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v5

    if-nez v5, :cond_7

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v6}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addCharacteristic(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    const-string v0, "error"

    invoke-direct {p0, p1, v0, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "message"

    const-string v2, "Unable to read"

    invoke-direct {p0, p1, v0, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    invoke-direct {p0, v7, v3, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->RemoveCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V

    return v4

    :cond_7
    iput-object v6, p1, Lcom/randdusing/bluetoothle/Operation;->device:Landroid/bluetooth/BluetoothDevice;

    return v2
.end method

.method private readDescriptorAction(Lcom/randdusing/bluetoothle/Operation;)Z
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v7, Lcom/randdusing/bluetoothle/Operation;->args:Lorg/json/JSONArray;

    iget-object v8, v7, Lcom/randdusing/bluetoothle/Operation;->callbackContext:Lorg/apache/cordova/CallbackContext;

    const/4 v9, 0x1

    invoke-direct {v6, v8, v9}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    return v10

    :cond_0
    invoke-direct {v6, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v6, v0, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v10

    :cond_1
    invoke-direct {v6, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v10

    :cond_2
    invoke-direct {v6, v1, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->wasNeverConnected(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Ljava/util/HashMap;

    move-result-object v11

    if-nez v11, :cond_3

    return v10

    :cond_3
    const-string v1, "peripheral"

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v13

    invoke-direct {v6, v11, v13, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotConnected(Ljava/util/HashMap;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v10

    :cond_4
    invoke-direct {v6, v12, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getService(Landroid/bluetooth/BluetoothGatt;Lorg/json/JSONObject;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-direct {v6, v1, v13, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotService(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v10

    :cond_5
    invoke-direct {v6, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getCharacteristic(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-direct {v6, v1, v13, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v10

    :cond_6
    invoke-direct {v6, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getDescriptor(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v14

    invoke-direct {v6, v14, v13, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v10

    :cond_7
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    const-string v4, "read"

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v5

    move-object v3, v11

    move-object v9, v5

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->AddDescriptorCallback(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v12, v14}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v6, v0, v13}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {v6, v0, v14}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDescriptor(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattDescriptor;)V

    const-string v1, "error"

    const-string v2, "readDescriptor"

    invoke-direct {v6, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "message"

    const-string v2, "Unable to read descriptor"

    invoke-direct {v6, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const-string v0, "read"

    invoke-direct {v6, v15, v9, v11, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->RemoveDescriptorCallback(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V

    return v10

    :cond_8
    iput-object v13, v7, Lcom/randdusing/bluetoothle/Operation;->device:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x1

    return v0
.end method

.method private reconnectAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->wasNeverConnected(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v1, "peripheral"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-direct {p0, p1, v2, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotDisconnected(Ljava/util/HashMap;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v3, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    move-result v1

    if-nez v1, :cond_5

    const-string p1, "error"

    const-string v0, "reconnect"

    invoke-direct {p0, v3, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "message"

    const-string v0, "Reconnection to device failed"

    invoke-direct {p0, v3, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "connect"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "refresh"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const-string p1, "BLE"

    const-string v1, "An exception occured while refreshing device cache"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private removeAllServicesAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->gattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattServer;->clearServices()V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "status"

    const-string v1, "allServicesRemoved"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method private removeServiceAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "service"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getUUID(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->gattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    const-string v2, "message"

    const-string v3, "error"

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v3, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Service doesn\'t exist"

    invoke-direct {p0, v0, v2, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->gattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothGattServer;->removeService(Landroid/bluetooth/BluetoothGattService;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "status"

    const-string v1, "serviceRemoved"

    invoke-direct {p0, v0, p1, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v3, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Failed to remove service"

    invoke-direct {p0, v0, v2, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method private requestConnectionPriorityAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 7

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->wasNeverConnected(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    const-string v2, "peripheral"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const-string v4, "message"

    const-string v5, "requestConnectPriority"

    const-string v6, "error"

    if-ge v2, v3, :cond_4

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p1, v6, v5}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Requires API level 21"

    invoke-direct {p0, p1, v4, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_4
    const/4 v2, 0x0

    const-string v3, "connectionPriority"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p1, v6, v5}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Request connection priority not set"

    invoke-direct {p0, p1, v4, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_5
    const-string v2, "low"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    :cond_6
    const-string v2, "balanced"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    const-string v2, "high"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    :goto_0
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p1, v6, v5}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Request connection priority failed"

    invoke-direct {p0, p1, v4, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_8
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "status"

    const-string v2, "connectionPriorityRequested"

    invoke-direct {p0, p1, v0, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    :goto_1
    return-void

    :cond_9
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p1, v6, v5}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Request connection priority is invalid"

    invoke-direct {p0, p1, v4, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void
.end method

.method private requestLocationAction(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    iput-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->locationCallback:Lorg/apache/cordova/CallbackContext;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    const v1, 0xe8ed

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    return-void
.end method

.method private respondAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const-string v0, "requestId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "status"

    invoke-virtual {p1, v9, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    const-string v2, "offset"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v1, "value"

    invoke-direct {p0, p1, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getPropertyBytes(Lorg/json/JSONObject;Ljava/lang/String;)[B

    move-result-object v7

    iget-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->gattServer:Landroid/bluetooth/BluetoothGattServer;

    const/4 v5, 0x0

    move v4, v8

    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "responded"

    invoke-direct {p0, p1, v9, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "error"

    const-string v2, "respond"

    invoke-direct {p0, p1, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "message"

    const-string v2, "Failed to respond"

    invoke-direct {p0, p1, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method private retrieveConnectedAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 5

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v3, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONArray;)V

    invoke-virtual {v1, p1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method private rssiAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->wasNeverConnected(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "peripheral"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotConnected(Ljava/util/HashMap;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    const-string v2, "rssi"

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    const-string v1, "error"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "message"

    const-string v3, "Unable to read RSSI"

    invoke-direct {p0, v0, v1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private setPinAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 4

    const-string v0, "BLE"

    const-string v1, "set pin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->mPairingRequestReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->mPairingRequestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getPin(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set pin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v3, Lcom/randdusing/bluetoothle/BluetoothLePlugin$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin$1;-><init>(Lcom/randdusing/bluetoothle/BluetoothLePlugin;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->mPairingRequestReceiver:Landroid/content/BroadcastReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->mPairingRequestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p1, "status"

    const-string v1, "pinSet"

    invoke-direct {p0, v2, p1, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "error"

    const-string v0, "setPin"

    invoke-direct {p0, v2, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "message"

    const-string v0, "Failed to set pin"

    invoke-direct {p0, v2, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method private startAdvertisingAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v0

    const-string v1, "message"

    const-string v2, "startAdvertising"

    const-string v3, "error"

    if-nez v0, :cond_1

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v3, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Advertising isn\'t supported"

    invoke-direct {p0, p1, v1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_1
    new-instance v4, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {v4}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    const-string v5, "mode"

    const-string v6, "balanced"

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "lowLatency"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_2

    const/4 v5, 0x2

    goto :goto_0

    :cond_2
    const-string v6, "lowPower"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    const-string v5, "connectable"

    invoke-virtual {p1, v5, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    const/16 v5, 0x3e8

    const-string v6, "timeout"

    invoke-virtual {p1, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_a

    const v6, 0x2bf20

    if-le v5, v6, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    invoke-virtual {v4, v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    const-string v1, "txPowerLevel"

    const-string v2, "medium"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "high"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v7, 0x3

    goto :goto_1

    :cond_5
    const-string v2, "low"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v7, 0x1

    goto :goto_1

    :cond_6
    const-string v2, "ultraLow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v7, 0x0

    :cond_7
    :goto_1
    invoke-virtual {v4, v7}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-virtual {v4}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v1

    new-instance v2, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    const-string v3, "manufacturerId"

    invoke-virtual {p1, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "manufacturerSpecificData"

    invoke-direct {p0, p1, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getPropertyBytes(Lorg/json/JSONObject;Ljava/lang/String;)[B

    move-result-object v4

    if-ltz v3, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v2, v3, v4}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    :cond_8
    const/4 v3, 0x0

    const-string v4, "service"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getUUID(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    if-eqz v3, :cond_9

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v2, v4}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;

    :cond_9
    const-string v3, "includeDeviceName"

    invoke-virtual {p1, v3, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    const-string v3, "includeTxPowerLevel"

    invoke-virtual {p1, v3, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v2, p1}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-virtual {v2}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object p1

    iput-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->advertiseCallbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->advertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v0, v1, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    return-void

    :cond_a
    :goto_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v3, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Invalid timeout (0 - 180000)"

    invoke-direct {p0, p1, v1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void
.end method

.method private declared-synchronized startScanAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->scanCallbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v1, :cond_1

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "error"

    const-string v1, "startScan"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "message"

    const-string v1, "Scanning already in progress"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getServiceUuids(Lorg/json/JSONObject;)[Ljava/util/UUID;

    move-result-object v1

    iput-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->scanCallbackContext:Lorg/apache/cordova/CallbackContext;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_4

    array-length p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->scanCallbackKitKat:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->scanCallbackKitKat:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result p1

    :goto_0
    if-nez p1, :cond_7

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "error"

    const-string v1, "startScan"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "message"

    const-string v1, "Scan failed to start"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->scanCallbackContext:Lorg/apache/cordova/CallbackContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v1, v4

    new-instance v6, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v6}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v6, v7}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-virtual {v6}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    new-instance v1, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    const-string v3, "scanMode"

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    :try_start_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_6

    const-string v3, "matchMode"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v1, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_1
    :try_start_7
    const-string v3, "matchNum"

    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v1, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_2
    :try_start_9
    const-string v3, "callbackType"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v1, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_3
    :cond_6
    :try_start_b
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p1

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v1

    iget-object v3, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->scanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {p1, v2, v1, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    :cond_7
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status"

    const-string v2, "scanStarted"

    invoke-direct {p0, p1, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v0}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private stopAdvertisingAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "error"

    const-string v1, "stopAdvertising"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "message"

    const-string v1, "Advertising isn\'t supported"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->advertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {p1, v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    iget-boolean p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isAdvertising:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isAdvertising:Z

    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "status"

    const-string v1, "advertisingStopped"

    invoke-direct {p0, p1, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method private declared-synchronized stopScanAction(Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->scanCallbackContext:Lorg/apache/cordova/CallbackContext;

    if-nez v1, :cond_1

    const-string v1, "error"

    const-string v2, "stopScan"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "message"

    const-string v2, "Not scanning"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->scanCallbackKitKat:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    iget-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->scanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->scanCallbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "status"

    const-string v2, "scanStopped"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private subscribeAction(Lcom/randdusing/bluetoothle/Operation;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/randdusing/bluetoothle/Operation;->args:Lorg/json/JSONArray;

    iget-object v3, v1, Lcom/randdusing/bluetoothle/Operation;->callbackContext:Lorg/apache/cordova/CallbackContext;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    return v6

    :cond_0
    invoke-direct {v0, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v6

    :cond_1
    invoke-direct {v0, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v7

    if-eqz v7, :cond_2

    return v6

    :cond_2
    invoke-direct {v0, v5, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->wasNeverConnected(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Ljava/util/HashMap;

    move-result-object v5

    if-nez v5, :cond_3

    return v6

    :cond_3
    const-string v7, "peripheral"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-direct {v0, v5, v8, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotConnected(Ljava/util/HashMap;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v9

    if-eqz v9, :cond_4

    return v6

    :cond_4
    invoke-direct {v0, v7, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getService(Landroid/bluetooth/BluetoothGatt;Lorg/json/JSONObject;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v9

    invoke-direct {v0, v9, v8, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotService(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v10

    if-eqz v10, :cond_5

    return v6

    :cond_5
    invoke-direct {v0, v2, v9}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getCharacteristic(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    invoke-direct {v0, v2, v8, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v9

    if-eqz v9, :cond_6

    return v6

    :cond_6
    iget-object v9, v0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->clientConfigurationDescriptorUuid:Ljava/util/UUID;

    invoke-virtual {v2, v9}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v9

    invoke-direct {v0, v9, v8, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v10

    if-eqz v10, :cond_7

    return v6

    :cond_7
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v10

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v11, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {v0, v11, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addCharacteristic(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    const-string v12, "subscribe"

    invoke-direct {v0, v10, v5, v12}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->GetCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object v13

    const-string v14, "message"

    const-string v15, "error"

    if-eqz v13, :cond_8

    const-string v1, "subscription"

    invoke-direct {v0, v11, v15, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Already subscribed"

    invoke-direct {v0, v11, v14, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v11}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return v6

    :cond_8
    invoke-virtual {v7, v2, v4}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v13

    const-string v4, "Write descriptor value not set"

    const-string v6, "writeDescriptor"

    if-nez v13, :cond_9

    invoke-direct {v0, v11, v15, v6}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, v11, v14, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v11}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const/4 v1, 0x0

    return v1

    :cond_9
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    const/16 v13, 0x10

    and-int/2addr v2, v13

    if-ne v2, v13, :cond_a

    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v9, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result v2

    goto :goto_0

    :cond_a
    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-virtual {v9, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result v2

    :goto_0
    if-nez v2, :cond_b

    invoke-direct {v0, v11, v15, v6}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, v11, v14, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v11}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const/4 v2, 0x0

    return v2

    :cond_b
    const/4 v2, 0x0

    invoke-direct {v0, v10, v5, v12, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->AddCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v7, v9}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-direct {v0, v11, v15, v6}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Unable to write descriptor"

    invoke-direct {v0, v11, v14, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v11}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    invoke-direct {v0, v10, v5, v12}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->RemoveCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V

    return v2

    :cond_c
    iput-object v8, v1, Lcom/randdusing/bluetoothle/Operation;->device:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    return v1
.end method

.method private unbondAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 8

    iget-boolean v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isBondReceiverRegistered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->mBondReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isBondReceiverRegistered:Z

    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const-string v1, "bond"

    const-string v2, "message"

    const-string v3, "error"

    if-nez v0, :cond_4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0, v3, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Device not found"

    invoke-direct {p0, v0, v2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "address"

    invoke-direct {p0, v0, v1, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_4
    iget-object v4, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bonds:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/cordova/CallbackContext;

    const-string v5, "Device already bonding"

    if-eqz v4, :cond_5

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p1, v3, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v2, v5}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const-string v4, "unbond"

    const/16 v6, 0xa

    if-eq v1, v6, :cond_8

    const/16 v7, 0xb

    if-ne v1, v7, :cond_6

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bonds:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "removeBond"

    new-array v7, v1, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BLE"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v1, :cond_7

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v1, v3, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Device failed to unbond on return"

    invoke-direct {p0, v1, v2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bonds:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void

    :cond_8
    :goto_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p1, v3, v4}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    if-ne v1, v6, :cond_9

    const-string v5, "Device already unbonded"

    :cond_9
    invoke-direct {p0, p1, v2, v5}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void
.end method

.method private unsubscribeAction(Lcom/randdusing/bluetoothle/Operation;)Z
    .locals 13

    iget-object v0, p1, Lcom/randdusing/bluetoothle/Operation;->args:Lorg/json/JSONArray;

    iget-object v1, p1, Lcom/randdusing/bluetoothle/Operation;->callbackContext:Lorg/apache/cordova/CallbackContext;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    :cond_0
    invoke-direct {p0, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    invoke-direct {p0, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v4

    :cond_2
    invoke-direct {p0, v3, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->wasNeverConnected(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Ljava/util/HashMap;

    move-result-object v3

    if-nez v3, :cond_3

    return v4

    :cond_3
    const-string v5, "peripheral"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-direct {p0, v3, v6, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotConnected(Ljava/util/HashMap;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v7

    if-eqz v7, :cond_4

    return v4

    :cond_4
    invoke-direct {p0, v5, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getService(Landroid/bluetooth/BluetoothGatt;Lorg/json/JSONObject;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v7

    invoke-direct {p0, v7, v6, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotService(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v8

    if-eqz v8, :cond_5

    return v4

    :cond_5
    invoke-direct {p0, v0, v7}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getCharacteristic(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-direct {p0, v0, v6, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v7

    if-eqz v7, :cond_6

    return v4

    :cond_6
    iget-object v7, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->clientConfigurationDescriptorUuid:Ljava/util/UUID;

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v7

    invoke-direct {p0, v7, v6, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v8

    if-eqz v8, :cond_7

    return v4

    :cond_7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v9, v6}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v9, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addCharacteristic(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    const-string v0, "subscribe"

    invoke-direct {p0, v8, v3, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->GetCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object v10

    const-string v11, "message"

    const-string v12, "error"

    if-nez v10, :cond_8

    const-string p1, "subscription"

    invoke-direct {p0, v9, v12, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Already unsubscribed"

    invoke-direct {p0, v9, v11, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return v4

    :cond_8
    invoke-direct {p0, v8, v3, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->RemoveCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V

    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v7, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result v0

    const-string v10, "writeDescriptor"

    if-nez v0, :cond_9

    invoke-direct {p0, v9, v12, v10}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Write descriptor value not set"

    invoke-direct {p0, v9, v11, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return v4

    :cond_9
    const-string v0, "unsubscribe"

    invoke-direct {p0, v8, v3, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->AddCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v5, v7}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-direct {p0, v9, v12, v10}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Unable to write descriptor"

    invoke-direct {p0, v9, v11, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    invoke-direct {p0, v8, v3, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->RemoveCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V

    return v4

    :cond_a
    iput-object v6, p1, Lcom/randdusing/bluetoothle/Operation;->device:Landroid/bluetooth/BluetoothDevice;

    return v2
.end method

.method private wasConnected(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->connections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    const-string v0, "peripheral"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "error"

    const-string v2, "connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "message"

    const-string v2, "Device previously connected, reconnect or close for new device"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private wasConnectedAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->connections:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "wasConnected"

    if-nez v1, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "address"

    invoke-direct {p0, v0, v1, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void

    :cond_3
    const-string p1, "peripheral"

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method private wasNeverConnected(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/CallbackContext;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->connections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "error"

    const-string v2, "neverConnected"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "message"

    const-string v2, "Never connected to device"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "address"

    invoke-direct {p0, v0, v1, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private writeAction(Lcom/randdusing/bluetoothle/Operation;)Z
    .locals 14

    iget-object v0, p1, Lcom/randdusing/bluetoothle/Operation;->args:Lorg/json/JSONArray;

    iget-object v1, p1, Lcom/randdusing/bluetoothle/Operation;->callbackContext:Lorg/apache/cordova/CallbackContext;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    :cond_0
    invoke-direct {p0, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    invoke-direct {p0, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v4

    :cond_2
    invoke-direct {p0, v3, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->wasNeverConnected(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Ljava/util/HashMap;

    move-result-object v3

    if-nez v3, :cond_3

    return v4

    :cond_3
    const-string v5, "peripheral"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-direct {p0, v3, v6, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotConnected(Ljava/util/HashMap;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v7

    if-eqz v7, :cond_4

    return v4

    :cond_4
    invoke-direct {p0, v5, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getService(Landroid/bluetooth/BluetoothGatt;Lorg/json/JSONObject;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v7

    invoke-direct {p0, v7, v6, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotService(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v8

    if-eqz v8, :cond_5

    return v4

    :cond_5
    invoke-direct {p0, v0, v7}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getCharacteristic(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v7

    invoke-direct {p0, v7, v6, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v8

    if-eqz v8, :cond_6

    return v4

    :cond_6
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v9, v6}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v9, v7}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addCharacteristic(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    const-string v10, "value"

    invoke-direct {p0, v0, v10}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getPropertyBytes(Lorg/json/JSONObject;Ljava/lang/String;)[B

    move-result-object v10

    const-string v11, "message"

    const-string v12, "error"

    const-string v13, "write"

    if-nez v10, :cond_7

    invoke-direct {p0, v9, v12, v13}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Write value not found"

    invoke-direct {p0, v9, v11, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return v4

    :cond_7
    invoke-direct {p0, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getWriteType(Lorg/json/JSONObject;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    invoke-virtual {v7, v10}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, v9, v12, v13}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Write value not set"

    invoke-direct {p0, v9, v11, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return v4

    :cond_8
    invoke-direct {p0, v8, v3, v13, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->AddCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v5, v7}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, v9, v12, v13}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Unable to write"

    invoke-direct {p0, v9, v11, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    invoke-direct {p0, v8, v3, v13}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->RemoveCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V

    return v4

    :cond_9
    iput-object v6, p1, Lcom/randdusing/bluetoothle/Operation;->device:Landroid/bluetooth/BluetoothDevice;

    return v2
.end method

.method private writeDescriptorAction(Lcom/randdusing/bluetoothle/Operation;)Z
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v7, Lcom/randdusing/bluetoothle/Operation;->args:Lorg/json/JSONArray;

    iget-object v8, v7, Lcom/randdusing/bluetoothle/Operation;->callbackContext:Lorg/apache/cordova/CallbackContext;

    const/4 v9, 0x1

    invoke-direct {v6, v8, v9}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    return v10

    :cond_0
    invoke-direct {v6, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v6, v0, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v10

    :cond_1
    invoke-direct {v6, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v10

    :cond_2
    invoke-direct {v6, v1, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->wasNeverConnected(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Ljava/util/HashMap;

    move-result-object v11

    if-nez v11, :cond_3

    return v10

    :cond_3
    const-string v1, "peripheral"

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v13

    invoke-direct {v6, v11, v13, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotConnected(Ljava/util/HashMap;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v10

    :cond_4
    invoke-direct {v6, v12, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getService(Landroid/bluetooth/BluetoothGatt;Lorg/json/JSONObject;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-direct {v6, v1, v13, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotService(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v10

    :cond_5
    invoke-direct {v6, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getCharacteristic(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-direct {v6, v1, v13, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v10

    :cond_6
    invoke-direct {v6, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getDescriptor(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v14

    invoke-direct {v6, v14, v13, v8}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v10

    :cond_7
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v6, v4, v13}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {v6, v4, v14}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDescriptor(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattDescriptor;)V

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, v6, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->clientConfigurationDescriptorUuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "message"

    const-string v2, "writeDescriptor"

    const-string v9, "error"

    if-eqz v1, :cond_8

    invoke-direct {v6, v4, v9, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Unable to write client configuration descriptor"

    invoke-direct {v6, v4, v3, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v4}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return v10

    :cond_8
    const-string v1, "value"

    invoke-direct {v6, v0, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getPropertyBytes(Lorg/json/JSONObject;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_9

    invoke-direct {v6, v4, v9, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Write descriptor value not found"

    invoke-direct {v6, v4, v3, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v4}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return v10

    :cond_9
    invoke-virtual {v14, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {v6, v4, v9, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Write descriptor value not set"

    invoke-direct {v6, v4, v3, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v4}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return v10

    :cond_a
    const-string v16, "write"

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v10, v2

    move-object v2, v5

    move-object v7, v3

    move-object v3, v11

    move-object/from16 v17, v13

    move-object v13, v4

    move-object/from16 v4, v16

    move-object/from16 v16, v11

    move-object v11, v5

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->AddDescriptorCallback(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v12, v14}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {v6, v13, v9, v10}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Unable to write descriptor"

    invoke-direct {v6, v13, v7, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v13}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const-string v0, "write"

    move-object/from16 v1, v16

    invoke-direct {v6, v15, v11, v1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->RemoveDescriptorCallback(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_b
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v1, v0, Lcom/randdusing/bluetoothle/Operation;->device:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x1

    return v0
.end method

.method private writeQ(Ljava/util/HashMap;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "Landroid/bluetooth/BluetoothGatt;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queueQuick:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "message"

    const-string v2, "error"

    const-string v3, "write"

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addCharacteristic(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-direct {p0, v0, v2, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p3, "Queue was empty"

    invoke-direct {p0, v0, v1, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-direct {p0, p3, p1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->GetCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object p3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-direct {p0, p2, p1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->RemoveCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queueQuick:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addCharacteristic(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-direct {p0, v0, v2, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p3, "Write value not set"

    invoke-direct {p0, v0, v1, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-direct {p0, p3, p1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->GetCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object p3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-direct {p0, p2, p1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->RemoveCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_1
    invoke-virtual {p3, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queueQuick:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addCharacteristic(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-direct {p0, v0, v2, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p3, "Unable to write"

    invoke-direct {p0, v0, v1, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-direct {p0, p3, p1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->GetCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object p3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-direct {p0, p2, p1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->RemoveCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :cond_2
    return-void
.end method

.method private writeQAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 7

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotInitialized(Lorg/apache/cordova/CallbackContext;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getArgsObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotArgsObject(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotAddress(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->wasNeverConnected(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v1, "peripheral"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-direct {p0, v0, v2, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotConnected(Ljava/util/HashMap;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, v1, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getService(Landroid/bluetooth/BluetoothGatt;Lorg/json/JSONObject;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-direct {p0, v3, v2, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotService(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v4

    if-eqz v4, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, p1, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getCharacteristic(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-direct {p0, v3, v2, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isNotCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothDevice;Lorg/apache/cordova/CallbackContext;)Z

    move-result v4

    if-eqz v4, :cond_6

    return-void

    :cond_6
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v5, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addDevice(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v5, v3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addCharacteristic(Lorg/json/JSONObject;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    const-string v2, "value"

    invoke-direct {p0, p1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getPropertyBytes(Lorg/json/JSONObject;Ljava/lang/String;)[B

    move-result-object v2

    const-string v6, "write"

    if-nez v2, :cond_7

    const-string p1, "error"

    invoke-direct {p0, v5, p1, v6}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "message"

    const-string v0, "Write value not found"

    invoke-direct {p0, v5, p1, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_7
    invoke-direct {p0, p1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getWriteType(Lorg/json/JSONObject;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    invoke-direct {p0, v4, v0, v6, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->AddCallback(Ljava/util/UUID;Ljava/util/HashMap;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queueQuick:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->clear()V

    array-length p2, v2

    const/16 v4, 0x14

    const-string v5, "chunkSize"

    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v4, 0x0

    :goto_0
    sub-int v5, p2, v4

    if-le v5, p1, :cond_8

    move v5, p1

    :cond_8
    add-int/2addr v5, v4

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    iget-object v6, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queueQuick:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-lt v5, p2, :cond_9

    invoke-direct {p0, v0, v3, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->writeQ(Ljava/util/HashMap;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V

    return-void

    :cond_9
    move v4, v5

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "initialize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->initializeAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "enable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->enableAction(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "getAdapterInfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->getAdapterInfoAction(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "disable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->disableAction(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "startScan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->startScanAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "stopScan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->stopScanAction(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "retrieveConnected"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->retrieveConnectedAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "bond"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bondAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "unbond"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->unbondAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "connect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->connectAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "reconnect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->reconnectAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "disconnect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->disconnectAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "services"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Operation unsupported"

    const-string v3, "message"

    const-string v4, "error"

    if-eqz v1, :cond_c

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v4, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v3, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "characteristics"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v4, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v3, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "descriptors"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v4, v0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v3, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "close"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->closeAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "discover"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->discoverAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_10
    const-string v0, "read"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance p1, Lcom/randdusing/bluetoothle/Operation;

    invoke-direct {p1, v0, p2, p3}, Lcom/randdusing/bluetoothle/Operation;-><init>(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queue:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queueStart()V

    goto/16 :goto_0

    :cond_11
    const-string v0, "subscribe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance p1, Lcom/randdusing/bluetoothle/Operation;

    invoke-direct {p1, v0, p2, p3}, Lcom/randdusing/bluetoothle/Operation;-><init>(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queue:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queueStart()V

    goto/16 :goto_0

    :cond_12
    const-string v0, "unsubscribe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance p1, Lcom/randdusing/bluetoothle/Operation;

    invoke-direct {p1, v0, p2, p3}, Lcom/randdusing/bluetoothle/Operation;-><init>(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queue:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queueStart()V

    goto/16 :goto_0

    :cond_13
    const-string v0, "write"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance p1, Lcom/randdusing/bluetoothle/Operation;

    invoke-direct {p1, v0, p2, p3}, Lcom/randdusing/bluetoothle/Operation;-><init>(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queue:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queueStart()V

    goto/16 :goto_0

    :cond_14
    const-string v0, "writeQ"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->writeQAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_15
    const-string v0, "readDescriptor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance p1, Lcom/randdusing/bluetoothle/Operation;

    invoke-direct {p1, v0, p2, p3}, Lcom/randdusing/bluetoothle/Operation;-><init>(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queue:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queueStart()V

    goto/16 :goto_0

    :cond_16
    const-string v0, "writeDescriptor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance p1, Lcom/randdusing/bluetoothle/Operation;

    invoke-direct {p1, v0, p2, p3}, Lcom/randdusing/bluetoothle/Operation;-><init>(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queue:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->queueStart()V

    goto/16 :goto_0

    :cond_17
    const-string v0, "rssi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->rssiAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_18
    const-string v0, "isInitialized"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isInitializedAction(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_19
    const-string v0, "isEnabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isEnabledAction(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_1a
    const-string v0, "isScanning"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isScanningAction(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_1b
    const-string v0, "wasConnected"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->wasConnectedAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_1c
    const-string v0, "isConnected"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isConnectedAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_1d
    const-string v0, "isDiscovered"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isDiscoveredAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_1e
    const-string v0, "isBonded"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isBondedAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_1f
    const-string v0, "requestConnectionPriority"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->requestConnectionPriorityAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_20
    const-string v0, "mtu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->mtuAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_21
    const-string v0, "hasPermission"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->hasPermissionAction(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_22
    const-string v0, "requestPermission"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->requestPermissionAction(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_23
    const-string v0, "isLocationEnabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-direct {p0, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isLocationEnabledAction(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_24
    const-string v0, "requestLocation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->requestLocationAction(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_25
    const-string v0, "initializePeripheral"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->initializePeripheralAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_26
    const-string v0, "addService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addServiceAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_27
    const-string v0, "removeService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->removeServiceAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :cond_28
    const-string v0, "removeAllServices"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->removeAllServicesAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    :cond_29
    const-string v0, "startAdvertising"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->startAdvertisingAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    :cond_2a
    const-string v0, "stopAdvertising"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->stopAdvertisingAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    :cond_2b
    const-string v0, "isAdvertising"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-direct {p0, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isAdvertisingAction(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    :cond_2c
    const-string v0, "respond"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->respondAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    :cond_2d
    const-string v0, "notify"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->notifyAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    :cond_2e
    const-string v0, "setPin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct {p0, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->setPinAction(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    :cond_2f
    const-string p2, "retrievePeripheralsByAddress"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v4, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v3, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_30
    const/4 p1, 0x0

    return p1
.end method

.method public hasPermissionAction(Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2}, Lorg/apache/cordova/CordovaInterface;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hasPermission"

    invoke-direct {p0, v0, v2, v1}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const p2, 0xe8eb

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->initCallbackContext:Lorg/apache/cordova/CallbackContext;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "status"

    const-string p3, "disabled"

    invoke-direct {p0, p1, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "message"

    const-string p3, "Bluetooth not enabled"

    invoke-direct {p0, p1, p2, p3}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lorg/apache/cordova/PluginResult;

    sget-object p3, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p2, p3, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->initCallbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    :cond_1
    const p2, 0xe8ed

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->locationCallback:Lorg/apache/cordova/CallbackContext;

    if-eqz p1, :cond_2

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isLocationEnabled()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "requestLocation"

    invoke-direct {p0, p1, p3, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->locationCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->locationCallback:Lorg/apache/cordova/CallbackContext;

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->onDestroy()V

    iget-boolean v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-boolean v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->isBondReceiverRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->mBondReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->mPairingRequestReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->mPairingRequestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->permissionsCallback:Lorg/apache/cordova/CallbackContext;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    const-string p3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {p2, p3}, Lorg/apache/cordova/CordovaInterface;->hasPermission(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "requestPermission"

    invoke-direct {p0, p1, p3, p2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->permissionsCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public requestPermissionAction(Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "error"

    const-string v2, "requestPermission"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "message"

    const-string v2, "Operation unsupported"

    invoke-direct {p0, v0, v1, v2}, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->permissionsCallback:Lorg/apache/cordova/CallbackContext;

    iget-object p1, p0, Lcom/randdusing/bluetoothle/BluetoothLePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    const v0, 0xe8ec

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {p1, p0, v0, v1}, Lorg/apache/cordova/CordovaInterface;->requestPermission(Lorg/apache/cordova/CordovaPlugin;ILjava/lang/String;)V

    return-void
.end method
