.class public Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;
.super Landroid/view/View;
.source "ProgressWheel.java"


# instance fields
.field private barColor:I

.field private barLength:I

.field private barPaint:Landroid/graphics/Paint;

.field private barWidth:I

.field private circleBounds:Landroid/graphics/RectF;

.field private circleColor:I

.field private circleInnerContour:Landroid/graphics/RectF;

.field private circleOuterContour:Landroid/graphics/RectF;

.field private circlePaint:Landroid/graphics/Paint;

.field private circleRadius:I

.field private contourColor:I

.field private contourPaint:Landroid/graphics/Paint;

.field private contourSize:F

.field private delayMillis:I

.field private fullRadius:I

.field isSpinning:Z

.field private layout_height:I

.field private layout_width:I

.field private paddingBottom:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingTop:I

.field progress:I

.field private rectBounds:Landroid/graphics/RectF;

.field private rimColor:I

.field private rimPaint:Landroid/graphics/Paint;

.field private rimWidth:I

.field private spinSpeed:I

.field private splitText:[Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private textColor:I

.field private textPaint:Landroid/graphics/Paint;

.field private textSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->layout_height:I

    .line 28
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->layout_width:I

    const/16 v1, 0xc8

    .line 29
    iput v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->fullRadius:I

    const/16 v1, 0x50

    .line 30
    iput v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleRadius:I

    const/16 v1, 0x3c

    .line 31
    iput v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barLength:I

    const/16 v1, 0x14

    .line 32
    iput v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barWidth:I

    .line 33
    iput v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimWidth:I

    .line 34
    iput v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textSize:I

    const/4 v1, 0x0

    .line 35
    iput v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourSize:F

    const/4 v1, 0x1

    .line 38
    iput v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingTop:I

    .line 39
    iput v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingBottom:I

    .line 40
    iput v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingLeft:I

    .line 41
    iput v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingRight:I

    const/high16 v1, -0x56000000

    .line 44
    iput v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barColor:I

    .line 45
    iput v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourColor:I

    .line 46
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleColor:I

    const v1, -0x55222223

    .line 47
    iput v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimColor:I

    const/high16 v1, -0x1000000

    .line 48
    iput v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textColor:I

    .line 51
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    .line 53
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rectBounds:Landroid/graphics/RectF;

    .line 60
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 61
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleOuterContour:Landroid/graphics/RectF;

    .line 62
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleInnerContour:Landroid/graphics/RectF;

    const/4 v1, 0x5

    .line 66
    iput v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->spinSpeed:I

    .line 68
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->delayMillis:I

    .line 69
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->progress:I

    .line 70
    iput-boolean v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->isSpinning:Z

    const-string v1, ""

    .line 73
    iput-object v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->text:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->splitText:[Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/startapps/crossx/R$styleable;->ProgressWheel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->parseAttributes(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method private parseAttributes(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 230
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barWidth:I

    int-to-float v0, v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barWidth:I

    .line 233
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimWidth:I

    int-to-float v0, v0

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimWidth:I

    .line 236
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->spinSpeed:I

    int-to-float v0, v0

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->spinSpeed:I

    const/4 v0, 0x4

    .line 239
    iget v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->delayMillis:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->delayMillis:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 242
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->delayMillis:I

    :cond_0
    const/4 v0, 0x5

    .line 245
    iget v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barColor:I

    const/4 v0, 0x6

    .line 247
    iget v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barLength:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barLength:I

    .line 249
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textSize:I

    int-to-float v0, v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textSize:I

    const/16 v0, 0x9

    .line 252
    iget v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textColor:I

    const/16 v0, 0xe

    .line 256
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->setText(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0xb

    .line 260
    iget v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimColor:I

    const/4 v0, 0x1

    .line 263
    iget v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleColor:I

    const/4 v0, 0x2

    .line 266
    iget v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourColor:I

    const/4 v0, 0x3

    .line 267
    iget v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourSize:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourSize:F

    .line 271
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private scheduleRedraw()V
    .locals 2

    .line 307
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->progress:I

    iget v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->spinSpeed:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->progress:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 309
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->progress:I

    .line 311
    :cond_0
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->delayMillis:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->postInvalidateDelayed(J)V

    return-void
.end method

.method private setupBounds()V
    .locals 8

    .line 193
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->layout_width:I

    iget v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->layout_height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingTop:I

    .line 201
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingBottom:I

    .line 202
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingLeft:I

    .line 203
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingRight:I

    .line 205
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->getWidth()I

    move-result v0

    .line 206
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->getHeight()I

    move-result v1

    .line 208
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingTop:I

    int-to-float v4, v4

    iget v5, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingRight:I

    sub-int v5, v0, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingBottom:I

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rectBounds:Landroid/graphics/RectF;

    .line 213
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingLeft:I

    iget v4, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barWidth:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v5, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingTop:I

    add-int/2addr v5, v4

    int-to-float v5, v5

    iget v6, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingRight:I

    sub-int v6, v0, v6

    sub-int/2addr v6, v4

    int-to-float v6, v6

    iget v7, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingBottom:I

    sub-int/2addr v1, v7

    sub-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v2, v3, v5, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 217
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourSize:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    iget v5, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourSize:F

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    iget-object v5, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourSize:F

    div-float/2addr v6, v4

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimWidth:I

    int-to-float v7, v7

    div-float/2addr v7, v4

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourSize:F

    div-float/2addr v7, v4

    sub-float/2addr v6, v7

    invoke-direct {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleInnerContour:Landroid/graphics/RectF;

    .line 218
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourSize:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourSize:F

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    iget v6, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourSize:F

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimWidth:I

    int-to-float v7, v7

    div-float/2addr v7, v4

    add-float/2addr v6, v7

    iget v7, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourSize:F

    div-float/2addr v7, v4

    add-float/2addr v6, v7

    invoke-direct {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleOuterContour:Landroid/graphics/RectF;

    .line 220
    iget v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->fullRadius:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 221
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleRadius:I

    return-void
.end method

.method private setupPaints()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 170
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 171
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 175
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 179
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 180
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 182
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public getBarColor()I
    .locals 1

    .line 463
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barColor:I

    return v0
.end method

.method public getBarLength()I
    .locals 1

    .line 399
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barLength:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .line 407
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barWidth:I

    return v0
.end method

.method public getCircleColor()I
    .locals 1

    .line 475
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleColor:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .line 391
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleRadius:I

    return v0
.end method

.method public getContourColor()I
    .locals 1

    .line 548
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourColor:I

    return v0
.end method

.method public getContourSize()F
    .locals 1

    .line 560
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourSize:F

    return v0
.end method

.method public getDelayMillis()I
    .locals 1

    .line 540
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->delayMillis:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 447
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 455
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 431
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingTop:I

    return v0
.end method

.method public getRimColor()I
    .locals 1

    .line 487
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimColor:I

    return v0
.end method

.method public getRimShader()Landroid/graphics/Shader;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    return-object v0
.end method

.method public getRimWidth()I
    .locals 1

    .line 528
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimWidth:I

    return v0
.end method

.method public getSpinSpeed()I
    .locals 1

    .line 520
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->spinSpeed:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 508
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 419
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textSize:I

    return v0
.end method

.method public incrementProgress()V
    .locals 3

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->isSpinning:Z

    .line 358
    iget v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->progress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->progress:I

    const/16 v2, 0x168

    if-le v1, v2, :cond_0

    .line 360
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->progress:I

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->postInvalidate()V

    return-void
.end method

.method public isSpinning()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 279
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 281
    iget-object v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 283
    iget-object v7, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v8, 0x43b40000    # 360.0f

    const/high16 v9, 0x43b40000    # 360.0f

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 284
    iget-object v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleOuterContour:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 285
    iget-object v7, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleInnerContour:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 287
    iget-boolean v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_0

    .line 288
    iget-object v2, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->progress:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v3, v0

    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barLength:I

    int-to-float v4, v0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v8, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v9, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->progress:I

    int-to-float v10, v0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 293
    :goto_0
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 294
    iget-object v2, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    sub-float/2addr v0, v2

    .line 296
    iget-object v2, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->splitText:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 297
    iget-object v6, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    div-float/2addr v6, v1

    .line 298
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v7, v6

    .line 299
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v0

    iget-object v8, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    .line 298
    invoke-virtual {p1, v5, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 301
    :cond_1
    iget-boolean p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->isSpinning:Z

    if-eqz p1, :cond_2

    .line 302
    invoke-direct {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->scheduleRedraw()V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 104
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 111
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->getMeasuredWidth()I

    move-result p1

    .line 112
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->getMeasuredHeight()I

    move-result p2

    .line 113
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 114
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    if-le p1, p2, :cond_0

    move p1, p2

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->getPaddingLeft()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->getPaddingTop()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->getPaddingBottom()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p2, p1}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 150
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->layout_width:I

    .line 151
    iput p2, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->layout_height:I

    .line 153
    invoke-direct {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->setupBounds()V

    .line 154
    invoke-direct {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->setupPaints()V

    .line 155
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->invalidate()V

    return-void
.end method

.method public resetCount()V
    .locals 1

    const/4 v0, 0x0

    .line 330
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->progress:I

    const-string v0, "0%"

    .line 331
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->setText(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->invalidate()V

    return-void
.end method

.method public setBarColor(I)V
    .locals 1

    .line 467
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barColor:I

    .line 469
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setBarLength(I)V
    .locals 0

    .line 403
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barLength:I

    return-void
.end method

.method public setBarWidth(I)V
    .locals 1

    .line 411
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barWidth:I

    .line 413
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 414
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public setCircleColor(I)V
    .locals 1

    .line 479
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleColor:I

    .line 481
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 0

    .line 395
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->circleRadius:I

    return-void
.end method

.method public setContourColor(I)V
    .locals 1

    .line 552
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourColor:I

    .line 554
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setContourSize(F)V
    .locals 1

    .line 564
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourSize:F

    .line 566
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->contourPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public setDelayMillis(I)V
    .locals 0

    .line 544
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->delayMillis:I

    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 0

    .line 443
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingBottom:I

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0

    .line 451
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingLeft:I

    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0

    .line 459
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingRight:I

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0

    .line 435
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->paddingTop:I

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x0

    .line 370
    iput-boolean v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->isSpinning:Z

    .line 371
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->progress:I

    .line 372
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->postInvalidate()V

    return-void
.end method

.method public setRimColor(I)V
    .locals 1

    .line 491
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimColor:I

    .line 493
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setRimShader(Landroid/graphics/Shader;)V
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public setRimWidth(I)V
    .locals 1

    .line 532
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimWidth:I

    .line 534
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 535
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public setSpinSpeed(I)V
    .locals 0

    .line 524
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->spinSpeed:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 386
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->text:Ljava/lang/String;

    const-string v0, "\n"

    .line 387
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->splitText:[Ljava/lang/String;

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 512
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textColor:I

    .line 514
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 423
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textSize:I

    .line 425
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 426
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public spin()V
    .locals 1

    const/4 v0, 0x1

    .line 349
    iput-boolean v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->isSpinning:Z

    .line 350
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->postInvalidate()V

    return-void
.end method

.method public stopSpinning()V
    .locals 1

    const/4 v0, 0x0

    .line 339
    iput-boolean v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->isSpinning:Z

    .line 340
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->progress:I

    .line 341
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->postInvalidate()V

    return-void
.end method
