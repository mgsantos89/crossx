.class Lcom/startapps/crossx/view/TouchImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/startapps/crossx/view/TouchImageView;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$ScaleListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/startapps/crossx/view/TouchImageView;Lcom/startapps/crossx/view/TouchImageView$ScaleListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/TouchImageView$ScaleListener;-><init>(Lcom/startapps/crossx/view/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .line 886
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$ScaleListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$mscaleImage(Lcom/startapps/crossx/view/TouchImageView;DFFZ)V

    .line 891
    iget-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$ScaleListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgettouchImageViewListener(Lcom/startapps/crossx/view/TouchImageView;)Lcom/startapps/crossx/view/TouchImageView$OnTouchImageViewListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 892
    iget-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$ScaleListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgettouchImageViewListener(Lcom/startapps/crossx/view/TouchImageView;)Lcom/startapps/crossx/view/TouchImageView$OnTouchImageViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/view/TouchImageView$OnTouchImageViewListener;->onMove()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 880
    iget-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$ScaleListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    sget-object v0, Lcom/startapps/crossx/view/TouchImageView$State;->ZOOM:Lcom/startapps/crossx/view/TouchImageView$State;

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$msetState(Lcom/startapps/crossx/view/TouchImageView;Lcom/startapps/crossx/view/TouchImageView$State;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 8

    .line 899
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 900
    iget-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$ScaleListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    sget-object v0, Lcom/startapps/crossx/view/TouchImageView$State;->NONE:Lcom/startapps/crossx/view/TouchImageView$State;

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$msetState(Lcom/startapps/crossx/view/TouchImageView;Lcom/startapps/crossx/view/TouchImageView$State;)V

    .line 902
    iget-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$ScaleListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetnormalizedScale(Lcom/startapps/crossx/view/TouchImageView;)F

    move-result p1

    .line 903
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$ScaleListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetnormalizedScale(Lcom/startapps/crossx/view/TouchImageView;)F

    move-result v0

    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView$ScaleListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetmaxScale(Lcom/startapps/crossx/view/TouchImageView;)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 904
    iget-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$ScaleListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetmaxScale(Lcom/startapps/crossx/view/TouchImageView;)F

    move-result p1

    goto :goto_0

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$ScaleListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetnormalizedScale(Lcom/startapps/crossx/view/TouchImageView;)F

    move-result v0

    iget-object v2, p0, Lcom/startapps/crossx/view/TouchImageView$ScaleListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v2}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetminScale(Lcom/startapps/crossx/view/TouchImageView;)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 908
    iget-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$ScaleListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetminScale(Lcom/startapps/crossx/view/TouchImageView;)F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v4, p1

    if-eqz v1, :cond_2

    .line 913
    new-instance p1, Lcom/startapps/crossx/view/TouchImageView$DoubleTapZoom;

    iget-object v3, p0, Lcom/startapps/crossx/view/TouchImageView$ScaleListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v3}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetviewWidth(Lcom/startapps/crossx/view/TouchImageView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$ScaleListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetviewHeight(Lcom/startapps/crossx/view/TouchImageView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    const/4 v7, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/startapps/crossx/view/TouchImageView$DoubleTapZoom;-><init>(Lcom/startapps/crossx/view/TouchImageView;FFFZ)V

    .line 914
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$ScaleListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0, p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$mcompatPostOnAnimation(Lcom/startapps/crossx/view/TouchImageView;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
