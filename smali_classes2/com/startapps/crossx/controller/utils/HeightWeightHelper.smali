.class public Lcom/startapps/crossx/controller/utils/HeightWeightHelper;
.super Ljava/lang/Object;
.source "HeightWeightHelper.java"


# static fields
.field public static final KILOS:Ljava/lang/String; = "kg"

.field public static final PONDES:Ljava/lang/String; = "lbs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private format(D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_0

    .line 32
    :try_start_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide p1

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public cmToFeetConverter(D)D
    .locals 2

    const-wide v0, 0x3fa0cc43317a6dd2L    # 0.032808399

    mul-double/2addr p1, v0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;->format(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public feetToCmConverter(D)D
    .locals 2

    const-wide v0, 0x403e7ae147ae147bL    # 30.48

    mul-double/2addr p1, v0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;->format(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getBMIClassification(D)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const-string/jumbo p1, "unknown"

    return-object p1

    :cond_0
    const-wide v0, 0x4032800000000000L    # 18.5

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    const-string/jumbo p1, "underweight"

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2

    const-string p1, "normal"

    goto :goto_0

    :cond_2
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpg-double p1, p1, v0

    if-gez p1, :cond_3

    const-string p1, "overweight"

    goto :goto_0

    :cond_3
    const-string p1, "obese"

    :goto_0
    return-object p1
.end method

.method public getBMIKg(DD)D
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 87
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    div-double/2addr p3, p1

    invoke-direct {p0, p3, p4}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;->format(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getBMILb(DD)D
    .locals 2

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    const-wide v0, 0x4085f80000000000L    # 703.0

    mul-double/2addr p3, v0

    int-to-double p1, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 98
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    div-double/2addr p3, p1

    invoke-direct {p0, p3, p4}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;->format(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public kgToLbConverter(D)D
    .locals 2

    const-wide v0, 0x400199999999999aL    # 2.2

    mul-double/2addr p1, v0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;->format(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public lbToKgConverter(D)D
    .locals 2

    const-wide v0, 0x400199999999999aL    # 2.2

    div-double/2addr p1, v0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;->format(D)D

    move-result-wide p1

    return-wide p1
.end method
