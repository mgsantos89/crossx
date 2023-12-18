.class public Lcom/dacer/androidcharts/ClockPieHelper;
.super Ljava/lang/Object;
.source "ClockPieHelper.java"


# instance fields
.field private end:F

.field private start:F

.field private targetEnd:F

.field private targetStart:F

.field velocity:I


# direct methods
.method constructor <init>(FFLcom/dacer/androidcharts/ClockPieHelper;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 13
    iput v0, p0, Lcom/dacer/androidcharts/ClockPieHelper;->velocity:I

    .line 16
    iput p1, p0, Lcom/dacer/androidcharts/ClockPieHelper;->start:F

    .line 17
    iput p2, p0, Lcom/dacer/androidcharts/ClockPieHelper;->end:F

    .line 18
    invoke-virtual {p3}, Lcom/dacer/androidcharts/ClockPieHelper;->getStart()F

    move-result p1

    iput p1, p0, Lcom/dacer/androidcharts/ClockPieHelper;->targetStart:F

    .line 19
    invoke-virtual {p3}, Lcom/dacer/androidcharts/ClockPieHelper;->getEnd()F

    move-result p1

    iput p1, p0, Lcom/dacer/androidcharts/ClockPieHelper;->targetEnd:F

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 13
    iput v0, p0, Lcom/dacer/androidcharts/ClockPieHelper;->velocity:I

    mul-int/lit8 p1, p1, 0xf

    add-int/lit16 p1, p1, 0x10e

    mul-int/lit8 p2, p2, 0xf

    .line 23
    div-int/lit8 p2, p2, 0x3c

    add-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/dacer/androidcharts/ClockPieHelper;->start:F

    mul-int/lit8 p3, p3, 0xf

    add-int/lit16 p3, p3, 0x10e

    mul-int/lit8 p4, p4, 0xf

    .line 24
    div-int/lit8 p4, p4, 0x3c

    add-int/2addr p3, p4

    int-to-float p1, p3

    iput p1, p0, Lcom/dacer/androidcharts/ClockPieHelper;->end:F

    .line 25
    :goto_0
    iget p1, p0, Lcom/dacer/androidcharts/ClockPieHelper;->end:F

    iget p2, p0, Lcom/dacer/androidcharts/ClockPieHelper;->start:F

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    const/high16 p2, 0x43b40000    # 360.0f

    add-float/2addr p1, p2

    .line 26
    iput p1, p0, Lcom/dacer/androidcharts/ClockPieHelper;->end:F

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 13
    iput v0, p0, Lcom/dacer/androidcharts/ClockPieHelper;->velocity:I

    mul-int/lit8 p1, p1, 0xf

    add-int/lit16 p1, p1, 0x10e

    mul-int/lit8 p2, p2, 0xf

    .line 31
    div-int/lit8 p2, p2, 0x3c

    add-int/2addr p1, p2

    mul-int/lit8 p3, p3, 0xf

    div-int/lit16 p3, p3, 0xe10

    add-int/2addr p1, p3

    int-to-float p1, p1

    iput p1, p0, Lcom/dacer/androidcharts/ClockPieHelper;->start:F

    mul-int/lit8 p4, p4, 0xf

    add-int/lit16 p4, p4, 0x10e

    mul-int/lit8 p5, p5, 0xf

    .line 32
    div-int/lit8 p5, p5, 0x3c

    add-int/2addr p4, p5

    mul-int/lit8 p6, p6, 0xf

    div-int/lit16 p6, p6, 0xe10

    add-int/2addr p4, p6

    int-to-float p1, p4

    iput p1, p0, Lcom/dacer/androidcharts/ClockPieHelper;->end:F

    .line 33
    :goto_0
    iget p1, p0, Lcom/dacer/androidcharts/ClockPieHelper;->end:F

    iget p2, p0, Lcom/dacer/androidcharts/ClockPieHelper;->start:F

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    const/high16 p2, 0x43b40000    # 360.0f

    add-float/2addr p1, p2

    .line 34
    iput p1, p0, Lcom/dacer/androidcharts/ClockPieHelper;->end:F

    goto :goto_0

    :cond_0
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

    .line 77
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
.method public getEnd()F
    .locals 1

    .line 68
    iget v0, p0, Lcom/dacer/androidcharts/ClockPieHelper;->end:F

    return v0
.end method

.method public getStart()F
    .locals 1

    .line 64
    iget v0, p0, Lcom/dacer/androidcharts/ClockPieHelper;->start:F

    return v0
.end method

.method public getSweep()F
    .locals 2

    .line 60
    iget v0, p0, Lcom/dacer/androidcharts/ClockPieHelper;->end:F

    iget v1, p0, Lcom/dacer/androidcharts/ClockPieHelper;->start:F

    sub-float/2addr v0, v1

    return v0
.end method

.method isAtRest()Z
    .locals 2

    .line 51
    iget v0, p0, Lcom/dacer/androidcharts/ClockPieHelper;->start:F

    iget v1, p0, Lcom/dacer/androidcharts/ClockPieHelper;->targetStart:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/dacer/androidcharts/ClockPieHelper;->end:F

    iget v1, p0, Lcom/dacer/androidcharts/ClockPieHelper;->targetEnd:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setTarget(FF)Lcom/dacer/androidcharts/ClockPieHelper;
    .locals 0

    .line 39
    iput p1, p0, Lcom/dacer/androidcharts/ClockPieHelper;->targetStart:F

    .line 40
    iput p2, p0, Lcom/dacer/androidcharts/ClockPieHelper;->targetEnd:F

    return-object p0
.end method

.method setTarget(Lcom/dacer/androidcharts/ClockPieHelper;)Lcom/dacer/androidcharts/ClockPieHelper;
    .locals 1

    .line 45
    invoke-virtual {p1}, Lcom/dacer/androidcharts/ClockPieHelper;->getStart()F

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/ClockPieHelper;->targetStart:F

    .line 46
    invoke-virtual {p1}, Lcom/dacer/androidcharts/ClockPieHelper;->getEnd()F

    move-result p1

    iput p1, p0, Lcom/dacer/androidcharts/ClockPieHelper;->targetEnd:F

    return-object p0
.end method

.method update()V
    .locals 3

    .line 55
    iget v0, p0, Lcom/dacer/androidcharts/ClockPieHelper;->start:F

    iget v1, p0, Lcom/dacer/androidcharts/ClockPieHelper;->targetStart:F

    iget v2, p0, Lcom/dacer/androidcharts/ClockPieHelper;->velocity:I

    invoke-direct {p0, v0, v1, v2}, Lcom/dacer/androidcharts/ClockPieHelper;->updateSelf(FFI)F

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/ClockPieHelper;->start:F

    .line 56
    iget v0, p0, Lcom/dacer/androidcharts/ClockPieHelper;->end:F

    iget v1, p0, Lcom/dacer/androidcharts/ClockPieHelper;->targetEnd:F

    iget v2, p0, Lcom/dacer/androidcharts/ClockPieHelper;->velocity:I

    invoke-direct {p0, v0, v1, v2}, Lcom/dacer/androidcharts/ClockPieHelper;->updateSelf(FFI)F

    move-result v0

    iput v0, p0, Lcom/dacer/androidcharts/ClockPieHelper;->end:F

    return-void
.end method
