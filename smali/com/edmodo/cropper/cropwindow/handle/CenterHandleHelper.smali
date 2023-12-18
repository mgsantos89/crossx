.class Lcom/edmodo/cropper/cropwindow/handle/CenterHandleHelper;
.super Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;
.source "CenterHandleHelper.java"


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, v0}, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    return-void
.end method


# virtual methods
.method updateCropWindow(FFFLandroid/graphics/Rect;F)V
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/edmodo/cropper/cropwindow/handle/CenterHandleHelper;->updateCropWindow(FFLandroid/graphics/Rect;F)V

    return-void
.end method

.method updateCropWindow(FFLandroid/graphics/Rect;F)V
    .locals 4

    .line 39
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    .line 40
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 41
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    .line 42
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    sub-float/2addr p1, v0

    sub-float/2addr p2, v1

    .line 51
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0, p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 52
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0, p2}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 53
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0, p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 54
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p2}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 57
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p3, p4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    move-result p1

    .line 59
    sget-object p2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p2, p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    goto :goto_0

    .line 60
    :cond_0
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p3, p4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    move-result p1

    .line 62
    sget-object p2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p2, p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 66
    :cond_1
    :goto_0
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p3, p4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 67
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    move-result p1

    .line 68
    sget-object p2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p2, p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    goto :goto_1

    .line 69
    :cond_2
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p3, p4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 70
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, p3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    move-result p1

    .line 71
    sget-object p2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p2, p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    :cond_3
    :goto_1
    return-void
.end method
