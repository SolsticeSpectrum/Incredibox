.class public final enum Lorg/apache/cordova/PluginResult$Status;
.super Ljava/lang/Enum;
.source "PluginResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/PluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/cordova/PluginResult$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/cordova/PluginResult$Status;

.field public static final enum CLASS_NOT_FOUND_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

.field public static final enum ERROR:Lorg/apache/cordova/PluginResult$Status;

.field public static final enum ILLEGAL_ACCESS_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

.field public static final enum INSTANTIATION_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

.field public static final enum INVALID_ACTION:Lorg/apache/cordova/PluginResult$Status;

.field public static final enum IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

.field public static final enum JSON_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

.field public static final enum MALFORMED_URL_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

.field public static final enum NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

.field public static final enum OK:Lorg/apache/cordova/PluginResult$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/apache/cordova/PluginResult$Status;

    const-string v1, "NO_RESULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    new-instance v0, Lorg/apache/cordova/PluginResult$Status;

    const-string v1, "OK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/cordova/PluginResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    new-instance v0, Lorg/apache/cordova/PluginResult$Status;

    const-string v1, "CLASS_NOT_FOUND_EXCEPTION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/cordova/PluginResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/cordova/PluginResult$Status;->CLASS_NOT_FOUND_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    new-instance v0, Lorg/apache/cordova/PluginResult$Status;

    const-string v1, "ILLEGAL_ACCESS_EXCEPTION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/cordova/PluginResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/cordova/PluginResult$Status;->ILLEGAL_ACCESS_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    new-instance v0, Lorg/apache/cordova/PluginResult$Status;

    const-string v1, "INSTANTIATION_EXCEPTION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/apache/cordova/PluginResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/cordova/PluginResult$Status;->INSTANTIATION_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    new-instance v0, Lorg/apache/cordova/PluginResult$Status;

    const-string v1, "MALFORMED_URL_EXCEPTION"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/apache/cordova/PluginResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/cordova/PluginResult$Status;->MALFORMED_URL_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    new-instance v0, Lorg/apache/cordova/PluginResult$Status;

    const-string v1, "IO_EXCEPTION"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/apache/cordova/PluginResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    new-instance v0, Lorg/apache/cordova/PluginResult$Status;

    const-string v1, "INVALID_ACTION"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/apache/cordova/PluginResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/cordova/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/PluginResult$Status;

    new-instance v0, Lorg/apache/cordova/PluginResult$Status;

    const-string v1, "JSON_EXCEPTION"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/apache/cordova/PluginResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/cordova/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    new-instance v0, Lorg/apache/cordova/PluginResult$Status;

    const-string v1, "ERROR"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/apache/cordova/PluginResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    const/16 v1, 0xa

    new-array v1, v1, [Lorg/apache/cordova/PluginResult$Status;

    sget-object v12, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    aput-object v12, v1, v2

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->CLASS_NOT_FOUND_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->ILLEGAL_ACCESS_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->INSTANTIATION_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->MALFORMED_URL_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/PluginResult$Status;

    aput-object v2, v1, v9

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lorg/apache/cordova/PluginResult$Status;->$VALUES:[Lorg/apache/cordova/PluginResult$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/cordova/PluginResult$Status;
    .locals 1

    const-class v0, Lorg/apache/cordova/PluginResult$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/cordova/PluginResult$Status;

    return-object p0
.end method

.method public static values()[Lorg/apache/cordova/PluginResult$Status;
    .locals 1

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->$VALUES:[Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v0}, [Lorg/apache/cordova/PluginResult$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/cordova/PluginResult$Status;

    return-object v0
.end method
