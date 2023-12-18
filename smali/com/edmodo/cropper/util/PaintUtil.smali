.class public Lcom/edmodo/cropper/util/PaintUtil;
.super Ljava/lang/Object;
.source "PaintUtil.java"


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR_ID:Ljava/lang/String; = "#B0000000"

.field private static final DEFAULT_CORNER_COLOR:I = -0x1

.field private static final DEFAULT_CORNER_THICKNESS_DP:F = 5.0f

.field private static final DEFAULT_GUIDELINE_THICKNESS_PX:F = 1.0f

.field private static final DEFAULT_LINE_THICKNESS_DP:F = 3.0f

.field private static final SEMI_TRANSPARENT:Ljava/lang/String; = "#AAFFFFFF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCornerThickness()F
    .locals 1

    const/high16 v0, 0x40a00000    # 5.0f

    return v0
.end method

.method public static getLineThickness()F
    .locals 1

    const/high16 v0, 0x40400000    # 3.0f

    return v0
.end method

.method public static newBackgroundPaint(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 1

    .line 81
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    const-string v0, "#B0000000"

    .line 82
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public static newBorderPaint(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 2

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const-string v1, "#AAFFFFFF"

    .line 51
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method

.method public static newCornerPaint(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 2

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    .line 101
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method

.method public static newGuidelinePaint()Landroid/graphics/Paint;
    .locals 2

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const-string v1, "#AAFFFFFF"

    .line 66
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 67
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object v0
.end method
