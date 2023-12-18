.class public Lcom/dacer/androidcharts/PieView;
.super Landroid/view/View;
.source "PieView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dacer/androidcharts/PieView$OnPieClickListener;
    }
.end annotation


# static fields
.field public static final NO_SELECTED_INDEX:I = -0x3e7


# instance fields
.field private final DEFAULT_COLOR_LIST:[I

.field private animator:Ljava/lang/Runnable;

.field private cirPaint:Landroid/graphics/Paint;

.field private cirRect:Landroid/graphics/RectF;

.field private cirSelectedRect:Landroid/graphics/RectF;

.field private mViewHeight:I

.field private mViewWidth:I

.field private margin:I

.field private onPieClickListener:Lcom/dacer/androidcharts/PieView$OnPieClickListener;

.field private pieCenterPoint:Landroid/graphics/Point;

.field private pieHelperList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dacer/androidcharts/PieHelper;",
            ">;"
        }
    .end annotation
.end field

.field private pieRadius:I

.field private selectedIndex:I

.field private showPercentLabel:Z

.field private textPaint:Landroid/graphics/Paint;

.field private whiteLinePaint:Landroid/graphics/Paint;


# direct methods
.method static bridge synthetic -$$Nest$fgetpieHelperList(Lcom/dacer/androidcharts/PieView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/dacer/androidcharts/PieView;->pieHelperList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/dacer/androidcharts/PieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, -0x3e7

    .line 40
    iput p1, p0, Lcom/dacer/androidcharts/PieView;->selectedIndex:I

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/dacer/androidcharts/PieView;->showPercentLabel:Z

    const-string p2, "#33B5E5"

    .line 44
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const-string v0, "#AA66CC"

    .line 45
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#99CC00"

    .line 46
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#FFBB33"

    .line 47
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#FF4444"

    .line 48
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    filled-new-array {p2, v0, v1, v2, v3}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/dacer/androidcharts/PieView;->DEFAULT_COLOR_LIST:[I

    .line 51
    new-instance p2, Lcom/dacer/androidcharts/PieView$1;

    invoke-direct {p2, p0}, Lcom/dacer/androidcharts/PieView$1;-><init>(Lcom/dacer/androidcharts/PieView;)V

    iput-object p2, p0, Lcom/dacer/androidcharts/PieView;->animator:Ljava/lang/Runnable;

    .line 74
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/dacer/androidcharts/PieView;->pieHelperList:Ljava/util/ArrayList;

    .line 75
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/dacer/androidcharts/PieView;->cirPaint:Landroid/graphics/Paint;

    .line 76
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object p2, p0, Lcom/dacer/androidcharts/PieView;->cirPaint:Landroid/graphics/Paint;

    const v0, -0x777778

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    new-instance p2, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/dacer/androidcharts/PieView;->cirPaint:Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p2, p0, Lcom/dacer/androidcharts/PieView;->whiteLinePaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 79
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object p2, p0, Lcom/dacer/androidcharts/PieView;->whiteLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/dacer/androidcharts/PieView;->textPaint:Landroid/graphics/Paint;

    .line 82
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object p1, p0, Lcom/dacer/androidcharts/PieView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object p1, p0, Lcom/dacer/androidcharts/PieView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/dacer/androidcharts/PieView;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {p2, v0}, Lcom/dacer/androidcharts/MyUtils;->sp2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 85
    iget-object p1, p0, Lcom/dacer/androidcharts/PieView;->textPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    iget-object p1, p0, Lcom/dacer/androidcharts/PieView;->textPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 87
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/dacer/androidcharts/PieView;->pieCenterPoint:Landroid/graphics/Point;

    .line 88
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/dacer/androidcharts/PieView;->cirRect:Landroid/graphics/RectF;

    .line 89
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/dacer/androidcharts/PieView;->cirSelectedRect:Landroid/graphics/RectF;

    return-void
.end method

.method private drawLineBesideCir(Landroid/graphics/Canvas;FZ)V
    .locals 11

    if-eqz p3, :cond_0

    .line 171
    iget p3, p0, Lcom/dacer/androidcharts/PieView;->mViewHeight:I

    div-int/lit8 p3, p3, 0x2

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/dacer/androidcharts/PieView;->pieRadius:I

    :goto_0
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v1, p2, v0

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 176
    :goto_1
    iget v1, p0, Lcom/dacer/androidcharts/PieView;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    neg-float p2, p2

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    int-to-double p2, p3

    mul-double/2addr v5, p2

    add-double/2addr v1, v5

    double-to-float v8, v1

    .line 177
    iget v1, p0, Lcom/dacer/androidcharts/PieView;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    int-to-double v5, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    mul-double/2addr v5, v3

    mul-double/2addr v5, p2

    add-double/2addr v1, v5

    double-to-float v9, v1

    .line 178
    iget-object p2, p0, Lcom/dacer/androidcharts/PieView;->pieCenterPoint:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float v6, p2

    iget-object p2, p0, Lcom/dacer/androidcharts/PieView;->pieCenterPoint:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float v7, p2

    iget-object v10, p0, Lcom/dacer/androidcharts/PieView;->whiteLinePaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawPercentText(Landroid/graphics/Canvas;Lcom/dacer/androidcharts/PieHelper;)V
    .locals 10

    .line 182
    iget-boolean v0, p0, Lcom/dacer/androidcharts/PieView;->showPercentLabel:Z

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-virtual {p2}, Lcom/dacer/androidcharts/PieHelper;->getStartDegree()F

    move-result v0

    invoke-virtual {p2}, Lcom/dacer/androidcharts/PieHelper;->getEndDegree()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v2, v0, v1

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 188
    :goto_0
    iget v2, p0, Lcom/dacer/androidcharts/PieView;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    neg-float v0, v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget v0, p0, Lcom/dacer/androidcharts/PieView;->pieRadius:I

    int-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    double-to-float v0, v2

    .line 189
    iget v2, p0, Lcom/dacer/androidcharts/PieView;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    int-to-double v6, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v6, v4

    iget v1, p0, Lcom/dacer/androidcharts/PieView;->pieRadius:I

    int-to-double v4, v1

    mul-double/2addr v6, v4

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    double-to-float v1, v2

    .line 190
    invoke-virtual {p2}, Lcom/dacer/androidcharts/PieHelper;->getPercentStr()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/dacer/androidcharts/PieView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Lcom/dacer/androidcharts/PieHelper;)V
    .locals 10

    .line 194
    invoke-virtual {p2}, Lcom/dacer/androidcharts/PieHelper;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {p2}, Lcom/dacer/androidcharts/PieHelper;->getStartDegree()F

    move-result v0

    invoke-virtual {p2}, Lcom/dacer/androidcharts/PieHelper;->getEndDegree()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v2, v0, v1

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 200
    :goto_0
    iget v2, p0, Lcom/dacer/androidcharts/PieView;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    neg-float v0, v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget v0, p0, Lcom/dacer/androidcharts/PieView;->pieRadius:I

    int-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    double-to-float v0, v2

    .line 201
    iget v2, p0, Lcom/dacer/androidcharts/PieView;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    int-to-double v6, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v6, v4

    iget v1, p0, Lcom/dacer/androidcharts/PieView;->pieRadius:I

    int-to-double v4, v1

    mul-double/2addr v6, v4

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    double-to-float v1, v2

    .line 202
    invoke-virtual {p2}, Lcom/dacer/androidcharts/PieHelper;->getTitle()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/dacer/androidcharts/PieView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private findPointAt(II)I
    .locals 5

    .line 225
    iget-object v0, p0, Lcom/dacer/androidcharts/PieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v0

    int-to-double v0, p1

    iget-object p1, p0, Lcom/dacer/androidcharts/PieView;->pieCenterPoint:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, p1

    int-to-double p1, p2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v2

    sub-double/2addr p1, v0

    neg-double p1, p1

    const-wide v0, 0x4070e00000000000L    # 270.0

    add-double/2addr p1, v0

    .line 228
    iget-object v0, p0, Lcom/dacer/androidcharts/PieView;->pieHelperList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dacer/androidcharts/PieHelper;

    .line 229
    invoke-virtual {v2}, Lcom/dacer/androidcharts/PieHelper;->getStartDegree()F

    move-result v3

    float-to-double v3, v3

    cmpl-double v3, p1, v3

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Lcom/dacer/androidcharts/PieHelper;->getEndDegree()F

    move-result v2

    float-to-double v2, v2

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, -0x3e7

    return p1
.end method

.method private getMeasurement(II)I
    .locals 2

    .line 266
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 269
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

    .line 274
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    return p2
.end method

.method private initPies(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dacer/androidcharts/PieHelper;",
            ">;)V"
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/high16 v0, 0x43870000    # 270.0f

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dacer/androidcharts/PieHelper;

    .line 128
    invoke-virtual {v1}, Lcom/dacer/androidcharts/PieHelper;->getSweep()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/dacer/androidcharts/PieHelper;->setDegree(FF)V

    .line 129
    invoke-virtual {v1}, Lcom/dacer/androidcharts/PieHelper;->getSweep()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private measureHeight(I)I
    .locals 1

    .line 261
    iget v0, p0, Lcom/dacer/androidcharts/PieView;->mViewWidth:I

    .line 262
    invoke-direct {p0, p1, v0}, Lcom/dacer/androidcharts/PieView;->getMeasurement(II)I

    move-result p1

    return p1
.end method

.method private measureWidth(I)I
    .locals 1

    const/4 v0, 0x3

    .line 257
    invoke-direct {p0, p1, v0}, Lcom/dacer/androidcharts/PieView;->getMeasurement(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 147
    iget-object v0, p0, Lcom/dacer/androidcharts/PieView;->pieHelperList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/dacer/androidcharts/PieView;->pieHelperList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dacer/androidcharts/PieHelper;

    .line 153
    iget v4, p0, Lcom/dacer/androidcharts/PieView;->selectedIndex:I

    if-ne v4, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eqz v4, :cond_2

    .line 154
    iget-object v5, p0, Lcom/dacer/androidcharts/PieView;->cirSelectedRect:Landroid/graphics/RectF;

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/dacer/androidcharts/PieView;->cirRect:Landroid/graphics/RectF;

    :goto_2
    move-object v7, v5

    .line 155
    invoke-virtual {v3}, Lcom/dacer/androidcharts/PieHelper;->isColorSetted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 156
    iget-object v5, p0, Lcom/dacer/androidcharts/PieView;->cirPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Lcom/dacer/androidcharts/PieHelper;->getColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 158
    :cond_3
    iget-object v5, p0, Lcom/dacer/androidcharts/PieView;->cirPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/dacer/androidcharts/PieView;->DEFAULT_COLOR_LIST:[I

    rem-int/lit8 v8, v2, 0x5

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    :goto_3
    invoke-virtual {v3}, Lcom/dacer/androidcharts/PieHelper;->getStartDegree()F

    move-result v8

    invoke-virtual {v3}, Lcom/dacer/androidcharts/PieHelper;->getSweep()F

    move-result v9

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/dacer/androidcharts/PieView;->cirPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 161
    invoke-direct {p0, p1, v3}, Lcom/dacer/androidcharts/PieView;->drawPercentText(Landroid/graphics/Canvas;Lcom/dacer/androidcharts/PieHelper;)V

    .line 163
    invoke-virtual {v3}, Lcom/dacer/androidcharts/PieHelper;->getStartDegree()F

    move-result v5

    invoke-direct {p0, p1, v5, v4}, Lcom/dacer/androidcharts/PieView;->drawLineBesideCir(Landroid/graphics/Canvas;FZ)V

    .line 164
    invoke-virtual {v3}, Lcom/dacer/androidcharts/PieHelper;->getEndDegree()F

    move-result v3

    invoke-direct {p0, p1, v3, v4}, Lcom/dacer/androidcharts/PieView;->drawLineBesideCir(Landroid/graphics/Canvas;FZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 239
    invoke-direct {p0, p1}, Lcom/dacer/androidcharts/PieView;->measureWidth(I)I

    move-result p1

    iput p1, p0, Lcom/dacer/androidcharts/PieView;->mViewWidth:I

    .line 240
    invoke-direct {p0, p2}, Lcom/dacer/androidcharts/PieView;->measureHeight(I)I

    move-result p1

    iput p1, p0, Lcom/dacer/androidcharts/PieView;->mViewHeight:I

    .line 241
    iget p1, p0, Lcom/dacer/androidcharts/PieView;->mViewWidth:I

    div-int/lit8 p2, p1, 0x10

    iput p2, p0, Lcom/dacer/androidcharts/PieView;->margin:I

    .line 242
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/dacer/androidcharts/PieView;->pieRadius:I

    .line 243
    iget-object v0, p0, Lcom/dacer/androidcharts/PieView;->pieCenterPoint:Landroid/graphics/Point;

    add-int v1, p1, p2

    add-int/2addr p1, p2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    .line 244
    iget-object p1, p0, Lcom/dacer/androidcharts/PieView;->cirRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/dacer/androidcharts/PieView;->pieCenterPoint:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/dacer/androidcharts/PieView;->pieRadius:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    iget-object v0, p0, Lcom/dacer/androidcharts/PieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/dacer/androidcharts/PieView;->pieRadius:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/dacer/androidcharts/PieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/dacer/androidcharts/PieView;->pieRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dacer/androidcharts/PieView;->pieCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/dacer/androidcharts/PieView;->pieRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 248
    iget-object p1, p0, Lcom/dacer/androidcharts/PieView;->cirSelectedRect:Landroid/graphics/RectF;

    iget p2, p0, Lcom/dacer/androidcharts/PieView;->mViewWidth:I

    add-int/lit8 p2, p2, -0x2

    int-to-float p2, p2

    iget v0, p0, Lcom/dacer/androidcharts/PieView;->mViewHeight:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 252
    iget p1, p0, Lcom/dacer/androidcharts/PieView;->mViewWidth:I

    iget p2, p0, Lcom/dacer/androidcharts/PieView;->mViewHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/dacer/androidcharts/PieView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 208
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/dacer/androidcharts/PieView;->findPointAt(II)I

    move-result p1

    iput p1, p0, Lcom/dacer/androidcharts/PieView;->selectedIndex:I

    .line 209
    iget-object v0, p0, Lcom/dacer/androidcharts/PieView;->onPieClickListener:Lcom/dacer/androidcharts/PieView$OnPieClickListener;

    if-eqz v0, :cond_1

    .line 210
    invoke-interface {v0, p1}, Lcom/dacer/androidcharts/PieView$OnPieClickListener;->onPieClick(I)V

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/dacer/androidcharts/PieView;->postInvalidate()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public removeSelectedPie()V
    .locals 2

    const/16 v0, -0x3e7

    .line 140
    iput v0, p0, Lcom/dacer/androidcharts/PieView;->selectedIndex:I

    .line 141
    iget-object v1, p0, Lcom/dacer/androidcharts/PieView;->onPieClickListener:Lcom/dacer/androidcharts/PieView$OnPieClickListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/dacer/androidcharts/PieView$OnPieClickListener;->onPieClick(I)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/dacer/androidcharts/PieView;->postInvalidate()V

    return-void
.end method

.method public selectedPie(I)V
    .locals 1

    .line 134
    iput p1, p0, Lcom/dacer/androidcharts/PieView;->selectedIndex:I

    .line 135
    iget-object v0, p0, Lcom/dacer/androidcharts/PieView;->onPieClickListener:Lcom/dacer/androidcharts/PieView$OnPieClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/dacer/androidcharts/PieView$OnPieClickListener;->onPieClick(I)V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/dacer/androidcharts/PieView;->postInvalidate()V

    return-void
.end method

.method public setDate(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dacer/androidcharts/PieHelper;",
            ">;)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1}, Lcom/dacer/androidcharts/PieView;->initPies(Ljava/util/ArrayList;)V

    .line 103
    iget-object v0, p0, Lcom/dacer/androidcharts/PieView;->pieHelperList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 104
    invoke-virtual {p0}, Lcom/dacer/androidcharts/PieView;->removeSelectedPie()V

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dacer/androidcharts/PieHelper;

    .line 108
    iget-object v1, p0, Lcom/dacer/androidcharts/PieView;->pieHelperList:Ljava/util/ArrayList;

    new-instance v2, Lcom/dacer/androidcharts/PieHelper;

    invoke-virtual {v0}, Lcom/dacer/androidcharts/PieHelper;->getStartDegree()F

    move-result v3

    invoke-virtual {v0}, Lcom/dacer/androidcharts/PieHelper;->getStartDegree()F

    move-result v4

    invoke-direct {v2, v3, v4, v0}, Lcom/dacer/androidcharts/PieHelper;-><init>(FFLcom/dacer/androidcharts/PieHelper;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/dacer/androidcharts/PieView;->pieHelperList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/dacer/androidcharts/PieView;->animator:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/dacer/androidcharts/PieView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 115
    iget-object p1, p0, Lcom/dacer/androidcharts/PieView;->animator:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/dacer/androidcharts/PieView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setOnPieClickListener(Lcom/dacer/androidcharts/PieView$OnPieClickListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/dacer/androidcharts/PieView;->onPieClickListener:Lcom/dacer/androidcharts/PieView$OnPieClickListener;

    return-void
.end method

.method public showPercentLabel(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/dacer/androidcharts/PieView;->showPercentLabel:Z

    .line 94
    invoke-virtual {p0}, Lcom/dacer/androidcharts/PieView;->postInvalidate()V

    return-void
.end method
