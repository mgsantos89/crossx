.class public Lcom/edmodo/cropper/util/HandleUtil;
.super Ljava/lang/Object;
.source "HandleUtil.java"


# static fields
.field private static final TARGET_RADIUS_DP:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static focusCenter()Z
    .locals 1

    .line 287
    invoke-static {}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->showGuidelines()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getOffset(Lcom/edmodo/cropper/cropwindow/handle/Handle;FFFFFF)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/edmodo/cropper/cropwindow/handle/Handle;",
            "FFFFFF)",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 126
    :cond_0
    sget-object v0, Lcom/edmodo/cropper/util/HandleUtil$1;->$SwitchMap$com$edmodo$cropper$cropwindow$handle$Handle:[I

    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/handle/Handle;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    move p0, v0

    goto :goto_3

    :pswitch_0
    add-float/2addr p5, p3

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p5, p0

    add-float/2addr p4, p6

    div-float/2addr p4, p0

    goto :goto_1

    :pswitch_1
    sub-float/2addr p6, p2

    move p0, p6

    goto :goto_3

    :pswitch_2
    sub-float/2addr p5, p1

    move p0, v0

    move v0, p5

    goto :goto_3

    :pswitch_3
    sub-float/2addr p4, p2

    move p0, p4

    goto :goto_3

    :pswitch_4
    sub-float/2addr p3, p1

    move p0, v0

    move v0, p3

    goto :goto_3

    :pswitch_5
    sub-float v0, p5, p1

    goto :goto_0

    :pswitch_6
    sub-float v0, p3, p1

    :goto_0
    sub-float p0, p6, p2

    goto :goto_3

    :goto_1
    :pswitch_7
    sub-float v0, p5, p1

    goto :goto_2

    :pswitch_8
    sub-float v0, p3, p1

    :goto_2
    sub-float p0, p4, p2

    .line 168
    :goto_3
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPressedHandle(FFFFFFF)Lcom/edmodo/cropper/cropwindow/handle/Handle;
    .locals 6

    .line 77
    invoke-static {p0, p1, p2, p3, p6}, Lcom/edmodo/cropper/util/HandleUtil;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object p0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->TOP_LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto/16 :goto_0

    .line 79
    :cond_0
    invoke-static {p0, p1, p4, p3, p6}, Lcom/edmodo/cropper/util/HandleUtil;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    sget-object p0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->TOP_RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto/16 :goto_0

    .line 81
    :cond_1
    invoke-static {p0, p1, p2, p5, p6}, Lcom/edmodo/cropper/util/HandleUtil;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    sget-object p0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM_LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto/16 :goto_0

    .line 83
    :cond_2
    invoke-static {p0, p1, p4, p5, p6}, Lcom/edmodo/cropper/util/HandleUtil;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    sget-object p0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM_RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto/16 :goto_0

    .line 85
    :cond_3
    invoke-static/range {p0 .. p5}, Lcom/edmodo/cropper/util/HandleUtil;->isInCenterTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/edmodo/cropper/util/HandleUtil;->focusCenter()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    sget-object p0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->CENTER:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto/16 :goto_0

    :cond_4
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p3

    move v5, p6

    .line 87
    invoke-static/range {v0 .. v5}, Lcom/edmodo/cropper/util/HandleUtil;->isInHorizontalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 88
    sget-object p0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->TOP:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_5
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    .line 89
    invoke-static/range {v0 .. v5}, Lcom/edmodo/cropper/util/HandleUtil;->isInHorizontalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 90
    sget-object p0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_6
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p6

    .line 91
    invoke-static/range {v0 .. v5}, Lcom/edmodo/cropper/util/HandleUtil;->isInVerticalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 92
    sget-object p0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_7
    move v0, p0

    move v1, p1

    move v2, p4

    move v3, p3

    move v4, p5

    move v5, p6

    .line 93
    invoke-static/range {v0 .. v5}, Lcom/edmodo/cropper/util/HandleUtil;->isInVerticalTargetZone(FFFFFF)Z

    move-result p6

    if-eqz p6, :cond_8

    .line 94
    sget-object p0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    .line 95
    :cond_8
    invoke-static/range {p0 .. p5}, Lcom/edmodo/cropper/util/HandleUtil;->isInCenterTargetZone(FFFFFF)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/edmodo/cropper/util/HandleUtil;->focusCenter()Z

    move-result p0

    if-nez p0, :cond_9

    .line 96
    sget-object p0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->CENTER:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_9
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getTargetRadius(Landroid/content/Context;)F
    .locals 2

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private static isInCenterTargetZone(FFFFFF)Z
    .locals 0

    cmpl-float p2, p0, p2

    if-lez p2, :cond_0

    cmpg-float p0, p0, p4

    if-gez p0, :cond_0

    cmpl-float p0, p1, p3

    if-lez p0, :cond_0

    cmpg-float p0, p1, p5

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isInCornerTargetZone(FFFFF)Z
    .locals 0

    sub-float/2addr p0, p2

    .line 192
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p4

    if-gtz p0, :cond_0

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p4

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isInHorizontalTargetZone(FFFFFF)Z
    .locals 0

    cmpl-float p2, p0, p2

    if-lez p2, :cond_0

    cmpg-float p0, p0, p3

    if-gez p0, :cond_0

    sub-float/2addr p1, p4

    .line 218
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p5

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isInVerticalTargetZone(FFFFFF)Z
    .locals 0

    sub-float/2addr p0, p2

    .line 244
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p5

    if-gtz p0, :cond_0

    cmpl-float p0, p1, p3

    if-lez p0, :cond_0

    cmpg-float p0, p1, p4

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
