.class public Lcom/dacer/androidcharts/LineView;
.super Landroid/view/View;
.source "LineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dacer/androidcharts/LineView$Dot;
    }
.end annotation


# static fields
.field public static final SHOW_POPUPS_All:I = 0x1

.field public static final SHOW_POPUPS_MAXMIN_ONLY:I = 0x2

.field public static final SHOW_POPUPS_NONE:I = 0x3


# instance fields
.field private final BACKGROUND_LINE_COLOR:I

.field private final BOTTOM_TEXT_COLOR:I

.field private final DOT_INNER_CIR_RADIUS:I

.field private final DOT_OUTER_CIR_RADIUS:I

.field private final MIN_HORIZONTAL_GRID_NUM:I

.field private final MIN_TOP_LINE_LENGTH:I

.field private final MIN_VERTICAL_GRID_NUM:I

.field private animator:Ljava/lang/Runnable;

.field private autoSetDataOfGird:Z

.field private autoSetGridWidth:Z

.field private backgroundGridWidth:I

.field private final bottomLineLength:I

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

.field private bottomTextPaint:Landroid/graphics/Paint;

.field private final bottomTextTopMargin:I

.field private final bottomTriangleHeight:I

.field private colorArray:[Ljava/lang/String;

.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dataLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private dataOfAGird:I

.field private drawDotLine:Ljava/lang/Boolean;

.field private drawDotList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dacer/androidcharts/LineView$Dot;",
            ">;"
        }
    .end annotation
.end field

.field private drawDotLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/dacer/androidcharts/LineView$Dot;",
            ">;>;"
        }
    .end annotation
.end field

.field private mViewHeight:I

.field private onItemResultListener:Lcom/dacer/androidcharts/OnItemResult;

.field private pointToSelect:Lcom/dacer/androidcharts/LineView$Dot;

.field private final popupBottomMargin:I

