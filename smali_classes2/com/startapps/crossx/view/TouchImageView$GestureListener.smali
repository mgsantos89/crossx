.class Lcom/startapps/crossx/view/TouchImageView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/startapps/crossx/view/TouchImageView;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/startapps/crossx/view/TouchImageView;Lcom/startapps/crossx/view/TouchImageView$GestureListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/TouchImageView$GestureListener;-><init>(Lcom/startapps/crossx/view/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 777
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetdoubleTapListener(Lcom/startapps/crossx/view/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetdoubleTapListener(Lcom/startapps/crossx/view/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 780
    :goto_0
    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetstate(Lcom/startapps/crossx/view/TouchImageView;)Lcom/startapps/crossx/view/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/startapps/crossx/view/TouchImageView$State;->NONE:Lcom/startapps/crossx/view/TouchImageView$State;

    if-ne v1, v2, :cond_2

    .line 781
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetnormalizedScale(Lcom/startapps/crossx/view/TouchImageView;)F

    move-result v0

    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetminScale(Lcom/startapps/crossx/view/TouchImageView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetmaxScale(Lcom/startapps/crossx/view/TouchImageView;)F

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetminScale(Lcom/startapps/crossx/view/TouchImageView;)F

    move-result v0

    :goto_1
    move v3, v0

    .line 782
    new-instance v0, Lcom/startapps/crossx/view/TouchImageView$DoubleTapZoom;

    iget-object v2, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/startapps/crossx/view/TouchImageView$DoubleTapZoom;-><init>(Lcom/startapps/crossx/view/TouchImageView;FFFZ)V

    .line 783
    iget-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$mcompatPostOnAnimation(Lcom/startapps/crossx/view/TouchImageView;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetdoubleTapListener(Lcom/startapps/crossx/view/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetdoubleTapListener(Lcom/startapps/crossx/view/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 762
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetfling(Lcom/startapps/crossx/view/TouchImageView;)Lcom/startapps/crossx/view/TouchImageView$Fling;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetfling(Lcom/startapps/crossx/view/TouchImageView;)Lcom/startapps/crossx/view/TouchImageView$Fling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/view/TouchImageView$Fling;->cancelFling()V

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    new-instance v1, Lcom/startapps/crossx/view/TouchImageView$Fling;

    iget-object v2, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    float-to-int v3, p3

    float-to-int v4, p4

    invoke-direct {v1, v2, v3, v4}, Lcom/startapps/crossx/view/TouchImageView$Fling;-><init>(Lcom/startapps/crossx/view/TouchImageView;II)V

    invoke-static {v0, v1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fputfling(Lcom/startapps/crossx/view/TouchImageView;Lcom/startapps/crossx/view/TouchImageView$Fling;)V

    .line 770
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetfling(Lcom/startapps/crossx/view/TouchImageView;)Lcom/startapps/crossx/view/TouchImageView$Fling;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$mcompatPostOnAnimation(Lcom/startapps/crossx/view/TouchImageView;Ljava/lang/Runnable;)V

    .line 771
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 756
    iget-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/TouchImageView;->performLongClick()Z

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetdoubleTapListener(Lcom/startapps/crossx/view/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetdoubleTapListener(Lcom/startapps/crossx/view/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 750
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$GestureListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/TouchImageView;->performClick()Z

    move-result p1

    return p1
.end method
