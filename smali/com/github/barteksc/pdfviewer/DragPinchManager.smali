.class Lcom/github/barteksc/pdfviewer/DragPinchManager;
.super Ljava/lang/Object;
.source "DragPinchManager.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private isSwipeEnabled:Z

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private scaling:Z

.field private scrolling:Z

.field private swipeVertical:Z


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/AnimationManager;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scrolling:Z

    .line 47
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaling:Z

    .line 50
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 51
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    .line 52
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->isSwipeEnabled:Z

    .line 53
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->swipeVertical:Z

    .line 54
    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->gestureDetector:Landroid/view/GestureDetector;

    .line 55
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 56
    invoke-virtual {p1, p0}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private hideHandle()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->shown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->hideDelayed()V

    :cond_0
    return-void
.end method

.method private isPageChange(F)Z
    .locals 2

    .line 72
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->swipeVertical:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method public enableDoubletap(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :goto_0
    return-void
.end method

.method public isZooming()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isZooming()Z

    move-result v0

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getMidZoom()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getMidZoom()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomWithAnimation(FFF)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getMaxZoom()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getMaxZoom()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomWithAnimation(FFF)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->resetZoomWithAnimation()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopFling()V

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 157
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result p1

    float-to-int v1, p1

    .line 158
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result p1

    float-to-int v2, p1

    .line 161
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result p1

    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    neg-float p1, p1

    .line 163
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateDocLength()F

    move-result p2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateDocLength()F

    move-result p1

    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    neg-float p1, p1

    .line 166
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result p2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    sub-float/2addr p2, v0

    neg-float p2, p2

    .line 169
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    float-to-int v3, p3

    float-to-int v4, p4

    float-to-int v5, p1

    const/4 v6, 0x0

    float-to-int v7, p2

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startFlingAnimation(IIIIIIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .line 177
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v1

    mul-float/2addr v1, v0

    .line 179
    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MINIMUM_ZOOM:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 180
    sget v0, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MINIMUM_ZOOM:F

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v1

    :goto_0
    div-float/2addr v0, v1

    goto :goto_1

    .line 181
    :cond_0
    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MAXIMUM_ZOOM:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 182
    sget v0, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MAXIMUM_ZOOM:F

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v1

    goto :goto_0

    .line 184
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-direct {v2, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomCenteredRelativeTo(FLandroid/graphics/PointF;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    .line 190
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaling:Z

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 196
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    .line 197
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->hideHandle()V

    const/4 p1, 0x0

    .line 198
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaling:Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scrolling:Z

    .line 136
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->isZooming()Z

    move-result p2

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->isSwipeEnabled:Z

    if-eqz p2, :cond_1

    .line 137
    :cond_0
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    neg-float p3, p3

    neg-float p4, p4

    invoke-virtual {p2, p3, p4}, Lcom/github/barteksc/pdfviewer/PDFView;->moveRelativeTo(FF)V

    .line 139
    :cond_1
    iget-boolean p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaling:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/PDFView;->doRenderDuringScale()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 140
    :cond_2
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPageByOffset()V

    :cond_3
    return p1
.end method

.method public onScrollEnd(Landroid/view/MotionEvent;)V
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    .line 147
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->hideHandle()V

    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOnTapListener()Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p1}, Lcom/github/barteksc/pdfviewer/listener/OnTapListener;->onTap(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 88
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->documentFitsView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    invoke-interface {p1}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->shown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-interface {p1}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->show()V

    goto :goto_0

    .line 92
    :cond_1
    invoke-interface {p1}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->hide()V

    .line 96
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->performClick()Z

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 203
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 204
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    .line 206
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 207
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scrolling:Z

    if-eqz v0, :cond_2

    .line 208
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scrolling:Z

    .line 209
    invoke-virtual {p0, p2}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->onScrollEnd(Landroid/view/MotionEvent;)V

    :cond_2
    return p1
.end method

.method public setSwipeEnabled(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->isSwipeEnabled:Z

    return-void
.end method

.method public setSwipeVertical(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->swipeVertical:Z

    return-void
.end method
