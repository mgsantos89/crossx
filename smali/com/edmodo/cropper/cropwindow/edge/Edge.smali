.class public final enum Lcom/edmodo/cropper/cropwindow/edge/Edge;
.super Ljava/lang/Enum;
.source "Edge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/edmodo/cropper/cropwindow/edge/Edge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/edmodo/cropper/cropwindow/edge/Edge;

.field public static final enum BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

.field public static final enum LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

.field public static final MIN_CROP_LENGTH_PX:I = 0x28

.field public static final enum RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

.field public static final enum TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;


# instance fields
.field private mCoordinate:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/edmodo/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 27
    new-instance v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;

    const-string v2, "TOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 28
    new-instance v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;

    const-string v3, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 29
    new-instance v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;

    const-string v4, "BOTTOM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 24
    filled-new-array {v0, v1, v2, v3}, [Lcom/edmodo/cropper/cropwindow/edge/Edge;

    move-result-object v0

    sput-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->$VALUES:[Lcom/edmodo/cropper/cropwindow/edge/Edge;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static adjustBottom(FLandroid/graphics/Rect;FF)F
    .locals 3

    .line 526
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, p0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    .line 527
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    goto :goto_1

    .line 535
    :cond_0
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    const/high16 v0, 0x42200000    # 40.0f

    add-float/2addr p2, v0

    cmpg-float p2, p0, p2

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    if-gtz p2, :cond_1

    .line 536
    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    add-float/2addr p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    .line 539
    :goto_0
    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sub-float v2, p0, v2

    mul-float/2addr v2, p3

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_2

    .line 540
    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    div-float/2addr v0, p3

    add-float v1, p1, v0

    .line 542
    :cond_2
    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    :goto_1
    return p0
.end method

.method private static adjustLeft(FLandroid/graphics/Rect;FF)F
    .locals 3

    .line 415
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v0, p0, v0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    .line 416
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    goto :goto_1

    .line 425
    :cond_0
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    const/high16 v0, 0x42200000    # 40.0f

    sub-float/2addr p2, v0

    cmpl-float p2, p0, p2

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ltz p2, :cond_1

    .line 426
    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    sub-float/2addr p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    .line 429
    :goto_0
    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sub-float/2addr v2, p0

    div-float/2addr v2, p3

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_2

    .line 430
    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    mul-float/2addr p3, v0

    sub-float v1, p1, p3

    .line 432
    :cond_2
    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    :goto_1
    return p0
.end method

.method private static adjustRight(FLandroid/graphics/Rect;FF)F
    .locals 3

    .line 451
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, p0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    .line 452
    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    goto :goto_1

    .line 461
    :cond_0
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    const/high16 v0, 0x42200000    # 40.0f

    add-float/2addr p2, v0

    cmpg-float p2, p0, p2

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    if-gtz p2, :cond_1

    .line 462
    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    add-float/2addr p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    .line 465
    :goto_0
    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sub-float v2, p0, v2

    div-float/2addr v2, p3

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_2

    .line 466
    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    mul-float/2addr p3, v0

    add-float v1, p1, p3

    .line 469
    :cond_2
    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    :goto_1
    return p0
.end method

.method private static adjustTop(FLandroid/graphics/Rect;FF)F
    .locals 3

    .line 489
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v0, p0, v0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    .line 490
    iget p0, p1, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    goto :goto_1

    .line 499
    :cond_0
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    const/high16 v0, 0x42200000    # 40.0f

    sub-float/2addr p2, v0

    cmpl-float p2, p0, p2

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ltz p2, :cond_1

    .line 500
    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    sub-float/2addr p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    .line 503
    :goto_0
    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sub-float/2addr v2, p0

    mul-float/2addr v2, p3

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_2

    .line 504
    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    div-float/2addr v0, p3

    sub-float v1, p1, v0

    .line 506
    :cond_2
    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    :goto_1
    return p0
.end method

.method public static getHeight()F
    .locals 2

    .line 343
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public static getWidth()F
    .locals 2

    .line 336
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private isOutOfBounds(FFFFLandroid/graphics/Rect;)Z
    .locals 1

    .line 245
    iget v0, p5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_1

    iget p1, p5, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_1

    iget p1, p5, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_1

    iget p1, p5, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    cmpl-float p1, p4, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/edmodo/cropper/cropwindow/edge/Edge;
    .locals 1

    .line 24
    const-class v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;

    return-object p0
.end method

.method public static values()[Lcom/edmodo/cropper/cropwindow/edge/Edge;
    .locals 1

    .line 24
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->$VALUES:[Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, [Lcom/edmodo/cropper/cropwindow/edge/Edge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/edmodo/cropper/cropwindow/edge/Edge;

    return-object v0
.end method


# virtual methods
.method public adjustCoordinate(F)V
    .locals 6

    .line 113
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    .line 114
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 115
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    .line 116
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 118
    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v3, 0x4

    if-eq v4, v3, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {v0, v1, v2, p1}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateBottom(FFFF)F

    move-result p1

    iput p1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {v0, v1, v3, p1}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateRight(FFFF)F

    move-result p1

    iput p1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {v0, v2, v3, p1}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateTop(FFFF)F

    move-result p1

    iput p1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 120
    :cond_3
    invoke-static {v1, v2, v3, p1}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateLeft(FFFF)F

    move-result p1

    iput p1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    :goto_0
    return-void
.end method

.method public adjustCoordinate(FFLandroid/graphics/Rect;FF)V
    .locals 2

    .line 87
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {p2, p3, p4, p5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustBottom(FLandroid/graphics/Rect;FF)F

    move-result p1

    iput p1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 95
    :cond_1
    invoke-static {p1, p3, p4, p5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustRight(FLandroid/graphics/Rect;FF)F

    move-result p1

    iput p1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {p2, p3, p4, p5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustTop(FLandroid/graphics/Rect;FF)F

    move-result p1

    iput p1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 89
    :cond_3
    invoke-static {p1, p3, p4, p5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustLeft(FLandroid/graphics/Rect;FF)F

    move-result p1

    iput p1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    :goto_0
    return-void
.end method

.method public getCoordinate()F
    .locals 1

    .line 72
    iget v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    return v0
.end method

.method public isNewRectangleOutOfBounds(Lcom/edmodo/cropper/cropwindow/edge/Edge;Landroid/graphics/Rect;F)Z
    .locals 8

    .line 146
    invoke-virtual {p1, p2}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->snapOffset(Landroid/graphics/Rect;)F

    move-result v0

    .line 148
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    goto/16 :goto_0

    .line 211
    :cond_0
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, p1

    .line 213
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    sub-float v5, p1, v0

    .line 214
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    .line 215
    invoke-static {v3, v2, v5, p3}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateBottom(FFFF)F

    move-result v4

    move-object v1, p0

    move-object v6, p2

    .line 217
    invoke-direct/range {v1 .. v6}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 220
    :cond_1
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 221
    iget p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, p1

    .line 222
    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    sub-float v4, p1, v0

    .line 223
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 224
    invoke-static {v4, v3, v6, p3}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateBottom(FFFF)F

    move-result v5

    move-object v2, p0

    move-object v7, p2

    .line 226
    invoke-direct/range {v2 .. v7}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 190
    :cond_2
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 191
    iget p1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, p1

    .line 192
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    sub-float v4, p1, v0

    .line 193
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 194
    invoke-static {v3, v2, v4, p3}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateRight(FFFF)F

    move-result v5

    move-object v1, p0

    move-object v6, p2

    .line 196
    invoke-direct/range {v1 .. v6}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 199
    :cond_3
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 200
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p1

    .line 201
    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    sub-float v3, p1, v0

    .line 202
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    .line 203
    invoke-static {v4, v3, v5, p3}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateRight(FFFF)F

    move-result v6

    move-object v2, p0

    move-object v7, p2

    .line 205
    invoke-direct/range {v2 .. v7}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 170
    :cond_4
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 171
    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, p1

    .line 172
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    sub-float v5, p1, v0

    .line 173
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    .line 174
    invoke-static {v3, v5, v4, p3}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateTop(FFFF)F

    move-result v2

    move-object v1, p0

    move-object v6, p2

    .line 176
    invoke-direct/range {v1 .. v6}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 179
    :cond_5
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 180
    iget p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, p1

    .line 181
    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    sub-float v4, p1, v0

    .line 182
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v5

    .line 183
    invoke-static {v4, v6, v5, p3}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateTop(FFFF)F

    move-result v3

    move-object v2, p0

    move-object v7, p2

    .line 185
    invoke-direct/range {v2 .. v7}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 150
    :cond_6
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 151
    iget p1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, p1

    .line 152
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    sub-float v4, p1, v0

    .line 153
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v5

    .line 154
    invoke-static {v2, v5, v4, p3}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateLeft(FFFF)F

    move-result v3

    move-object v1, p0

    move-object v6, p2

    .line 156
    invoke-direct/range {v1 .. v6}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 159
    :cond_7
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 160
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p1

    .line 161
    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    sub-float v3, p1, v0

    .line 162
    sget-object p1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v6

    .line 163
    invoke-static {v3, v6, v5, p3}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateLeft(FFFF)F

    move-result v4

    move-object v2, p0

    move-object v7, p2

    .line 165
    invoke-direct/range {v2 .. v7}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_8
    :goto_0
    return v2
.end method

.method public isOutsideFrame(Landroid/graphics/Rect;)Z
    .locals 7

    .line 382
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eq v0, v1, :cond_3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    const/4 v5, 0x4

    if-eq v0, v5, :cond_0

    goto :goto_1

    .line 393
    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iget v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float/2addr p1, v0

    float-to-double v5, p1

    cmpg-double p1, v5, v2

    if-gez p1, :cond_4

    goto :goto_0

    .line 390
    :cond_1
    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float/2addr p1, v0

    float-to-double v5, p1

    cmpg-double p1, v5, v2

    if-gez p1, :cond_4

    goto :goto_0

    .line 387
    :cond_2
    iget v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-double v5, v0

    cmpg-double p1, v5, v2

    if-gez p1, :cond_4

    goto :goto_0

    .line 384
    :cond_3
    iget v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-double v5, v0

    cmpg-double p1, v5, v2

    if-gez p1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v4

    :goto_0
    move v4, v1

    :goto_1
    return v4
.end method

.method public isOutsideMargin(Landroid/graphics/Rect;F)Z
    .locals 4

    .line 356
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 367
    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iget v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float/2addr p1, v0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    goto :goto_0

    .line 364
    :cond_1
    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float/2addr p1, v0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    goto :goto_0

    .line 361
    :cond_2
    iget v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    cmpg-float p1, v0, p2

    if-gez p1, :cond_4

    goto :goto_0

    .line 358
    :cond_3
    iget v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    cmpg-float p1, v0, p2

    if-gez p1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    move v2, v1

    :goto_1
    return v2
.end method

.method public offset(F)V
    .locals 1

    .line 62
    iget v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    return-void
.end method

.method public setCoordinate(F)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    return-void
.end method

.method public snapOffset(Landroid/graphics/Rect;)F
    .locals 3

    .line 287
    iget v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    .line 290
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    move p1, v0

    goto :goto_1

    .line 301
    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 298
    :cond_1
    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 295
    :cond_2
    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 292
    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    int-to-float p1, p1

    :goto_1
    sub-float/2addr p1, v0

    return p1
.end method

.method public snapToRect(Landroid/graphics/Rect;)F
    .locals 3

    .line 257
    iget v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    .line 259
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 267
    :cond_1
    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iput p1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 264
    :cond_2
    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iput p1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 261
    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iput p1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    .line 274
    :goto_0
    iget p1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float/2addr p1, v0

    return p1
.end method

.method public snapToView(Landroid/view/View;)V
    .locals 3

    .line 316
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 321
    :cond_2
    iput v2, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 318
    :cond_3
    iput v2, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    :goto_0
    return-void
.end method
