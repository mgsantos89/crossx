.class Lcom/github/barteksc/pdfviewer/PagesLoader;
.super Ljava/lang/Object;
.source "PagesLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;
    }
.end annotation


# instance fields
.field private cacheOrder:I

.field private colWidth:F

.field private colsRows:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pageRelativePartHeight:F

.field private pageRelativePartWidth:F

.field private partRenderHeight:F

.field private partRenderWidth:F

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private rowHeight:F

.field private scaledHeight:F

.field private scaledSpacingPx:F

.field private scaledWidth:F

.field private thumbnailHeight:I

.field private final thumbnailRect:Landroid/graphics/RectF;

.field private thumbnailWidth:I

.field private xOffset:F

.field private yOffset:F


# direct methods
.method constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailRect:Landroid/graphics/RectF;

    .line 42
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    return-void
.end method

.method private documentPage(I)I
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOriginalUserPages()[I

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOriginalUserPages()[I

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOriginalUserPages()[I

    move-result-object v0

    aget v0, v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v0, p1

    :goto_1
    if-ltz v0, :cond_4

    .line 65
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getDocumentPageCount()I

    move-result v2

    if-lt p1, v2, :cond_3

    goto :goto_2

    :cond_3
    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method private getPageAndCoordsByOffset(FZ)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;
    .locals 3

    .line 78
    new-instance v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;-><init>(Lcom/github/barteksc/pdfviewer/PagesLoader;Lcom/github/barteksc/pdfviewer/PagesLoader$1;)V

    const/4 v1, 0x0

    .line 79
    invoke-static {p1, v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(FF)F

    move-result p1

    neg-float p1, p1

    .line 82
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledHeight:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledSpacingPx:F

    add-float/2addr v1, v2

    div-float v1, p1, v1

    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v1

    iput v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    .line 84
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledHeight:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledSpacingPx:F

    add-float/2addr v1, v2

    iget v2, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    div-float/2addr p1, v1

    .line 85
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->xOffset:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    div-float/2addr v1, v2

    goto :goto_0

    .line 87
    :cond_0
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledWidth:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledSpacingPx:F

    add-float/2addr v1, v2

    div-float v1, p1, v1

    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v1

    iput v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    .line 88
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledWidth:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledSpacingPx:F

    add-float/2addr v1, v2

    iget v2, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    div-float v1, p1, v1

    .line 89
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->yOffset:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    div-float/2addr p1, v2

    :goto_0
    if-eqz p2, :cond_1

    .line 93
    invoke-static {p1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->ceil(F)I

    move-result p1

    iput p1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    .line 94
    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->ceil(F)I

    move-result p1

    iput p1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    goto :goto_1

    .line 96
    :cond_1
    invoke-static {p1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result p1

    iput p1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    .line 97
    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result p1

    iput p1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    :goto_1
    return-object v0
.end method

.method private getPageColsRows()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 47
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    move-result v2

    div-float v2, v1, v2

    .line 48
    sget v3, Lcom/github/barteksc/pdfviewer/util/Constants;->PART_SIZE:F

    mul-float/2addr v3, v2

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v2

    div-float/2addr v3, v2

    .line 49
    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants;->PART_SIZE:F

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v0

    div-float/2addr v2, v0

    div-float v0, v1, v3

    .line 50
    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->ceil(F)I

    move-result v0

    div-float/2addr v1, v2

    .line 51
    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->ceil(F)I

    move-result v1

    .line 52
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private loadCell(IIIIFF)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    int-to-float v1, v1

    mul-float v1, v1, p5

    move/from16 v2, p3

    int-to-float v2, v2

    mul-float v2, v2, p6

    .line 222
    iget v3, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderWidth:F

    .line 223
    iget v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderHeight:F

    add-float v5, v1, p5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    sub-float v5, v6, v1

    goto :goto_0

    :cond_0
    move/from16 v5, p5

    :goto_0
    add-float v7, v2, p6

    cmpl-float v7, v7, v6

    if-lez v7, :cond_1

    sub-float/2addr v6, v2

    goto :goto_1

    :cond_1
    move/from16 v6, p6

    :goto_1
    mul-float/2addr v3, v5

    mul-float/2addr v4, v6

    .line 232
    new-instance v14, Landroid/graphics/RectF;

    add-float/2addr v5, v1

    add-float/2addr v6, v2

    invoke-direct {v14, v1, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    cmpl-float v2, v3, v1

    if-lez v2, :cond_3

    cmpl-float v1, v4, v1

    if-lez v1, :cond_3

    .line 235
    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v7, v1, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    iget v13, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    move/from16 v8, p1

    move/from16 v9, p2

    move v10, v3

    move v11, v4

    move-object v12, v14

    invoke-virtual/range {v7 .. v13}, Lcom/github/barteksc/pdfviewer/CacheManager;->upPartIfContained(IIFFLandroid/graphics/RectF;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 236
    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v7, v1, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    const/4 v13, 0x0

    iget v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 238
    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->isBestQuality()Z

    move-result v15

    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->isAnnotationRendering()Z

    move-result v16

    move/from16 v8, p1

    move/from16 v9, p2

    move v10, v3

    move v11, v4

    move-object v12, v14

    move v14, v1

    .line 236
    invoke-virtual/range {v7 .. v16}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->addRenderingTask(IIFFLandroid/graphics/RectF;ZIZZ)V

    .line 241
    :cond_2
    iget v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    return v2

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private loadRelative(IIZ)I
    .locals 10

    .line 118
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    .line 120
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result p1

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p3}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result p3

    goto :goto_0

    .line 122
    :cond_0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    .line 123
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result p1

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p3}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result p3

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    int-to-float p3, p3

    sub-float/2addr p1, p3

    sub-float/2addr p1, v0

    .line 126
    invoke-direct {p0, p1, v1}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(FZ)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object p1

    .line 127
    iget p3, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    invoke-direct {p0, p3}, Lcom/github/barteksc/pdfviewer/PagesLoader;->documentPage(I)I

    move-result p3

    if-gez p3, :cond_2

    return v1

    .line 131
    :cond_2
    iget v0, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    invoke-direct {p0, v0, p3}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadThumbnail(II)V

    .line 133
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->xOffset:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    div-float/2addr v0, v2

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 135
    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->min(II)I

    move-result v0

    .line 136
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->xOffset:F

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->ceil(F)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 137
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(II)I

    move-result v9

    :goto_1
    if-gt v0, v9, :cond_8

    .line 139
    iget v3, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    iget v5, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    iget v7, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartWidth:F

    iget v8, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartHeight:F

    move-object v2, p0

    move v4, p3

    move v6, v0

    invoke-direct/range {v2 .. v8}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadCell(IIIIFF)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    if-lt v1, p2, :cond_4

    return v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    :cond_5
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->yOffset:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    div-float/2addr v0, v2

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 148
    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->min(II)I

    move-result v0

    .line 149
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->yOffset:F

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->ceil(F)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 150
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(II)I

    move-result v9

    :goto_2
    if-gt v0, v9, :cond_8

    .line 152
    iget v3, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    iget v6, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    iget v7, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartWidth:F

    iget v8, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartHeight:F

    move-object v2, p0

    move v4, p3

    move v5, v0

    invoke-direct/range {v2 .. v8}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadCell(IIIIFF)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    if-lt v1, p2, :cond_7

    return v1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    return v1
.end method

.method private loadThumbnail(II)V
    .locals 11

    .line 103
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailRect:Landroid/graphics/RectF;

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/github/barteksc/pdfviewer/CacheManager;->containsThumbnail(IIFFLandroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailRect:Landroid/graphics/RectF;

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 107
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isBestQuality()Z

    move-result v9

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isAnnotationRendering()Z

    move-result v10

    move v2, p1

    move v3, p2

    .line 105
    invoke-virtual/range {v1 .. v10}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->addRenderingTask(IIFFLandroid/graphics/RectF;ZIZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public loadPages()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledHeight:F

    .line 249
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledWidth:F

    .line 250
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    move-result v0

    sget v1, Lcom/github/barteksc/pdfviewer/util/Constants;->THUMBNAIL_RATIO:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailWidth:I

    .line 251
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    move-result v0

    sget v1, Lcom/github/barteksc/pdfviewer/util/Constants;->THUMBNAIL_RATIO:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailHeight:I

    .line 252
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageColsRows()Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    .line 253
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(FF)F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->xOffset:F

    .line 254
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v0

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(FF)F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->yOffset:F

    .line 255
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledHeight:F

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    .line 256
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledWidth:F

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    .line 257
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartWidth:F

    .line 258
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartHeight:F

    .line 259
    sget v0, Lcom/github/barteksc/pdfviewer/util/Constants;->PART_SIZE:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartWidth:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderWidth:F

    .line 260
    sget v0, Lcom/github/barteksc/pdfviewer/util/Constants;->PART_SIZE:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartHeight:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderHeight:F

    const/4 v0, 0x1

    .line 261
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    .line 262
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getSpacingPx()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v1

    iput v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledSpacingPx:F

    .line 263
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledSpacingPx:F

    .line 264
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadVisible()I

    move-result v1

    .line 265
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollDir()Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    move-result-object v2

    sget-object v3, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->END:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    invoke-virtual {v2, v3}, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 266
    :goto_0
    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants;->PRELOAD_COUNT:I

    if-ge v3, v2, :cond_1

    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-ge v1, v2, :cond_1

    .line 267
    invoke-direct {p0, v3, v1, v0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadRelative(IIZ)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 270
    :goto_1
    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants;->PRELOAD_COUNT:I

    neg-int v2, v2

    if-le v0, v2, :cond_1

    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-ge v1, v2, :cond_1

    .line 271
    invoke-direct {p0, v0, v1, v3}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadRelative(IIZ)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public loadVisible()I
    .locals 7

    .line 167
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(FZ)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object v0

    .line 169
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v4

    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v5}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    add-float/2addr v4, v1

    invoke-direct {p0, v4, v2}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(FZ)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object v1

    .line 171
    iget v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    iget v5, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    if-ne v4, v5, :cond_0

    .line 172
    iget v1, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    iget v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    sub-int/2addr v1, v4

    add-int/2addr v1, v2

    goto :goto_1

    .line 174
    :cond_0
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    .line 175
    iget v5, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    add-int/2addr v5, v2

    :goto_0
    iget v6, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    if-ge v5, v6, :cond_1

    .line 176
    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 178
    :cond_1
    iget v1, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    add-int/2addr v1, v2

    add-int/2addr v1, v4

    :goto_1
    move v4, v3

    move v5, v4

    :goto_2
    if-ge v4, v1, :cond_5

    .line 181
    sget v6, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-ge v5, v6, :cond_5

    .line 182
    sget v6, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    sub-int/2addr v6, v5

    invoke-direct {p0, v4, v6, v3}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadRelative(IIZ)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(FZ)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object v0

    .line 186
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v4

    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v5}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    add-float/2addr v4, v1

    invoke-direct {p0, v4, v2}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(FZ)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object v1

    .line 188
    iget v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    iget v5, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    if-ne v4, v5, :cond_3

    .line 189
    iget v1, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    iget v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    sub-int/2addr v1, v4

    add-int/2addr v1, v2

    goto :goto_4

    .line 191
    :cond_3
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    .line 192
    iget v5, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    add-int/2addr v5, v2

    :goto_3
    iget v6, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    if-ge v5, v6, :cond_4

    .line 193
    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 195
    :cond_4
    iget v1, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    add-int/2addr v1, v2

    add-int/2addr v1, v4

    :goto_4
    move v4, v3

    move v5, v4

    :goto_5
    if-ge v4, v1, :cond_5

    .line 198
    sget v6, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-ge v5, v6, :cond_5

    .line 199
    sget v6, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    sub-int/2addr v6, v5

    invoke-direct {p0, v4, v6, v3}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadRelative(IIZ)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 202
    :cond_5
    iget v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/github/barteksc/pdfviewer/PagesLoader;->documentPage(I)I

    move-result v1

    if-ltz v1, :cond_6

    .line 204
    iget v3, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    sub-int/2addr v3, v2

    invoke-direct {p0, v3, v1}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadThumbnail(II)V

    .line 206
    :cond_6
    iget v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/github/barteksc/pdfviewer/PagesLoader;->documentPage(I)I

    move-result v1

    if-ltz v1, :cond_7

    .line 208
    iget v0, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadThumbnail(II)V

    :cond_7
    return v5
.end method
