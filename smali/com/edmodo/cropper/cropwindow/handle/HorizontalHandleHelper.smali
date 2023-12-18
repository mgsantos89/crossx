.class Lcom/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;
.super Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;
.source "HorizontalHandleHelper.java"


# instance fields
.field private mEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;


# direct methods
.method constructor <init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    .line 35
    iput-object p1, p0, Lcom/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;->mEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    return-void
.end method


# virtual methods
.method updateCropWindow(FFFLandroid/graphics/Rect;F)V
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;->mEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    move v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(FFLandroid/graphics/Rect;FF)V

    .line 50
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    .line 51
    sget-object p2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p2}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    .line 52
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    .line 53
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 56
    invoke-static {p2, v1, p3}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateWidth(FFF)F

    move-result p2

    sub-float v1, v0, p1

    sub-float/2addr p2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    sub-float/2addr p1, p2

    add-float/2addr v0, p2

    .line 66
    sget-object p2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p2, p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 67
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 70
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p4, p5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;->mEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sget-object p2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p2, p4, p3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isNewRectangleOutOfBounds(Lcom/edmodo/cropper/cropwindow/edge/Edge;Landroid/graphics/Rect;F)Z

    move-result p1

    if-nez p1, :cond_0

    .line 73
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    move-result p1

    .line 74
    sget-object p2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    neg-float p1, p1

    invoke-virtual {p2, p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 75
    iget-object p1, p0, Lcom/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;->mEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(F)V

    .line 78
    :cond_0
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p4, p5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;->mEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sget-object p2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p2, p4, p3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isNewRectangleOutOfBounds(Lcom/edmodo/cropper/cropwindow/edge/Edge;Landroid/graphics/Rect;F)Z

    move-result p1

    if-nez p1, :cond_1

    .line 81
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    move-result p1

    .line 82
    sget-object p2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    neg-float p1, p1

    invoke-virtual {p2, p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 83
    iget-object p1, p0, Lcom/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;->mEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(F)V

    :cond_1
    return-void
.end method
