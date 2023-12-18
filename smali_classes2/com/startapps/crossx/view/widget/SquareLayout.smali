.class public Lcom/startapps/crossx/view/widget/SquareLayout;
.super Landroid/widget/LinearLayout;
.source "SquareLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/widget/SquareLayout$OnKeyboardShowHide;
    }
.end annotation


# static fields
.field private static _keyboardHandler:Landroid/os/Handler;


# instance fields
.field private _keyboardCallback:Lcom/startapps/crossx/view/widget/SquareLayout$OnKeyboardShowHide;

.field private _keyboardCallbackParam:Ljava/lang/Object;

.field private _keyboardResultReceiver:Landroid/os/ResultReceiver;

.field private _keyboardVisible:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$fget_keyboardCallback(Lcom/startapps/crossx/view/widget/SquareLayout;)Lcom/startapps/crossx/view/widget/SquareLayout$OnKeyboardShowHide;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/widget/SquareLayout;->_keyboardCallback:Lcom/startapps/crossx/view/widget/SquareLayout$OnKeyboardShowHide;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_keyboardCallbackParam(Lcom/startapps/crossx/view/widget/SquareLayout;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/widget/SquareLayout;->_keyboardCallbackParam:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_keyboardVisible(Lcom/startapps/crossx/view/widget/SquareLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/startapps/crossx/view/widget/SquareLayout;->_keyboardVisible:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/startapps/crossx/view/widget/SquareLayout;->_keyboardHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/startapps/crossx/view/widget/SquareLayout;->_keyboardVisible:Z

    .line 90
    new-instance v0, Lcom/startapps/crossx/view/widget/SquareLayout$1;

    sget-object v1, Lcom/startapps/crossx/view/widget/SquareLayout;->_keyboardHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/startapps/crossx/view/widget/SquareLayout$1;-><init>(Lcom/startapps/crossx/view/widget/SquareLayout;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/widget/SquareLayout;->_keyboardResultReceiver:Landroid/os/ResultReceiver;

    .line 36
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/SquareLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p0, Lcom/startapps/crossx/view/widget/SquareLayout;->_keyboardVisible:Z

    .line 90
    new-instance p2, Lcom/startapps/crossx/view/widget/SquareLayout$1;

    sget-object v0, Lcom/startapps/crossx/view/widget/SquareLayout;->_keyboardHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, v0}, Lcom/startapps/crossx/view/widget/SquareLayout$1;-><init>(Lcom/startapps/crossx/view/widget/SquareLayout;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/startapps/crossx/view/widget/SquareLayout;->_keyboardResultReceiver:Landroid/os/ResultReceiver;

    .line 41
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/SquareLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p0, Lcom/startapps/crossx/view/widget/SquareLayout;->_keyboardVisible:Z

    .line 90
    new-instance p2, Lcom/startapps/crossx/view/widget/SquareLayout$1;

    sget-object p3, Lcom/startapps/crossx/view/widget/SquareLayout;->_keyboardHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, p3}, Lcom/startapps/crossx/view/widget/SquareLayout$1;-><init>(Lcom/startapps/crossx/view/widget/SquareLayout;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/startapps/crossx/view/widget/SquareLayout;->_keyboardResultReceiver:Landroid/os/ResultReceiver;

    .line 47
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/SquareLayout;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public start(Ljava/lang/Object;Lcom/startapps/crossx/view/widget/SquareLayout$OnKeyboardShowHide;)V
    .locals 2

    .line 73
    iput-object p2, p0, Lcom/startapps/crossx/view/widget/SquareLayout;->_keyboardCallback:Lcom/startapps/crossx/view/widget/SquareLayout$OnKeyboardShowHide;

    .line 74
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/SquareLayout;->_keyboardCallbackParam:Ljava/lang/Object;

    .line 79
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/SquareLayout;->mContext:Landroid/content/Context;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/widget/SquareLayout;->_keyboardResultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 81
    iget-object p2, p0, Lcom/startapps/crossx/view/widget/SquareLayout;->_keyboardResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p1, p0, v1, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    return-void
.end method
