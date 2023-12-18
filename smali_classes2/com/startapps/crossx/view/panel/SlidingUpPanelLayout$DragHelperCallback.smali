.class Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;
.super Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;


# direct methods
.method private constructor <init>(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)V
    .locals 0

    .line 1364
    iput-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-direct {p0}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;-><init>(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1

    .line 1456
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$mcomputePanelTopPosition(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;F)I

    move-result p1

    .line 1457
    iget-object p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$mcomputePanelTopPosition(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;F)I

    move-result p3

    .line 1458
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmIsSlidingUp(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1459
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 1461
    :cond_0
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 0

    .line 1451
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideRange(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)I

    move-result p1

    return p1
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0

    .line 1406
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->setAllChildrenVisible()V

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    .line 1377
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmDragHelper(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Lcom/startapps/crossx/view/panel/ViewDragHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->getViewDragState()I

    move-result p1

    if-nez p1, :cond_3

    .line 1378
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideableView(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$mcomputeSlideOffset(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;I)F

    move-result v0

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fputmSlideOffset(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;F)V

    .line 1379
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$mapplyParallaxForCurrentSlideOffset(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)V

    .line 1381
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideOffset(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 1382
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideState(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    move-result-object p1

    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    if-eq p1, v0, :cond_3

    .line 1383
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 1384
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fputmSlideState(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;)V

    .line 1385
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideableView(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->dispatchOnPanelExpanded(Landroid/view/View;)V

    goto :goto_0

    .line 1387
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideOffset(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 1388
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideState(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    move-result-object p1

    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    if-eq p1, v0, :cond_3

    .line 1389
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fputmSlideState(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;)V

    .line 1390
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideableView(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->dispatchOnPanelCollapsed(Landroid/view/View;)V

    goto :goto_0

    .line 1392
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideOffset(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 1393
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fputmSlideState(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;)V

    .line 1394
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideableView(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1395
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideableView(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->dispatchOnPanelHidden(Landroid/view/View;)V

    goto :goto_0

    .line 1396
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideState(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    move-result-object p1

    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    if-eq p1, v0, :cond_3

    .line 1397
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 1398
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fputmSlideState(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;)V

    .line 1399
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideableView(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->dispatchOnPanelAnchored(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .line 1411
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p1, p3}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$monPanelDragged(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;I)V

    .line 1412
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->invalidate()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 3

    .line 1420
    iget-object p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmIsSlidingUp(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Z

    move-result p2

    if-eqz p2, :cond_0

    neg-float p3, p3

    :cond_0
    const/4 p2, 0x0

    cmpl-float v0, p3, p2

    if-lez v0, :cond_1

    .line 1422
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideOffset(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F

    move-result v1

    iget-object v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmAnchorPoint(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 1424
    iget-object p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmAnchorPoint(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F

    move-result p3

    invoke-static {p2, p3}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$mcomputePanelTopPosition(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;F)I

    move-result p2

    goto/16 :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_2

    .line 1425
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideOffset(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F

    move-result v0

    iget-object v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmAnchorPoint(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 1427
    iget-object p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p2, v1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$mcomputePanelTopPosition(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;F)I

    move-result p2

    goto/16 :goto_0

    :cond_2
    cmpg-float p3, p3, p2

    if-gez p3, :cond_3

    .line 1428
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideOffset(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F

    move-result v0

    iget-object v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmAnchorPoint(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    .line 1430
    iget-object p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmAnchorPoint(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F

    move-result p3

    invoke-static {p2, p3}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$mcomputePanelTopPosition(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;F)I

    move-result p2

    goto :goto_0

    :cond_3
    if-gez p3, :cond_4

    .line 1431
    iget-object p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p3}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideOffset(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F

    move-result p3

    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmAnchorPoint(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F

    move-result v0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_4

    .line 1433
    iget-object p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p3, p2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$mcomputePanelTopPosition(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;F)I

    move-result p2

    goto :goto_0

    .line 1434
    :cond_4
    iget-object p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p3}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideOffset(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F

    move-result p3

    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmAnchorPoint(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F

    move-result v0

    add-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_5

    .line 1436
    iget-object p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p2, v1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$mcomputePanelTopPosition(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;F)I

    move-result p2

    goto :goto_0

    .line 1437
    :cond_5
    iget-object p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p3}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideOffset(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F

    move-result p3

    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmAnchorPoint(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F

    move-result v0

    div-float/2addr v0, v2

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_6

    .line 1439
    iget-object p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmAnchorPoint(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F

    move-result p3

    invoke-static {p2, p3}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$mcomputePanelTopPosition(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;F)I

    move-result p2

    goto :goto_0

    .line 1442
    :cond_6
    iget-object p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p3, p2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$mcomputePanelTopPosition(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;F)I

    move-result p2

    .line 1445
    :goto_0
    iget-object p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p3}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmDragHelper(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Lcom/startapps/crossx/view/panel/ViewDragHelper;

    move-result-object p3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p3, p1, p2}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 1446
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1

    .line 1368
    iget-object p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmIsUnableToDrag(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    .line 1372
    :cond_0
    iget-object p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideableView(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
