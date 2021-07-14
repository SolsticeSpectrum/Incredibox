.class Lorg/apache/cordova/statusbar/StatusBar$8;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/statusbar/StatusBar;->execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/statusbar/StatusBar;


# direct methods
.method constructor <init>(Lorg/apache/cordova/statusbar/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/cordova/statusbar/StatusBar$8;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/apache/cordova/statusbar/StatusBar$8;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    const-string v1, "blacktranslucent"

    invoke-static {v0, v1}, Lorg/apache/cordova/statusbar/StatusBar;->access$300(Lorg/apache/cordova/statusbar/StatusBar;Ljava/lang/String;)V

    return-void
.end method