.field private popupColorArray:[I

.field private popupTextPaint:Landroid/graphics/Paint;

.field private final popupTopPadding:I

.field private selectedDot:Lcom/dacer/androidcharts/LineView$Dot;

.field public showPopup:Z

.field private showPopupType:I

.field private sideLineLength:I

.field private final tmpPoint:Landroid/graphics/Point;

.field private topLineLength:I

.field private xCoordinateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private yCoordinateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetdrawDotLists(Lcom/dacer/androidcharts/LineView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/dacer/androidcharts/LineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/dacer/androidcharts/LineView;->autoSetDataOfGird:Z

    .line 30
    iput-boolean p1, p0, Lcom/dacer/androidcharts/LineView;->autoSetGridWidth:Z

    const/16 p2, 0xa

    .line 31
    iput p2, p0, Lcom/dacer/androidcharts/LineView;->dataOfAGird:I

    const/4 p2, 0x0

    .line 32
    iput p2, p0, Lcom/dacer/androidcharts/LineView;->bottomTextHeight:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dacer/androidcharts/LineView;->bottomTextList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dacer/androidcharts/LineView;->xCoordinateList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dacer/androidcharts/LineView;->yCoordinateList:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dacer/androidcharts/LineView;->drawDotList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dacer/androidcharts/LineView;->bottomTextPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dacer/androidcharts/LineView;->popupTextPaint:Landroid/graphics/Paint;

    const/16 v0, 0xc

    .line 49
    iput v0, p0, Lcom/dacer/androidcharts/LineView;->bottomTriangleHeight:I

    .line 50
    iput-boolean p1, p0, Lcom/dacer/androidcharts/LineView;->showPopup:Z

    .line 55
    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/LineView;->topLineLength:I

    .line 57
    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v0, v2}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    const/4 v3, 0x3

    div-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/dacer/androidcharts/LineView;->sideLineLength:I

    .line 59
    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/LineView;->backgroundGridWidth:I

    .line 64
    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/LineView;->popupTopPadding:I

    .line 65
    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v0, v4}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/LineView;->popupBottomMargin:I

    .line 66
    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/dacer/androidcharts/MyUtils;->sp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/LineView;->bottomTextTopMargin:I

    .line 67
    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-static {v0, v5}, Lcom/dacer/androidcharts/MyUtils;->sp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/LineView;->bottomLineLength:I

    .line 68
    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/LineView;->DOT_INNER_CIR_RADIUS:I

    .line 69
    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/LineView;->DOT_OUTER_CIR_RADIUS:I

    .line 70
    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/LineView;->MIN_TOP_LINE_LENGTH:I

    const/4 v0, 0x4

    .line 71
    iput v0, p0, Lcom/dacer/androidcharts/LineView;->MIN_VERTICAL_GRID_NUM:I

    .line 72
    iput p1, p0, Lcom/dacer/androidcharts/LineView;->MIN_HORIZONTAL_GRID_NUM:I

    const-string v0, "#EEEEEE"

    .line 73
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/LineView;->BACKGROUND_LINE_COLOR:I

    const-string v0, "#9B9A9B"

    .line 74
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/LineView;->BOTTOM_TEXT_COLOR:I

    .line 80
    iput v3, p0, Lcom/dacer/androidcharts/LineView;->showPopupType:I

    .line 86
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/dacer/androidcharts/LineView;->drawDotLine:Ljava/lang/Boolean;

    const-string p2, "#2980b9"

    const-string v2, "#1abc9c"

    const-string v3, "#e74c3c"

    .line 88
    filled-new-array {v3, p2, v2}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dacer/androidcharts/LineView;->colorArray:[Ljava/lang/String;

    .line 90
    sget p2, Lcom/dacer/androidcharts/R$drawable;->popup_red:I

    sget v2, Lcom/dacer/androidcharts/R$drawable;->popup_blue:I

    sget v3, Lcom/dacer/androidcharts/R$drawable;->popup_green:I

    filled-new-array {p2, v2, v3}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/dacer/androidcharts/LineView;->popupColorArray:[I

    .line 93
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/dacer/androidcharts/LineView;->tmpPoint:Landroid/graphics/Point;

    .line 99
    new-instance p2, Lcom/dacer/androidcharts/LineView$1;

    invoke-direct {p2, p0}, Lcom/dacer/androidcharts/LineView$1;-><init>(Lcom/dacer/androidcharts/LineView;)V

    iput-object p2, p0, Lcom/dacer/androidcharts/LineView;->animator:Ljava/lang/Runnable;

    .line 123
    iget-object p2, p0, Lcom/dacer/androidcharts/LineView;->popupTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    iget-object p2, p0, Lcom/dacer/androidcharts/LineView;->popupTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object p2, p0, Lcom/dacer/androidcharts/LineView;->popupTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v2, v3}, Lcom/dacer/androidcharts/MyUtils;->sp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 126
    iget-object p2, p0, Lcom/dacer/androidcharts/LineView;->popupTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    iget-object p2, p0, Lcom/dacer/androidcharts/LineView;->popupTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 129
    iget-object p2, p0, Lcom/dacer/androidcharts/LineView;->bottomTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    iget-object p1, p0, Lcom/dacer/androidcharts/LineView;->bottomTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/dacer/androidcharts/MyUtils;->sp2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 131
    iget-object p1, p0, Lcom/dacer/androidcharts/LineView;->bottomTextPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 132
    iget-object p1, p0, Lcom/dacer/androidcharts/LineView;->bottomTextPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object p1, p0, Lcom/dacer/androidcharts/LineView;->bottomTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private drawBackgroundLines(Landroid/graphics/Canvas;)V
    .locals 8

    .line 410
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 411
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 412
    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 413
    iget v0, p0, Lcom/dacer/androidcharts/LineView;->BACKGROUND_LINE_COLOR:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 414
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-direct {v0, v2, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 437
    iget-object v0, p0, Lcom/dacer/androidcharts/LineView;->bottomTextList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    .line 438
    :goto_0
    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->bottomTextList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 439
    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->bottomTextList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget v3, p0, Lcom/dacer/androidcharts/LineView;->sideLineLength:I

    iget v4, p0, Lcom/dacer/androidcharts/LineView;->backgroundGridWidth:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/dacer/androidcharts/LineView;->mViewHeight:I

    iget v5, p0, Lcom/dacer/androidcharts/LineView;->bottomTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/dacer/androidcharts/LineView;->bottomTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/dacer/androidcharts/LineView;->drawDotLine:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    move v7, v1

    .line 446
    :goto_1
    iget-object v0, p0, Lcom/dacer/androidcharts/LineView;->yCoordinateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/dacer/androidcharts/LineView;->yCoordinateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v7

    iget v1, p0, Lcom/dacer/androidcharts/LineView;->dataOfAGird:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 448
    iget-object v0, p0, Lcom/dacer/androidcharts/LineView;->yCoordinateList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/dacer/androidcharts/LineView;->yCoordinateList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private drawDots(Landroid/graphics/Canvas;)V
    .locals 8

    .line 376
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 377
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 378
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const-string v2, "#FFFFFF"

    .line 379
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 380
    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 381
    :goto_0
    iget-object v3, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 382
    iget-object v3, p0, Lcom/dacer/androidcharts/LineView;->colorArray:[Ljava/lang/String;

    rem-int/lit8 v4, v2, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 383
    iget-object v3, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dacer/androidcharts/LineView$Dot;

    .line 384
    iget v5, v4, Lcom/dacer/androidcharts/LineView$Dot;->x:I

    int-to-float v5, v5

    iget v6, v4, Lcom/dacer/androidcharts/LineView$Dot;->y:I

    int-to-float v6, v6

    iget v7, p0, Lcom/dacer/androidcharts/LineView;->DOT_OUTER_CIR_RADIUS:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 385
    iget v5, v4, Lcom/dacer/androidcharts/LineView$Dot;->x:I

    int-to-float v5, v5

    iget v4, v4, Lcom/dacer/androidcharts/LineView$Dot;->y:I

    int-to-float v4, v4

    iget v6, p0, Lcom/dacer/androidcharts/LineView;->DOT_INNER_CIR_RADIUS:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v4, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawLines(Landroid/graphics/Canvas;)V
    .locals 11

    .line 393
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v7, 0x1

    .line 394
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 395
    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v8, 0x0

    move v9, v8

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/dacer/androidcharts/LineView;->colorArray:[Ljava/lang/String;

    rem-int/lit8 v1, v9, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v8

    .line 398
    :goto_1
    iget-object v1, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v7

    if-ge v0, v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dacer/androidcharts/LineView$Dot;

    iget v1, v1, Lcom/dacer/androidcharts/LineView$Dot;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    .line 400
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dacer/androidcharts/LineView$Dot;

    iget v2, v2, Lcom/dacer/androidcharts/LineView$Dot;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    .line 401
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dacer/androidcharts/LineView$Dot;

    iget v0, v0, Lcom/dacer/androidcharts/LineView$Dot;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    .line 402
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dacer/androidcharts/LineView$Dot;

    iget v0, v0, Lcom/dacer/androidcharts/LineView$Dot;->y:I

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, v6

    .line 399
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v0, v10

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawPopup(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Point;I)V
    .locals 7

    .line 345
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 346
    :goto_0
    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x40a00000    # 5.0f

    if-eqz v2, :cond_1

    const/high16 v2, 0x41000000    # 8.0f

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v0, v2}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 347
    iget v2, p3, Landroid/graphics/Point;->x:I

    .line 348
    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr p3, v3

    .line 349
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 350
    iget-object v4, p0, Lcom/dacer/androidcharts/LineView;->popupTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, p2, v1, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 351
    iget-object v1, p0, Lcom/dacer/androidcharts/LineView;->popupTextPaint:Landroid/graphics/Paint;

    const v4, -0x777778

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    sub-int/2addr v4, v0

    .line 354
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, p3, v5

    add-int/lit8 v5, v5, -0xc

    iget v6, p0, Lcom/dacer/androidcharts/LineView;->popupTopPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/dacer/androidcharts/LineView;->popupBottomMargin:I

    sub-int/2addr v5, v6

    .line 355
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    iget v0, p0, Lcom/dacer/androidcharts/LineView;->popupTopPadding:I

    add-int/2addr v0, p3

    iget v6, p0, Lcom/dacer/androidcharts/LineView;->popupBottomMargin:I

    sub-int/2addr v0, v6

    invoke-direct {v1, v4, v5, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 358
    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    check-cast p4, Landroid/graphics/drawable/NinePatchDrawable;

    .line 360
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float p4, v2

    add-int/lit8 p3, p3, -0xc

    .line 361
    iget v0, p0, Lcom/dacer/androidcharts/LineView;->popupBottomMargin:I

    sub-int/2addr p3, v0

    int-to-float p3, p3

    iget-object v0, p0, Lcom/dacer/androidcharts/LineView;->popupTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private findPointAt(II)Lcom/dacer/androidcharts/LineView$Dot;
    .locals 10

    .line 507
    iget-object v0, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 511
    :cond_0
    iget v0, p0, Lcom/dacer/androidcharts/LineView;->backgroundGridWidth:I

    div-int/lit8 v0, v0, 0x2

    .line 512
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 514
    iget-object v3, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 515
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dacer/androidcharts/LineView$Dot;

    .line 516
    iget v6, v5, Lcom/dacer/androidcharts/LineView$Dot;->x:I

    .line 517
    iget v7, v5, Lcom/dacer/androidcharts/LineView$Dot;->y:I

    sub-int v8, v6, v0

    sub-int v9, v7, v0

    add-int/2addr v6, v0

    add-int/2addr v7, v0

    .line 519
    invoke-virtual {v2, v8, v9, v6, v7}, Landroid/graphics/Region;->set(IIII)Z

    .line 520
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_2

    return-object v5

    :cond_3
    return-object v1
.end method

.method private getHorizontalGridNum()I
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/dacer/androidcharts/LineView;->bottomTextList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method private getMeasurement(II)I
    .locals 2

    .line 475
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 477
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

    .line 482
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    return p2
.end method

.method private getPopupHeight()I
    .locals 6

    .line 365
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 366
    iget-object v1, p0, Lcom/dacer/androidcharts/LineView;->popupTextPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "9"

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 367
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    .line 368
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 v3, v3, -0xc

    iget v4, p0, Lcom/dacer/androidcharts/LineView;->popupTopPadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/dacer/androidcharts/LineView;->popupBottomMargin:I

    sub-int/2addr v3, v4

    .line 369
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v4, p0, Lcom/dacer/androidcharts/LineView;->popupTopPadding:I

    iget v5, p0, Lcom/dacer/androidcharts/LineView;->popupBottomMargin:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 371
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method private getVerticalGridlNum()I
    .locals 5

    .line 219
    iget-object v0, p0, Lcom/dacer/androidcharts/LineView;->dataLists:Ljava/util/ArrayList;

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/dacer/androidcharts/LineView;->dataLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 221
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 222
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ge v1, v4, :cond_1

    .line 223
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private measureHeight(I)I
    .locals 1

    const/4 v0, 0x0

    .line 471
    invoke-direct {p0, p1, v0}, Lcom/dacer/androidcharts/LineView;->getMeasurement(II)I

    move-result p1

    return p1
.end method

.method private measureWidth(I)I
    .locals 2

    .line 464
    invoke-direct {p0}, Lcom/dacer/androidcharts/LineView;->getHorizontalGridNum()I

    move-result v0

    .line 465
    iget v1, p0, Lcom/dacer/androidcharts/LineView;->backgroundGridWidth:I

    mul-int/2addr v1, v0

    iget v0, p0, Lcom/dacer/androidcharts/LineView;->sideLineLength:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 466
    invoke-direct {p0, p1, v1}, Lcom/dacer/androidcharts/LineView;->getMeasurement(II)I

    move-result p1

    return p1
.end method

.method private refreshAfterDataChanged()V
    .locals 1

    .line 211
    invoke-direct {p0}, Lcom/dacer/androidcharts/LineView;->getVerticalGridlNum()I

    move-result v0

    .line 212
    invoke-direct {p0, v0}, Lcom/dacer/androidcharts/LineView;->refreshTopLineLength(I)V

    .line 213
    invoke-direct {p0, v0}, Lcom/dacer/androidcharts/LineView;->refreshYCoordinateList(I)V

    .line 214
    invoke-direct {p0, v0}, Lcom/dacer/androidcharts/LineView;->refreshDrawDotList(I)V

    return-void
.end method

.method private refreshDrawDotList(I)V
    .locals 14

    .line 257
    iget-object v0, p0, Lcom/dacer/androidcharts/LineView;->dataLists:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 258
    iget-object v0, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    .line 259
    :goto_0
    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->dataLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 263
    :goto_1
    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->dataLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 264
    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move v10, v1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v10, v2

    :goto_2
    move v11, v1

    .line 266
    :goto_3
    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->dataLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_3

    .line 267
    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->xCoordinateList:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 268
    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->yCoordinateList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/dacer/androidcharts/LineView;->dataLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v2, v10, -0x1

    if-le v11, v2, :cond_2

    .line 271
    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/util/ArrayList;

    new-instance v13, Lcom/dacer/androidcharts/LineView$Dot;

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->dataLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/Integer;

    move-object v2, v13

    move-object v3, p0

    move v4, v6

    move v9, v0

    invoke-direct/range {v2 .. v9}, Lcom/dacer/androidcharts/LineView$Dot;-><init>(Lcom/dacer/androidcharts/LineView;IIIILjava/lang/Integer;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 274
    :cond_2
    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dacer/androidcharts/LineView$Dot;

    iget-object v4, p0, Lcom/dacer/androidcharts/LineView;->dataLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3, v6, v7, v4, v0}, Lcom/dacer/androidcharts/LineView$Dot;->setTargetData(IILjava/lang/Integer;I)Lcom/dacer/androidcharts/LineView$Dot;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 278
    :cond_3
    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/dacer/androidcharts/LineView;->dataLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v2, v3

    move v3, v1

    :goto_5
    if-ge v3, v2, :cond_4

    .line 280
    iget-object v4, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 284
    :cond_5
    iget-object p1, p0, Lcom/dacer/androidcharts/LineView;->animator:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/dacer/androidcharts/LineView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 285
    iget-object p1, p0, Lcom/dacer/androidcharts/LineView;->animator:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/dacer/androidcharts/LineView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private refreshTopLineLength(I)V
    .locals 2

    .line 291
    iget v0, p0, Lcom/dacer/androidcharts/LineView;->mViewHeight:I

    iget v1, p0, Lcom/dacer/androidcharts/LineView;->topLineLength:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/dacer/androidcharts/LineView;->bottomTextHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/dacer/androidcharts/LineView;->bottomTextTopMargin:I

    sub-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x2

    div-int/2addr v0, p1

    .line 292
    invoke-direct {p0}, Lcom/dacer/androidcharts/LineView;->getPopupHeight()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/dacer/androidcharts/LineView;->getPopupHeight()I

    move-result p1

    iget v0, p0, Lcom/dacer/androidcharts/LineView;->DOT_OUTER_CIR_RADIUS:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/dacer/androidcharts/LineView;->DOT_INNER_CIR_RADIUS:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/dacer/androidcharts/LineView;->topLineLength:I

    goto :goto_0

    .line 295
    :cond_0
    iget p1, p0, Lcom/dacer/androidcharts/LineView;->MIN_TOP_LINE_LENGTH:I

    iput p1, p0, Lcom/dacer/androidcharts/LineView;->topLineLength:I

    :goto_0
    return-void
.end method

.method private refreshXCoordinateList(I)V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/dacer/androidcharts/LineView;->xCoordinateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/dacer/androidcharts/LineView;->xCoordinateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/dacer/androidcharts/LineView;->sideLineLength:I

    iget v3, p0, Lcom/dacer/androidcharts/LineView;->backgroundGridWidth:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private refreshYCoordinateList(I)V
    .locals 5

    .line 248
    iget-object v0, p0, Lcom/dacer/androidcharts/LineView;->yCoordinateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/dacer/androidcharts/LineView;->yCoordinateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/dacer/androidcharts/LineView;->topLineLength:I

    iget v3, p0, Lcom/dacer/androidcharts/LineView;->mViewHeight:I

    sub-int/2addr v3, v2

    iget v4, p0, Lcom/dacer/androidcharts/LineView;->bottomTextHeight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/dacer/androidcharts/LineView;->bottomTextTopMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/dacer/androidcharts/LineView;->bottomLineLength:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/dacer/androidcharts/LineView;->bottomTextDescent:I

    sub-int/2addr v3, v4

    mul-int/2addr v3, v0

    div-int/2addr v3, p1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 301
    invoke-direct {p0, p1}, Lcom/dacer/androidcharts/LineView;->drawBackgroundLines(Landroid/graphics/Canvas;)V

    .line 302
    invoke-direct {p0, p1}, Lcom/dacer/androidcharts/LineView;->drawLines(Landroid/graphics/Canvas;)V

    .line 303
    invoke-direct {p0, p1}, Lcom/dacer/androidcharts/LineView;->drawDots(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    move v1, v0

    .line 306
    :goto_0
    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 307
    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->dataLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 308
    iget-object v3, p0, Lcom/dacer/androidcharts/LineView;->dataLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 312
    iget-object v4, p0, Lcom/dacer/androidcharts/LineView;->drawDotLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dacer/androidcharts/LineView$Dot;

    .line 313
    iget v7, p0, Lcom/dacer/androidcharts/LineView;->showPopupType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 314
    iget-object v7, p0, Lcom/dacer/androidcharts/LineView;->onItemResultListener:Lcom/dacer/androidcharts/OnItemResult;

    invoke-interface {v7, v5}, Lcom/dacer/androidcharts/OnItemResult;->onItemDataChart(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/dacer/androidcharts/LineView;->tmpPoint:Landroid/graphics/Point;

    invoke-virtual {v6, v8}, Lcom/dacer/androidcharts/LineView$Dot;->setupPoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    iget-object v8, p0, Lcom/dacer/androidcharts/LineView;->popupColorArray:[I

    rem-int/lit8 v9, v1, 0x3

    aget v8, v8, v9

    invoke-direct {p0, p1, v7, v6, v8}, Lcom/dacer/androidcharts/LineView;->drawPopup(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Point;I)V

    goto :goto_2

    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 316
    iget v7, v6, Lcom/dacer/androidcharts/LineView$Dot;->data:I

    if-ne v7, v2, :cond_1

    .line 317
    iget v7, v6, Lcom/dacer/androidcharts/LineView$Dot;->data:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/dacer/androidcharts/LineView;->tmpPoint:Landroid/graphics/Point;

    invoke-virtual {v6, v8}, Lcom/dacer/androidcharts/LineView$Dot;->setupPoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v8

    iget-object v9, p0, Lcom/dacer/androidcharts/LineView;->popupColorArray:[I

    rem-int/lit8 v10, v1, 0x3

    aget v9, v9, v10

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/dacer/androidcharts/LineView;->drawPopup(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Point;I)V

    .line 318
    :cond_1
    iget v7, v6, Lcom/dacer/androidcharts/LineView$Dot;->data:I

    if-ne v7, v3, :cond_2

    .line 319
    iget v7, v6, Lcom/dacer/androidcharts/LineView$Dot;->data:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/dacer/androidcharts/LineView;->tmpPoint:Landroid/graphics/Point;

    invoke-virtual {v6, v8}, Lcom/dacer/androidcharts/LineView$Dot;->setupPoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    iget-object v8, p0, Lcom/dacer/androidcharts/LineView;->popupColorArray:[I

    rem-int/lit8 v9, v1, 0x3

    aget v8, v8, v9

    invoke-direct {p0, p1, v7, v6, v8}, Lcom/dacer/androidcharts/LineView;->drawPopup(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Point;I)V

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 326
    :cond_4
    iget-boolean v0, p0, Lcom/dacer/androidcharts/LineView;->showPopup:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dacer/androidcharts/LineView;->selectedDot:Lcom/dacer/androidcharts/LineView$Dot;

    if-eqz v0, :cond_5

    .line 327
    iget v0, v0, Lcom/dacer/androidcharts/LineView$Dot;->data:I

    .line 328
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dacer/androidcharts/LineView;->selectedDot:Lcom/dacer/androidcharts/LineView$Dot;

    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->tmpPoint:Landroid/graphics/Point;

    .line 329
    invoke-virtual {v1, v2}, Lcom/dacer/androidcharts/LineView$Dot;->setupPoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->popupColorArray:[I

    iget-object v3, p0, Lcom/dacer/androidcharts/LineView;->selectedDot:Lcom/dacer/androidcharts/LineView$Dot;

    iget v3, v3, Lcom/dacer/androidcharts/LineView$Dot;->linenumber:I

    rem-int/lit8 v3, v3, 0x3

    aget v2, v2, v3

    .line 327
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/dacer/androidcharts/LineView;->drawPopup(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Point;I)V

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 456
    invoke-direct {p0, p1}, Lcom/dacer/androidcharts/LineView;->measureWidth(I)I

    move-result p1

    .line 457
    invoke-direct {p0, p2}, Lcom/dacer/androidcharts/LineView;->measureHeight(I)I

    move-result p2

    iput p2, p0, Lcom/dacer/androidcharts/LineView;->mViewHeight:I

    .line 459
    invoke-direct {p0}, Lcom/dacer/androidcharts/LineView;->refreshAfterDataChanged()V

    .line 460
    iget p2, p0, Lcom/dacer/androidcharts/LineView;->mViewHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/dacer/androidcharts/LineView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/dacer/androidcharts/LineView;->findPointAt(II)Lcom/dacer/androidcharts/LineView$Dot;

    move-result-object p1

    iput-object p1, p0, Lcom/dacer/androidcharts/LineView;->pointToSelect:Lcom/dacer/androidcharts/LineView$Dot;

    goto :goto_0

    .line 495
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 496
    iget-object p1, p0, Lcom/dacer/androidcharts/LineView;->pointToSelect:Lcom/dacer/androidcharts/LineView$Dot;

    if-eqz p1, :cond_1

    .line 497
    iput-object p1, p0, Lcom/dacer/androidcharts/LineView;->selectedDot:Lcom/dacer/androidcharts/LineView$Dot;

    const/4 p1, 0x0

    .line 498
    iput-object p1, p0, Lcom/dacer/androidcharts/LineView;->pointToSelect:Lcom/dacer/androidcharts/LineView$Dot;

    .line 499
    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->postInvalidate()V

    :cond_1
    :goto_0
    return v1
.end method

.method public setBottomTextList(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/dacer/androidcharts/LineView;->dataList:Ljava/util/ArrayList;

    .line 142
    iput-object p1, p0, Lcom/dacer/androidcharts/LineView;->bottomTextList:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    .line 147
    iput v1, p0, Lcom/dacer/androidcharts/LineView;->bottomTextDescent:I

    .line 148
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v2, ""

    move v3, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 149
    iget-object v5, p0, Lcom/dacer/androidcharts/LineView;->bottomTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v4, v1, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 150
    iget v5, p0, Lcom/dacer/androidcharts/LineView;->bottomTextHeight:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 151
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, p0, Lcom/dacer/androidcharts/LineView;->bottomTextHeight:I

    .line 153
    :cond_1
    iget-boolean v5, p0, Lcom/dacer/androidcharts/LineView;->autoSetGridWidth:Z

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 154
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object v2, v4

    .line 157
    :cond_2
    iget v4, p0, Lcom/dacer/androidcharts/LineView;->bottomTextDescent:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 158
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iput v4, p0, Lcom/dacer/androidcharts/LineView;->bottomTextDescent:I

    goto :goto_0

    .line 162
    :cond_3
    iget-boolean p1, p0, Lcom/dacer/androidcharts/LineView;->autoSetGridWidth:Z

    if-eqz p1, :cond_5

    .line 163
    iget p1, p0, Lcom/dacer/androidcharts/LineView;->backgroundGridWidth:I

    if-ge p1, v3, :cond_4

    .line 164
    iget-object p1, p0, Lcom/dacer/androidcharts/LineView;->bottomTextPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p1

    float-to-int p1, p1

    add-int/2addr p1, v3

    iput p1, p0, Lcom/dacer/androidcharts/LineView;->backgroundGridWidth:I

    .line 166
    :cond_4
    iget p1, p0, Lcom/dacer/androidcharts/LineView;->sideLineLength:I

    div-int/lit8 v3, v3, 0x2

    if-ge p1, v3, :cond_5

    .line 167
    iput v3, p0, Lcom/dacer/androidcharts/LineView;->sideLineLength:I

    .line 171
    :cond_5
    invoke-direct {p0}, Lcom/dacer/androidcharts/LineView;->getHorizontalGridNum()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/dacer/androidcharts/LineView;->refreshXCoordinateList(I)V

    return-void
.end method

.method public setDataList(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/dacer/androidcharts/LineView;->selectedDot:Lcom/dacer/androidcharts/LineView$Dot;

    .line 181
    iput-object p1, p0, Lcom/dacer/androidcharts/LineView;->dataLists:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 183
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/dacer/androidcharts/LineView;->bottomTextList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "dacer.LineView error: dataList.size() > bottomTextList.size() !!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 189
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 190
    iget-boolean v4, p0, Lcom/dacer/androidcharts/LineView;->autoSetDataOfGird:Z

    if-eqz v4, :cond_4

    .line 191
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 192
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 193
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 197
    :cond_4
    iput v3, p0, Lcom/dacer/androidcharts/LineView;->dataOfAGird:I

    .line 198
    :goto_2
    div-int/lit8 v2, v1, 0xa

    iget v3, p0, Lcom/dacer/androidcharts/LineView;->dataOfAGird:I

    if-le v2, v3, :cond_2

    mul-int/lit8 v3, v3, 0xa

    .line 199
    iput v3, p0, Lcom/dacer/androidcharts/LineView;->dataOfAGird:I

    goto :goto_2

    .line 203
    :cond_5
    invoke-direct {p0}, Lcom/dacer/androidcharts/LineView;->refreshAfterDataChanged()V

    .line 204
    iput-boolean v3, p0, Lcom/dacer/androidcharts/LineView;->showPopup:Z

    .line 205
    invoke-virtual {p0, v0}, Lcom/dacer/androidcharts/LineView;->setMinimumWidth(I)V

    .line 207
    invoke-virtual {p0}, Lcom/dacer/androidcharts/LineView;->postInvalidate()V

    return-void
.end method

.method public setDrawDotLine(Ljava/lang/Boolean;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/dacer/androidcharts/LineView;->drawDotLine:Ljava/lang/Boolean;

    return-void
.end method

.method public setOnItemResultListener(Lcom/dacer/androidcharts/OnItemResult;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/dacer/androidcharts/LineView;->onItemResultListener:Lcom/dacer/androidcharts/OnItemResult;

    return-void
.end method

.method public setShowPopup(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/dacer/androidcharts/LineView;->showPopupType:I

    return-void
.end method
