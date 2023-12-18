.class public Lcom/dacer/androidcharts/PieHelper;
.super Ljava/lang/Object;
.source "PieHelper.java"


# instance fields
.field private color:I

.field private endDegree:F

.field private startDegree:F

.field private sweepDegree:F

.field private targetEndDegree:F

.field private targetStartDegree:F

.field private title:Ljava/lang/String;

.field velocity:I


# direct methods
.method public constructor <init>(F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1, v0, v1}, Lcom/dacer/androidcharts/PieHelper;-><init>(FLjava/lang/String;I)V

    return-void
.end method

.method constructor <init>(FFLcom/dacer/androidcharts/PieHelper;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 19
    iput v0, p0, Lcom/dacer/androidcharts/PieHelper;->velocity:I

    .line 56
    iput p1, p0, Lcom/dacer/androidcharts/PieHelper;->startDegree:F

    .line 57
    iput p2, p0, Lcom/dacer/androidcharts/PieHelper;->endDegree:F

    .line 58
    invoke-virtual {p3}, Lcom/dacer/androidcharts/PieHelper;->getStartDegree()F

    move-result p1

    iput p1, p0, Lcom/dacer/androidcharts/PieHelper;->targetStartDegree:F

    .line 59
    invoke-virtual {p3}, Lcom/dacer/androidcharts/PieHelper;->getEndDegree()F

    move-result p1

    iput p1, p0, Lcom/dacer/androidcharts/PieHelper;->targetEndDegree:F

    .line 60
    invoke-virtual {p3}, Lcom/dacer/androidcharts/PieHelper;->getSweep()F

    move-result p1

    iput p1, p0, Lcom/dacer/androidcharts/PieHelper;->sweepDegree:F

    .line 61
    invoke-virtual {p3}, Lcom/dacer/androidcharts/PieHelper;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dacer/androidcharts/PieHelper;->title:Ljava/lang/String;

    .line 62
    invoke-virtual {p3}, Lcom/dacer/androidcharts/PieHelper;->getColor()I

    move-result p1

    iput p1, p0, Lcom/dacer/androidcharts/PieHelper;->color:I

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0, p2}, Lcom/dacer/androidcharts/PieHelper;-><init>(FLjava/lang/String;I)V

    return-void
.end method

.method constructor <init>(FLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/dacer/androidcharts/PieHelper;-><init>(FLjava/lang/String;I)V

    return-void
.end method

.method constructor <init>(FLjava/lang/String;I)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 19
    iput v0, p0, Lcom/dacer/androidcharts/PieHelper;->velocity:I

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 49
    iput p1, p0, Lcom/dacer/androidcharts/PieHelper;->sweepDegree:F

    .line 50
    iput-object p2, p0, Lcom/dacer/androidcharts/PieHelper;->title:Ljava/lang/String;

    .line 51
    iput p3, p0, Lcom/dacer/androidcharts/PieHelper;->color:I

    return-void
.end method

.method private updateSelf(FFI)F
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    int-to-float v0, p3

    add-float/2addr p1, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    int-to-float v0, p3

    sub-float/2addr p1, v0

    :cond_1
    :goto_0
    sub-float v0, p2, p1

    .line 120
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float p3, p3

    cmpg-float p3, v0, p3

    if-gez p3, :cond_2

    goto :goto_1

    :cond_2
    move p2, p1

    :goto_1
    return p2
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/dacer/androidcharts/PieHelper;->color:I

    return v0
.end method

.method public getEndDegree()F
    .locals 1

    .line 111
    iget v0, p0, Lcom/dacer/androidcharts/PieHelper;->endDegree:F

    return v0
.end method

.method getPercentStr()Ljava/lang/String;
    .locals 2

    .line 92
    iget v0, p0, Lcom/dacer/androidcharts/PieHelper;->sweepDegree:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartDegree()F
    .locals 1

    .line 107
    iget v0, p0, Lcom/dacer/androidcharts/PieHelper;->startDegree:F

    return v0
.end method

.method public getSweep()F
    .locals 1

    .line 103
    iget v0, p0, Lcom/dacer/androidcharts/PieHelper;->sweepDegree:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/dacer/androidcharts/PieHelper;->title:Ljava/lang/String;

    return-object v0
.end method

.method isAtRest()Z
    .locals 2

    .line 82
    iget v0, p0, Lcom/dacer/androidcharts/PieHelper;->startDegree:F

    iget v1, p0, Lcom/dacer/androidcharts/PieHelper;->targetStartDegree:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/dacer/androidcharts/PieHelper;->endDegree:F

    iget v1, p0, Lcom/dacer/androidcharts/PieHelper;->targetEndDegree:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isColorSetted()Z
    .locals 1

    .line 79
    iget v0, p0, Lcom/dacer/androidcharts/PieHelper;->color:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setDegree(FF)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/dacer/androidcharts/PieHelper;->startDegree:F

    .line 76
    iput p2, p0, Lcom/dacer/androidcharts/PieHelper;->endDegree:F

    return-void
.end method

.method setTarget(Lcom/dacer/androidcharts/PieHelper;)Lcom/dacer/androidcharts/PieHelper;
    .locals 1

    .line 66
    invoke-virtual {p1}, Lcom/dacer/androidcharts/PieHelper;->getStartDegree()F

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/PieHelper;->targetStartDegree:F

    .line 67
    invoke-virtual {p1}, Lcom/dacer/androidcharts/PieHelper;->getEndDegree()F

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/PieHelper;->targetEndDegree:F

    .line 68
    invoke-virtual {p1}, Lcom/dacer/androidcharts/PieHelper;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dacer/androidcharts/PieHelper;->title:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/dacer/androidcharts/PieHelper;->getColor()I

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/PieHelper;->color:I

    .line 70
    invoke-virtual {p1}, Lcom/dacer/androidcharts/PieHelper;->getSweep()F

    move-result p1

    iput p1, p0, Lcom/dacer/androidcharts/PieHelper;->sweepDegree:F

    return-object p0
.end method

.method update()V
    .locals 3

    .line 86
    iget v0, p0, Lcom/dacer/androidcharts/PieHelper;->startDegree:F

    iget v1, p0, Lcom/dacer/androidcharts/PieHelper;->targetStartDegree:F

    iget v2, p0, Lcom/dacer/androidcharts/PieHelper;->velocity:I

    invoke-direct {p0, v0, v1, v2}, Lcom/dacer/androidcharts/PieHelper;->updateSelf(FFI)F

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/PieHelper;->startDegree:F

    .line 87
    iget v0, p0, Lcom/dacer/androidcharts/PieHelper;->endDegree:F

    iget v1, p0, Lcom/dacer/androidcharts/PieHelper;->targetEndDegree:F

    iget v2, p0, Lcom/dacer/androidcharts/PieHelper;->velocity:I

    invoke-direct {p0, v0, v1, v2}, Lcom/dacer/androidcharts/PieHelper;->updateSelf(FFI)F

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/PieHelper;->endDegree:F

    .line 88
    iget v1, p0, Lcom/dacer/androidcharts/PieHelper;->startDegree:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/dacer/androidcharts/PieHelper;->sweepDegree:F

    return-void
.end method
