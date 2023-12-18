.class public Lcom/dacer/androidcharts/ClockPieView;
.super Landroid/view/View;
.source "ClockPieView.java"


# instance fields
.field private final GRAY_COLOR:I

.field private final RED_COLOR:I

.field private final TEXT_COLOR:I

.field private animator:Ljava/lang/Runnable;

.field private cirRect:Landroid/graphics/RectF;

.field private leftTextWidth:F

.field private lineLength:I

.field private linePaint:Landroid/graphics/Paint;

.field private lineThickness:I

.field private mViewHeight:I

.field private mViewWidth:I

.field private pieArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dacer/androidcharts/ClockPieHelper;",
            ">;"
        }
    .end annotation
.end field

.field private pieCenterPoint:Landroid/graphics/Point;

.field private pieRadius:I

.field private redPaint:Landroid/graphics/Paint;

.field private rightTextWidth:F

.field private tempPoint:Landroid/graphics/Point;

.field private tempPointRight:Landroid/graphics/Point;

.field private textPaint:Landroid/graphics/Paint;

.field private textRect:Landroid/graphics/Rect;

.field private textSize:I

.field private topTextHeight:F

.field private whitePaint:Landroid/graphics/Paint;


# direct methods
.method static bridge synthetic -$$Nest$fgetpieArrayList(Lcom/dacer/androidcharts/ClockPieView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/dacer/androidcharts/ClockPieView;->pieArrayList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/dacer/androidcharts/ClockPieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/dacer/androidcharts/ClockPieView;->pieArrayList:Ljava/util/ArrayList;

    const-string p2, "#9B9A9B"

    .line 42
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/dacer/androidcharts/ClockPieView;->TEXT_COLOR:I

    const-string v0, "#D4D3D4"

    .line 43
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/ClockPieView;->GRAY_COLOR:I

    const/16 v1, 0x33

    const/16 v2, 0x32

    const/16 v3, 0xff

    const/4 v4, 0x0

    .line 44
    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/dacer/androidcharts/ClockPieView;->RED_COLOR:I

    .line 46
    new-instance v2, Lcom/dacer/androidcharts/ClockPieView$1;

    invoke-direct {v2, p0}, Lcom/dacer/androidcharts/ClockPieView$1;-><init>(Lcom/dacer/androidcharts/ClockPieView;)V

    iput-object v2, p0, Lcom/dacer/androidcharts/ClockPieView;->animator:Ljava/lang/Runnable;

    const/high16 v2, 0x41700000    # 15.0f

    .line 68
    invoke-static {p1, v2}, Lcom/dacer/androidcharts/MyUtils;->sp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/dacer/androidcharts/ClockPieView;->textSize:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 69
    invoke-static {p1, v2}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/dacer/androidcharts/ClockPieView;->lineThickness:I

    const/high16 v2, 0x41200000    # 10.0f

    .line 70
    invoke-static {p1, v2}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/dacer/androidcharts/ClockPieView;->lineLength:I

    .line 72
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->textPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 73
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->textPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/dacer/androidcharts/ClockPieView;->textSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    iget-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->textPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 77
    new-instance p1, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p1}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 78
    iget-object p2, p0, Lcom/dacer/androidcharts/ClockPieView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 79
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->textRect:Landroid/graphics/Rect;

    .line 80
    iget-object p2, p0, Lcom/dacer/androidcharts/ClockPieView;->textPaint:Landroid/graphics/Paint;

    const-string v3, "18"

    invoke-virtual {p2, v3, v4, v2, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 81
    new-instance p1, Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/dacer/androidcharts/ClockPieView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->redPaint:Landroid/graphics/Paint;

    .line 82
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    new-instance p1, Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/dacer/androidcharts/ClockPieView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->linePaint:Landroid/graphics/Paint;

    .line 84
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->linePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/dacer/androidcharts/ClockPieView;->lineThickness:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    new-instance p1, Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/dacer/androidcharts/ClockPieView;->linePaint:Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->whitePaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    .line 87
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->tempPoint:Landroid/graphics/Point;

    .line 89
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    .line 90
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->tempPointRight:Landroid/graphics/Point;

    .line 91
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->cirRect:Landroid/graphics/RectF;

    .line 92
    iget-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/dacer/androidcharts/ClockPieView;->leftTextWidth:F

    .line 93
    iget-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->textPaint:Landroid/graphics/Paint;

    const-string p2, "6"

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/dacer/androidcharts/ClockPieView;->rightTextWidth:F

    .line 94
    iget-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/dacer/androidcharts/ClockPieView;->topTextHeight:F

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/dacer/androidcharts/ClockPieView;->tempPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    const-wide v3, 0x3fd0c152382d7365L    # 0.2617993877991494

    int-to-double v5, v0

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget v7, p0, Lcom/dacer/androidcharts/ClockPieView;->pieRadius:I

    iget v8, p0, Lcom/dacer/androidcharts/ClockPieView;->lineLength:I

    add-int/2addr v7, v8

    int-to-double v7, v7

    mul-double/2addr v3, v7

    double-to-int v3, v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 133
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    iget v4, p0, Lcom/dacer/androidcharts/ClockPieView;->pieRadius:I

    iget v9, p0, Lcom/dacer/androidcharts/ClockPieView;->lineLength:I

    add-int/2addr v4, v9

    int-to-double v9, v4

    mul-double/2addr v7, v9

    double-to-int v4, v7

    sub-int/2addr v3, v4

    .line 132
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 134
    iget-object v1, p0, Lcom/dacer/androidcharts/ClockPieView;->tempPointRight:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 135
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget v7, p0, Lcom/dacer/androidcharts/ClockPieView;->pieRadius:I

    iget v8, p0, Lcom/dacer/androidcharts/ClockPieView;->lineLength:I

    add-int/2addr v7, v8

    int-to-double v7, v7

    mul-double/2addr v3, v7

    double-to-int v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 136
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v6, p0, Lcom/dacer/androidcharts/ClockPieView;->pieRadius:I

    iget v7, p0, Lcom/dacer/androidcharts/ClockPieView;->lineLength:I

    add-int/2addr v6, v7

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    .line 134
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 137
    iget-object v1, p0, Lcom/dacer/androidcharts/ClockPieView;->tempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v1

    iget-object v1, p0, Lcom/dacer/androidcharts/ClockPieView;->tempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v1

    iget-object v1, p0, Lcom/dacer/androidcharts/ClockPieView;->tempPointRight:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v1

    iget-object v1, p0, Lcom/dacer/androidcharts/ClockPieView;->tempPointRight:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v1

    iget-object v7, p0, Lcom/dacer/androidcharts/ClockPieView;->linePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/dacer/androidcharts/ClockPieView;->pieRadius:I

    iget v3, p0, Lcom/dacer/androidcharts/ClockPieView;->lineLength:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dacer/androidcharts/ClockPieView;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 140
    iget-object v0, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/dacer/androidcharts/ClockPieView;->pieRadius:I

    iget v3, p0, Lcom/dacer/androidcharts/ClockPieView;->lineThickness:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dacer/androidcharts/ClockPieView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 141
    iget-object v0, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/dacer/androidcharts/ClockPieView;->pieRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dacer/androidcharts/ClockPieView;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 142
    iget-object v0, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/dacer/androidcharts/ClockPieView;->topTextHeight:F

    iget-object v2, p0, Lcom/dacer/androidcharts/ClockPieView;->textPaint:Landroid/graphics/Paint;

    const-string v3, "0"

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 143
    iget-object v0, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/dacer/androidcharts/ClockPieView;->mViewHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dacer/androidcharts/ClockPieView;->textPaint:Landroid/graphics/Paint;

    const-string v3, "12"

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 144
    iget v0, p0, Lcom/dacer/androidcharts/ClockPieView;->leftTextWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/dacer/androidcharts/ClockPieView;->textRect:Landroid/graphics/Rect;

    .line 145
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dacer/androidcharts/ClockPieView;->textPaint:Landroid/graphics/Paint;

    const-string v4, "18"

    .line 144
    invoke-virtual {p1, v4, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 146
    iget v0, p0, Lcom/dacer/androidcharts/ClockPieView;->mViewWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/dacer/androidcharts/ClockPieView;->rightTextWidth:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    iget-object v1, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/dacer/androidcharts/ClockPieView;->textRect:Landroid/graphics/Rect;

    .line 147
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dacer/androidcharts/ClockPieView;->textPaint:Landroid/graphics/Paint;

    const-string v3, "6"

    .line 146
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getMeasurement(II)I
    .locals 2

    .line 175
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 178
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_0

    .line 183
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    return p2
.end method

.method private measureHeight(I)I
    .locals 1

    .line 170
    iget v0, p0, Lcom/dacer/androidcharts/ClockPieView;->mViewWidth:I

    .line 171
    invoke-direct {p0, p1, v0}, Lcom/dacer/androidcharts/ClockPieView;->getMeasurement(II)I

    move-result p1

    return p1
.end method

.method private measureWidth(I)I
    .locals 1

    const/4 v0, 0x3

    .line 166
    invoke-direct {p0, p1, v0}, Lcom/dacer/androidcharts/ClockPieView;->getMeasurement(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 122
    invoke-direct {p0, p1}, Lcom/dacer/androidcharts/ClockPieView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 123
    iget-object v0, p0, Lcom/dacer/androidcharts/ClockPieView;->pieArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dacer/androidcharts/ClockPieHelper;

    .line 125
    iget-object v3, p0, Lcom/dacer/androidcharts/ClockPieView;->cirRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/dacer/androidcharts/ClockPieHelper;->getStart()F

    move-result v4

    invoke-virtual {v1}, Lcom/dacer/androidcharts/ClockPieHelper;->getSweep()F

    move-result v5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/dacer/androidcharts/ClockPieView;->redPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 152
    invoke-direct {p0, p1}, Lcom/dacer/androidcharts/ClockPieView;->measureWidth(I)I

    move-result p1

    iput p1, p0, Lcom/dacer/androidcharts/ClockPieView;->mViewWidth:I

    .line 153
    invoke-direct {p0, p2}, Lcom/dacer/androidcharts/ClockPieView;->measureHeight(I)I

    move-result p1

    iput p1, p0, Lcom/dacer/androidcharts/ClockPieView;->mViewHeight:I

    .line 154
    iget p1, p0, Lcom/dacer/androidcharts/ClockPieView;->mViewWidth:I

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lcom/dacer/androidcharts/ClockPieView;->lineLength:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/dacer/androidcharts/ClockPieView;->textPaint:Landroid/graphics/Paint;

    const-string v0, "18"

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    float-to-int p2, p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/dacer/androidcharts/ClockPieView;->pieRadius:I

    .line 155
    iget-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    iget p2, p0, Lcom/dacer/androidcharts/ClockPieView;->mViewWidth:I

    div-int/lit8 p2, p2, 0x2

    iget v2, p0, Lcom/dacer/androidcharts/ClockPieView;->rightTextWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    iget v2, p0, Lcom/dacer/androidcharts/ClockPieView;->leftTextWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    iget v2, p0, Lcom/dacer/androidcharts/ClockPieView;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/dacer/androidcharts/ClockPieView;->textSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/dacer/androidcharts/ClockPieView;->textPaint:Landroid/graphics/Paint;

    .line 156
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    sub-int/2addr v2, v0

    .line 155
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Point;->set(II)V

    .line 157
    iget-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->cirRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/dacer/androidcharts/ClockPieView;->pieRadius:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    iget-object v0, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/dacer/androidcharts/ClockPieView;->pieRadius:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/dacer/androidcharts/ClockPieView;->pieRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dacer/androidcharts/ClockPieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/dacer/androidcharts/ClockPieView;->pieRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 161
    iget p1, p0, Lcom/dacer/androidcharts/ClockPieView;->mViewWidth:I

    iget p2, p0, Lcom/dacer/androidcharts/ClockPieView;->mViewHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/dacer/androidcharts/ClockPieView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setDate(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dacer/androidcharts/ClockPieHelper;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 98
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/dacer/androidcharts/ClockPieView;->pieArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dacer/androidcharts/ClockPieView;->pieArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    move v2, v1

    .line 100
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v0, -0x1

    if-le v2, v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/dacer/androidcharts/ClockPieView;->pieArrayList:Ljava/util/ArrayList;

    new-instance v4, Lcom/dacer/androidcharts/ClockPieHelper;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dacer/androidcharts/ClockPieHelper;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v5}, Lcom/dacer/androidcharts/ClockPieHelper;-><init>(FFLcom/dacer/androidcharts/ClockPieHelper;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 105
    :cond_1
    iget-object v3, p0, Lcom/dacer/androidcharts/ClockPieView;->pieArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dacer/androidcharts/ClockPieHelper;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dacer/androidcharts/ClockPieHelper;

    invoke-virtual {v4, v5}, Lcom/dacer/androidcharts/ClockPieHelper;->setTarget(Lcom/dacer/androidcharts/ClockPieHelper;)Lcom/dacer/androidcharts/ClockPieHelper;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/dacer/androidcharts/ClockPieView;->pieArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr v0, p1

    :goto_3
    if-ge v1, v0, :cond_4

    .line 110
    iget-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->pieArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 113
    :cond_3
    iget-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->pieArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 116
    :cond_4
    iget-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->animator:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/dacer/androidcharts/ClockPieView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 117
    iget-object p1, p0, Lcom/dacer/androidcharts/ClockPieView;->animator:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/dacer/androidcharts/ClockPieView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
