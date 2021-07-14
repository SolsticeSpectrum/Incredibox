.class Lio/ionic/keyboard/IonicKeyboard$3$1;
.super Ljava/lang/Object;
.source "IonicKeyboard.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ionic/keyboard/IonicKeyboard$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field previousHeightDiff:I

.field final synthetic this$1:Lio/ionic/keyboard/IonicKeyboard$3;

.field final synthetic val$density:F

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/ionic/keyboard/IonicKeyboard$3;Landroid/view/View;F)V
    .locals 0

    iput-object p1, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->this$1:Lio/ionic/keyboard/IonicKeyboard$3;

    iput-object p2, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->val$rootView:Landroid/view/View;

    iput p3, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->val$density:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->previousHeightDiff:I

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->val$rootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->val$rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    iget-object v1, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->this$1:Lio/ionic/keyboard/IonicKeyboard$3;

    iget-object v1, v1, Lio/ionic/keyboard/IonicKeyboard$3;->this$0:Lio/ionic/keyboard/IonicKeyboard;

    iget-object v1, v1, Lio/ionic/keyboard/IonicKeyboard;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v2, Landroid/graphics/Point;->y:I

    :cond_0
    sub-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->val$density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    iget v3, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->previousHeightDiff:I

    if-eq v0, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v3, v4, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object v1, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->this$1:Lio/ionic/keyboard/IonicKeyboard$3;

    iget-object v1, v1, Lio/ionic/keyboard/IonicKeyboard$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v3}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    :cond_1
    iget v3, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->previousHeightDiff:I

    if-eq v0, v3, :cond_2

    sub-int/2addr v3, v0

    if-le v3, v2, :cond_2

    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const-string v4, "H"

    invoke-direct {v2, v3, v4}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    iget-object v1, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->this$1:Lio/ionic/keyboard/IonicKeyboard$3;

    iget-object v1, v1, Lio/ionic/keyboard/IonicKeyboard$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :cond_2
    :goto_0
    iput v0, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->previousHeightDiff:I

    return-void
.end method
