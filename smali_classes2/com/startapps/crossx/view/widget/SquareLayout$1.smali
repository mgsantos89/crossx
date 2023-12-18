.class Lcom/startapps/crossx/view/widget/SquareLayout$1;
.super Landroid/os/ResultReceiver;
.source "SquareLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/widget/SquareLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/widget/SquareLayout;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/widget/SquareLayout;Landroid/os/Handler;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/SquareLayout$1;->this$0:Lcom/startapps/crossx/view/widget/SquareLayout;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/SquareLayout$1;->this$0:Lcom/startapps/crossx/view/widget/SquareLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/startapps/crossx/view/widget/SquareLayout;->-$$Nest$fput_keyboardVisible(Lcom/startapps/crossx/view/widget/SquareLayout;Z)V

    .line 110
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/SquareLayout$1;->this$0:Lcom/startapps/crossx/view/widget/SquareLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/widget/SquareLayout;->-$$Nest$fget_keyboardCallback(Lcom/startapps/crossx/view/widget/SquareLayout;)Lcom/startapps/crossx/view/widget/SquareLayout$OnKeyboardShowHide;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/view/widget/SquareLayout$1;->this$0:Lcom/startapps/crossx/view/widget/SquareLayout;

    invoke-static {p2}, Lcom/startapps/crossx/view/widget/SquareLayout;->-$$Nest$fget_keyboardCallbackParam(Lcom/startapps/crossx/view/widget/SquareLayout;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/startapps/crossx/view/widget/SquareLayout$OnKeyboardShowHide;->onHideKeyboard(Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/SquareLayout$1;->this$0:Lcom/startapps/crossx/view/widget/SquareLayout;

    invoke-static {p1, p2}, Lcom/startapps/crossx/view/widget/SquareLayout;->-$$Nest$fput_keyboardVisible(Lcom/startapps/crossx/view/widget/SquareLayout;Z)V

    .line 102
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/SquareLayout$1;->this$0:Lcom/startapps/crossx/view/widget/SquareLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/widget/SquareLayout;->-$$Nest$fget_keyboardCallback(Lcom/startapps/crossx/view/widget/SquareLayout;)Lcom/startapps/crossx/view/widget/SquareLayout$OnKeyboardShowHide;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/view/widget/SquareLayout$1;->this$0:Lcom/startapps/crossx/view/widget/SquareLayout;

    invoke-static {p2}, Lcom/startapps/crossx/view/widget/SquareLayout;->-$$Nest$fget_keyboardCallbackParam(Lcom/startapps/crossx/view/widget/SquareLayout;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/startapps/crossx/view/widget/SquareLayout$OnKeyboardShowHide;->onShowKeyboard(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
