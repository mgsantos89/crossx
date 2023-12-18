.class public Lcom/dacer/androidcharts/BarView;
.super Landroid/view/View;
.source "BarView.java"


# instance fields
.field private final BACKGROUND_COLOR:I

.field private final BAR_SIDE_MARGIN:I

.field private final FOREGROUND_COLOR:I

.field private final MINI_BAR_WIDTH:I

.field private final TEXT_COLOR:I

.field private final TEXT_TOP_MARGIN:I

.field private animator:Ljava/lang/Runnable;

.field private autoSetWidth:Z

.field private barWidth:I

.field private bgPaint:Landroid/graphics/Paint;

.field private bottomTextDescent:I

.field private bottomTextHeight:I

.field private bottomTextList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fgPaint:Landroid/graphics/Paint;

.field private percentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private rect:Landroid/graphics/Rect;

.field private targetPercentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private textPaint:Landroid/graphics/Paint;

.field private topMargin:I


# direct methods
.method static bridge synthetic -$$Nest$fgetpercentList(Lcom/dacer/androidcharts/BarView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/dacer/androidcharts/BarView;->percentList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettargetPercentList(Lcom/dacer/androidcharts/BarView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/dacer/androidcharts/BarView;->targetPercentList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/dacer/androidcharts/BarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p0, Lcom/dacer/androidcharts/BarView;->autoSetWidth:Z

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dacer/androidcharts/BarView;->bottomTextList:Ljava/util/ArrayList;

    const-string v0, "#9B9A9B"

    .line 33
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/BarView;->TEXT_COLOR:I

    const-string v1, "#F6F6F6"

    .line 34
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/dacer/androidcharts/BarView;->BACKGROUND_COLOR:I

    const-string v2, "#FC496D"

    .line 35
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/dacer/androidcharts/BarView;->FOREGROUND_COLOR:I

    .line 37
    new-instance v3, Lcom/dacer/androidcharts/BarView$1;

    invoke-direct {v3, p0}, Lcom/dacer/androidcharts/BarView$1;-><init>(Lcom/dacer/androidcharts/BarView;)V

    iput-object v3, p0, Lcom/dacer/androidcharts/BarView;->animator:Ljava/lang/Runnable;

    .line 65
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/dacer/androidcharts/BarView;->bgPaint:Landroid/graphics/Paint;

    .line 66
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v3, p0, Lcom/dacer/androidcharts/BarView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    new-instance v1, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/dacer/androidcharts/BarView;->bgPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/dacer/androidcharts/BarView;->fgPaint:Landroid/graphics/Paint;

    .line 69
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/dacer/androidcharts/BarView;->rect:Landroid/graphics/Rect;

    const/high16 v1, 0x40a00000    # 5.0f

    .line 71
    invoke-static {p1, v1}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/dacer/androidcharts/BarView;->topMargin:I

    const/high16 v2, 0x41700000    # 15.0f

    .line 72
    invoke-static {p1, v2}, Lcom/dacer/androidcharts/MyUtils;->sp2px(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41b00000    # 22.0f

    .line 73
    invoke-static {p1, v3}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcom/dacer/androidcharts/BarView;->barWidth:I

    .line 74
    invoke-static {p1, v3}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcom/dacer/androidcharts/BarView;->MINI_BAR_WIDTH:I

    .line 75
    invoke-static {p1, v3}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcom/dacer/androidcharts/BarView;->BAR_SIDE_MARGIN:I

    .line 76
    invoke-static {p1, v1}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/dacer/androidcharts/BarView;->TEXT_TOP_MARGIN:I

    .line 77
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/dacer/androidcharts/BarView;->textPaint:Landroid/graphics/Paint;

    .line 78
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    iget-object p1, p0, Lcom/dacer/androidcharts/BarView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object p1, p0, Lcom/dacer/androidcharts/BarView;->textPaint:Landroid/graphics/Paint;

    int-to-float p2, v2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 81
    iget-object p1, p0, Lcom/dacer/androidcharts/BarView;->textPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dacer/androidcharts/BarView;->percentList:Ljava/util/ArrayList;

    return-void
.end method

.method private getMeasurement(II)I
    .locals 2

    .line 198
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 200
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

    .line 205
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    return p2
.end method

.method private measureHeight(I)I
    .locals 1

    const/16 v0, 0xde

    .line 194
    invoke-direct {p0, p1, v0}, Lcom/dacer/androidcharts/BarView;->getMeasurement(II)I

    move-result p1

    return p1
.end method

.method private measureWidth(I)I
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/dacer/androidcharts/BarView;->bottomTextList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/dacer/androidcharts/BarView;->barWidth:I

    iget v2, p0, Lcom/dacer/androidcharts/BarView;->BAR_SIDE_MARGIN:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 189
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/dacer/androidcharts/BarView;->getMeasurement(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 143
    iget-object v0, p0, Lcom/dacer/androidcharts/BarView;->percentList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/dacer/androidcharts/BarView;->percentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 145
    iget-object v3, p0, Lcom/dacer/androidcharts/BarView;->rect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/dacer/androidcharts/BarView;->BAR_SIDE_MARGIN:I

    mul-int v5, v4, v2

    iget v6, p0, Lcom/dacer/androidcharts/BarView;->barWidth:I

    add-int/lit8 v7, v2, -0x1

    mul-int v8, v6, v7

    add-int/2addr v5, v8

    iget v8, p0, Lcom/dacer/androidcharts/BarView;->topMargin:I

    add-int/2addr v4, v6

    mul-int/2addr v4, v2

    .line 148
    invoke-virtual {p0}, Lcom/dacer/androidcharts/BarView;->getHeight()I

    move-result v6

    iget v9, p0, Lcom/dacer/androidcharts/BarView;->bottomTextHeight:I

    sub-int/2addr v6, v9

    iget v9, p0, Lcom/dacer/androidcharts/BarView;->TEXT_TOP_MARGIN:I

    sub-int/2addr v6, v9

    .line 145
    invoke-virtual {v3, v5, v8, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 149
    iget-object v3, p0, Lcom/dacer/androidcharts/BarView;->rect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/dacer/androidcharts/BarView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 158
    iget-object v3, p0, Lcom/dacer/androidcharts/BarView;->rect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/dacer/androidcharts/BarView;->BAR_SIDE_MARGIN:I

    mul-int/2addr v4, v2

    iget v5, p0, Lcom/dacer/androidcharts/BarView;->barWidth:I

    mul-int/2addr v5, v7

    add-int/2addr v4, v5

    iget v5, p0, Lcom/dacer/androidcharts/BarView;->topMargin:I

    .line 159
    invoke-virtual {p0}, Lcom/dacer/androidcharts/BarView;->getHeight()I

    move-result v6

    iget v8, p0, Lcom/dacer/androidcharts/BarView;->topMargin:I

    sub-int/2addr v6, v8

    iget v8, p0, Lcom/dacer/androidcharts/BarView;->bottomTextHeight:I

    sub-int/2addr v6, v8

    iget v8, p0, Lcom/dacer/androidcharts/BarView;->TEXT_TOP_MARGIN:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    iget-object v8, p0, Lcom/dacer/androidcharts/BarView;->percentList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/dacer/androidcharts/BarView;->BAR_SIDE_MARGIN:I

    iget v7, p0, Lcom/dacer/androidcharts/BarView;->barWidth:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v2

    .line 161
    invoke-virtual {p0}, Lcom/dacer/androidcharts/BarView;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/dacer/androidcharts/BarView;->bottomTextHeight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/dacer/androidcharts/BarView;->TEXT_TOP_MARGIN:I

    sub-int/2addr v7, v8

    .line 158
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 162
    iget-object v3, p0, Lcom/dacer/androidcharts/BarView;->rect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/dacer/androidcharts/BarView;->fgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/2addr v2, v1

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/dacer/androidcharts/BarView;->bottomTextList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/dacer/androidcharts/BarView;->bottomTextList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 170
    iget v4, p0, Lcom/dacer/androidcharts/BarView;->BAR_SIDE_MARGIN:I

    mul-int/2addr v4, v2

    iget v5, p0, Lcom/dacer/androidcharts/BarView;->barWidth:I

    add-int/lit8 v6, v2, -0x1

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 171
    invoke-virtual {p0}, Lcom/dacer/androidcharts/BarView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/dacer/androidcharts/BarView;->bottomTextDescent:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/dacer/androidcharts/BarView;->textPaint:Landroid/graphics/Paint;

    .line 170
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lcom/dacer/androidcharts/BarView;->measureWidth(I)I

    move-result p1

    .line 180
    invoke-direct {p0, p2}, Lcom/dacer/androidcharts/BarView;->measureHeight(I)I

    move-result p2

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/dacer/androidcharts/BarView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBottomTextList(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/dacer/androidcharts/BarView;->bottomTextList:Ljava/util/ArrayList;

    .line 92
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/dacer/androidcharts/BarView;->bottomTextDescent:I

    .line 94
    iget v1, p0, Lcom/dacer/androidcharts/BarView;->MINI_BAR_WIDTH:I

    iput v1, p0, Lcom/dacer/androidcharts/BarView;->barWidth:I

    .line 95
    iget-object v1, p0, Lcom/dacer/androidcharts/BarView;->bottomTextList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 96
    iget-object v3, p0, Lcom/dacer/androidcharts/BarView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v0, v4, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 97
    iget v2, p0, Lcom/dacer/androidcharts/BarView;->bottomTextHeight:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/dacer/androidcharts/BarView;->bottomTextHeight:I

    .line 100
    :cond_1
    iget-boolean v2, p0, Lcom/dacer/androidcharts/BarView;->autoSetWidth:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/dacer/androidcharts/BarView;->barWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/dacer/androidcharts/BarView;->barWidth:I

    .line 103
    :cond_2
    iget v2, p0, Lcom/dacer/androidcharts/BarView;->bottomTextDescent:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 104
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcom/dacer/androidcharts/BarView;->bottomTextDescent:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    .line 107
    invoke-virtual {p0, p1}, Lcom/dacer/androidcharts/BarView;->setMinimumWidth(I)V

    .line 108
    invoke-virtual {p0}, Lcom/dacer/androidcharts/BarView;->postInvalidate()V

    return-void
.end method

.method public setDataList(Ljava/util/ArrayList;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dacer/androidcharts/BarView;->targetPercentList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move p2, v0

    .line 119
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 120
    iget-object v3, p0, Lcom/dacer/androidcharts/BarView;->targetPercentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    int-to-float v4, p2

    div-float/2addr v1, v4

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/dacer/androidcharts/BarView;->percentList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/dacer/androidcharts/BarView;->percentList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Lcom/dacer/androidcharts/BarView;->targetPercentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    goto :goto_2

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/dacer/androidcharts/BarView;->percentList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Lcom/dacer/androidcharts/BarView;->targetPercentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_4

    .line 130
    iget-object p1, p0, Lcom/dacer/androidcharts/BarView;->percentList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Lcom/dacer/androidcharts/BarView;->targetPercentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    :goto_1
    if-ge p2, p1, :cond_4

    .line 132
    iget-object v1, p0, Lcom/dacer/androidcharts/BarView;->percentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 125
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/dacer/androidcharts/BarView;->targetPercentList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/dacer/androidcharts/BarView;->percentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    :goto_3
    if-ge p2, p1, :cond_4

    .line 127
    iget-object v0, p0, Lcom/dacer/androidcharts/BarView;->percentList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x2

    .line 135
    invoke-virtual {p0, p1}, Lcom/dacer/androidcharts/BarView;->setMinimumWidth(I)V

    .line 136
    iget-object p1, p0, Lcom/dacer/androidcharts/BarView;->animator:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/dacer/androidcharts/BarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 137
    iget-object p1, p0, Lcom/dacer/androidcharts/BarView;->animator:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/dacer/androidcharts/BarView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
