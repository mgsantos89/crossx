.class Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;
.super Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;
.source "CornerHandleHelper.java"


# direct methods
.method constructor <init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;Lcom/edmodo/cropper/cropwindow/edge/Edge;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    return-void
.end method


# virtual methods
.method updateCropWindow(FFFLandroid/graphics/Rect;F)V
    .locals 8

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;->getActiveEdges(FFF)Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    move-result-object v0

    .line 43
    iget-object v7, v0, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;->primary:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 44
    iget-object v0, v0, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;->secondary:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    move-object v1, v7

    move v2, p1

    move v3, p2

    move-object v4, p4

    move v5, p5

    move v6, p3

    .line 46
    invoke-virtual/range {v1 .. v6}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(FFLandroid/graphics/Rect;FF)V

    .line 47
    invoke-virtual {v0, p3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(F)V

    .line 49
    invoke-virtual {v0, p4, p5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {v0, p4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    .line 51
    invoke-virtual {v7, p3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(F)V

    :cond_0
    return-void
.end method
