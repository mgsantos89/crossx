.class Lcom/dacer/androidcharts/LineView$Dot;
.super Ljava/lang/Object;
.source "LineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dacer/androidcharts/LineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Dot"
.end annotation


# instance fields
.field data:I

.field linenumber:I

.field targetX:I

.field targetY:I

.field final synthetic this$0:Lcom/dacer/androidcharts/LineView;

.field velocity:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(Lcom/dacer/androidcharts/LineView;IIIILjava/lang/Integer;I)V
    .locals 1

    .line 543
    iput-object p1, p0, Lcom/dacer/androidcharts/LineView$Dot;->this$0:Lcom/dacer/androidcharts/LineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    invoke-virtual {p1}, Lcom/dacer/androidcharts/LineView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p1, v0}, Lcom/dacer/androidcharts/MyUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/dacer/androidcharts/LineView$Dot;->velocity:I

    .line 544
    iput p2, p0, Lcom/dacer/androidcharts/LineView$Dot;->x:I

    .line 545
    iput p3, p0, Lcom/dacer/androidcharts/LineView$Dot;->y:I

    .line 546
    iput p7, p0, Lcom/dacer/androidcharts/LineView$Dot;->linenumber:I

    .line 547
    invoke-virtual {p0, p4, p5, p6, p7}, Lcom/dacer/androidcharts/LineView$Dot;->setTargetData(IILjava/lang/Integer;I)Lcom/dacer/androidcharts/LineView$Dot;

    return-void
.end method

.method private updateSelf(III)I
    .locals 1

    if-ge p1, p2, :cond_0

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    sub-int/2addr p1, p3

    :cond_1
    :goto_0
    sub-int v0, p2, p1

    .line 578
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p3, :cond_2

    goto :goto_1

    :cond_2
    move p2, p1

    :goto_1
    return p2
.end method


# virtual methods
.method isAtRest()Z
    .locals 2

    .line 564
    iget v0, p0, Lcom/dacer/androidcharts/LineView$Dot;->x:I

    iget v1, p0, Lcom/dacer/androidcharts/LineView$Dot;->targetX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/dacer/androidcharts/LineView$Dot;->y:I

    iget v1, p0, Lcom/dacer/androidcharts/LineView$Dot;->targetY:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setTargetData(IILjava/lang/Integer;I)Lcom/dacer/androidcharts/LineView$Dot;
    .locals 0

    .line 556
    iput p1, p0, Lcom/dacer/androidcharts/LineView$Dot;->targetX:I

    .line 557
    iput p2, p0, Lcom/dacer/androidcharts/LineView$Dot;->targetY:I

    .line 558
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/dacer/androidcharts/LineView$Dot;->data:I

    .line 559
    iput p4, p0, Lcom/dacer/androidcharts/LineView$Dot;->linenumber:I

    return-object p0
.end method

.method setupPoint(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2

    .line 551
    iget v0, p0, Lcom/dacer/androidcharts/LineView$Dot;->x:I

    iget v1, p0, Lcom/dacer/androidcharts/LineView$Dot;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-object p1
.end method

.method update()V
    .locals 3

    .line 568
    iget v0, p0, Lcom/dacer/androidcharts/LineView$Dot;->x:I

    iget v1, p0, Lcom/dacer/androidcharts/LineView$Dot;->targetX:I

    iget v2, p0, Lcom/dacer/androidcharts/LineView$Dot;->velocity:I

    invoke-direct {p0, v0, v1, v2}, Lcom/dacer/androidcharts/LineView$Dot;->updateSelf(III)I

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/LineView$Dot;->x:I

    .line 569
    iget v0, p0, Lcom/dacer/androidcharts/LineView$Dot;->y:I

    iget v1, p0, Lcom/dacer/androidcharts/LineView$Dot;->targetY:I

    iget v2, p0, Lcom/dacer/androidcharts/LineView$Dot;->velocity:I

    invoke-direct {p0, v0, v1, v2}, Lcom/dacer/androidcharts/LineView$Dot;->updateSelf(III)I

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/LineView$Dot;->y:I

    return-void
.end method
