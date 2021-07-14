.class Lorg/apache/cordova/statusbar/StatusBar$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/statusbar/StatusBar;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/statusbar/StatusBar;

.field final synthetic val$cordova:Lorg/apache/cordova/CordovaInterface;


# direct methods
.method constructor <init>(Lorg/apache/cordova/statusbar/StatusBar;Lorg/apache/cordova/CordovaInterface;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    iput-object p2, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    invoke-static {v0}, Lorg/apache/cordova/statusbar/StatusBar;->access$000(Lorg/apache/cordova/statusbar/StatusBar;)Lorg/apache/cordova/CordovaPreferences;

    move-result-object v1

    const-string v2, "StatusBarBackgroundColor"

    const-string v3, "#000000"

    invoke-virtual {v1, v2, v3}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/statusbar/StatusBar;->access$100(Lorg/apache/cordova/statusbar/StatusBar;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    invoke-static {v0}, Lorg/apache/cordova/statusbar/StatusBar;->access$200(Lorg/apache/cordova/statusbar/StatusBar;)Lorg/apache/cordova/CordovaPreferences;

    move-result-object v1

    const-string v2, "StatusBarStyle"

    const-string v3, "lightcontent"

    invoke-virtual {v1, v2, v3}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/statusbar/StatusBar;->access$300(Lorg/apache/cordova/statusbar/StatusBar;Ljava/lang/String;)V

    return-void
.end method
