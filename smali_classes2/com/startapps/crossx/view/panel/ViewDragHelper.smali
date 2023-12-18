.class public Lcom/startapps/crossx/view/panel/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroidx/core/widget/ScrollerCompat;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 328
    new-instance v0, Lcom/startapps/crossx/view/panel/ViewDragHelper$1;

    invoke-direct {v0}, Lcom/startapps/crossx/view/panel/ViewDragHelper$1;-><init>()V

    sput-object v0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;)V
    .locals 1

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 117
    iput v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mActivePointerId:I

    .line 335
    new-instance v0, Lcom/startapps/crossx/view/panel/ViewDragHelper$2;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/panel/ViewDragHelper$2;-><init>(Lcom/startapps/crossx/view/panel/ViewDragHelper;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 383
    iput-object p2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 384
    iput-object p3, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    .line 386
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 387
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 388
    iput p3, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mEdgeSize:I

    .line 390
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mTouchSlop:I

    .line 391
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mMaxVelocity:F

    .line 392
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mMinVelocity:F

    .line 393
    sget-object p2, Lcom/startapps/crossx/view/panel/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {p1, p2}, Landroidx/core/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidx/core/widget/ScrollerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    return-void

    .line 380
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 377
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent view may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 3

    .line 1230
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 1231
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 1233
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_2

    iget v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mTouchSlop:I

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    .line 1239
    iget-object p2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    invoke-virtual {p2, p4}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1240
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mEdgeDragsLocked:[I

    aget p2, p1, p3

    or-int/2addr p2, p4

    aput p2, p1, p3

    return v1

    .line 1243
    :cond_1
    iget-object p2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_2

    iget p2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1260
    :cond_0
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    invoke-virtual {v1, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 1261
    :goto_0
    iget-object v3, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    invoke-virtual {v3, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p1

    if-lez p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float/2addr p2, p3

    .line 1264
    iget p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr p1, p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    move v0, v2

    :cond_3
    return v0

    :cond_4
    if-eqz v1, :cond_6

    .line 1266
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    move v0, v2

    :cond_5
    return v0

    :cond_6
    if-eqz p1, :cond_7

    .line 1268
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    move v0, v2

    :cond_7
    return v0
.end method

.method private clampMag(FFF)F
    .locals 2

    .line 669
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p2, v0, p2

    const/4 v1, 0x0

    if-gez p2, :cond_0

    return v1

    :cond_0
    cmpl-float p2, v0, p3

    if-lez p2, :cond_2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-float p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method private clampMag(III)I
    .locals 1

    .line 652
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-le v0, p3, :cond_2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-int p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method private clearMotionHistory()V
    .locals 2

    .line 776
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 779
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 780
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 781
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 782
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 783
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 784
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 785
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 786
    iput v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private clearMotionHistory(I)V
    .locals 2

    .line 790
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 793
    aput v1, v0, p1

    .line 794
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 795
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 796
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 797
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 798
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v1, v0, p1

    .line 799
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v1, v0, p1

    .line 800
    iget v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private computeAxisDuration(III)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 625
    div-int/lit8 v1, v0, 0x2

    .line 626
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    .line 628
    invoke-direct {p0, v2}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    mul-float/2addr v2, v1

    add-float/2addr v1, v2

    .line 631
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    int-to-float p1, p2

    div-float/2addr v1, p1

    .line 633
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 635
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    const/high16 p2, 0x43800000    # 256.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    :goto_0
    const/16 p2, 0x258

    .line 638
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 6

    .line 599
    iget v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mMaxVelocity:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->clampMag(III)I

    move-result p4

    .line 600
    iget v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mMaxVelocity:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->clampMag(III)I

    move-result p5

    .line 601
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 602
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 603
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 604
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v4, v2, v3

    add-int v5, v0, v1

    if-eqz p4, :cond_0

    int-to-float v0, v2

    int-to-float v2, v4

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float v2, v5

    :goto_0
    div-float/2addr v0, v2

    if-eqz p5, :cond_1

    int-to-float v1, v3

    int-to-float v2, v4

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    int-to-float v2, v5

    :goto_1
    div-float/2addr v1, v2

    .line 613
    iget-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    invoke-virtual {v2, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, p2, p4, v2}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->computeAxisDuration(III)I

    move-result p2

    .line 614
    iget-object p4, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    invoke-virtual {p4, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p3, p5, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->computeAxisDuration(III)I

    move-result p1

    int-to-float p2, p2

    mul-float/2addr p2, v0

    int-to-float p1, p1

    mul-float/2addr p1, v1

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/startapps/crossx/view/panel/ViewDragHelper$Callback;)Lcom/startapps/crossx/view/panel/ViewDragHelper;
    .locals 1

    .line 362
    invoke-static {p0, p2}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;)Lcom/startapps/crossx/view/panel/ViewDragHelper;

    move-result-object p0

    .line 363
    iget p2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    mul-float/2addr p2, v0

    float-to-int p1, p2

    iput p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mTouchSlop:I

    return-object p0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;)Lcom/startapps/crossx/view/panel/ViewDragHelper;
    .locals 2

    .line 349
    new-instance v0, Lcom/startapps/crossx/view/panel/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 3

    const/4 v0, 0x1

    .line 765
    iput-boolean v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mReleaseInProgress:Z

    .line 766
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    iget-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    const/4 p1, 0x0

    .line 767
    iput-boolean p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mReleaseInProgress:Z

    .line 769
    iget p2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mDragState:I

    if-ne p2, v0, :cond_0

    .line 771
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->setDragState(I)V

    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    .line 678
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private dragTo(IIII)V
    .locals 10

    .line 1384
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1385
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz p3, :cond_0

    .line 1387
    iget-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    iget-object v3, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2, v3, p1, p3}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result p1

    .line 1388
    iget-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    move v6, p1

    if-eqz p4, :cond_1

    .line 1391
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    iget-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p1, v2, p2, p4}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result p2

    .line 1392
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v2, p2, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    move v7, p2

    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    sub-int v8, v6, v0

    sub-int v9, v7, v1

    .line 1398
    iget-object v4, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    iget-object v5, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v4 .. v9}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 9

    .line 804
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 805
    new-array v1, p1, [F

    .line 806
    new-array v2, p1, [F

    .line 807
    new-array v3, p1, [F

    .line 808
    new-array v4, p1, [F

    .line 809
    new-array v5, p1, [I

    .line 810
    new-array v6, p1, [I

    .line 811
    new-array p1, p1, [I

    if-eqz v0, :cond_1

    .line 814
    array-length v7, v0

    const/4 v8, 0x0

    invoke-static {v0, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionY:[F

    array-length v7, v0

    invoke-static {v0, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 816
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mLastMotionX:[F

    array-length v7, v0

    invoke-static {v0, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 817
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mLastMotionY:[F

    array-length v7, v0

    invoke-static {v0, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 818
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v7, v0

    invoke-static {v0, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 819
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v7, v0

    invoke-static {v0, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 820
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v7, v0

    invoke-static {v0, v8, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 823
    :cond_1
    iput-object v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionX:[F

    .line 824
    iput-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionY:[F

    .line 825
    iput-object v3, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mLastMotionX:[F

    .line 826
    iput-object v4, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mLastMotionY:[F

    .line 827
    iput-object v5, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 828
    iput-object v6, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 829
    iput-object p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mEdgeDragsLocked:[I

    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 10

    .line 579
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 580
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr p1, v2

    sub-int/2addr p2, v3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 586
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {p1}, Landroidx/core/widget/ScrollerCompat;->abortAnimation()V

    const/4 p1, 0x0

    .line 587
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->setDragState(I)V

    return p1

    .line 591
    :cond_0
    iget-object v5, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v6

    .line 592
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/core/widget/ScrollerCompat;->startScroll(IIIII)V

    const/4 p1, 0x2

    .line 594
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->setDragState(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private getEdgesTouched(II)I
    .locals 3

    .line 1458
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1459
    :goto_0
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 1460
    :cond_1
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 1461
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    iget v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr p1, v1

    if-le p2, p1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 4

    .line 1371
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1372
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mActivePointerId:I

    .line 1373
    invoke-static {v0, v1}, Landroidx/core/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    iget v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mMinVelocity:F

    iget v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mMaxVelocity:F

    .line 1372
    invoke-direct {p0, v0, v1, v2}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    .line 1375
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mActivePointerId:I

    .line 1376
    invoke-static {v1, v2}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    iget v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mMinVelocity:F

    iget v3, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mMaxVelocity:F

    .line 1375
    invoke-direct {p0, v1, v2, v3}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 1378
    invoke-direct {p0, v0, v1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->dispatchViewReleased(FF)V

    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 2

    const/4 v0, 0x1

    .line 1210
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v0

    const/4 v1, 0x4

    .line 1213
    invoke-direct {p0, p2, p1, p3, v1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    const/4 v1, 0x2

    .line 1216
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v1, 0x8

    .line 1219
    invoke-direct {p0, p2, p1, p3, v1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result p1

    if-eqz p1, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    if-eqz v0, :cond_3

    .line 1224
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    .line 1225
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    invoke-virtual {p1, v0, p3}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    :cond_3
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 2

    .line 834
    invoke-direct {p0, p3}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 835
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 836
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 837
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->getEdgesTouched(II)I

    move-result p1

    aput p1, v0, p3

    .line 838
    iget p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mPointersDown:I

    const/4 p2, 0x1

    shl-int/2addr p2, p3

    or-int/2addr p1, p2

    iput p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 7

    .line 842
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 844
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 845
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 846
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 847
    iget-object v5, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mLastMotionX:[F

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mLastMotionY:[F

    if-eqz v6, :cond_0

    .line 848
    aput v3, v5, v2

    .line 849
    aput v4, v6, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 9

    .line 514
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->cancel()V

    .line 515
    iget v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 516
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->getCurrX()I

    move-result v0

    .line 517
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->getCurrY()I

    move-result v1

    .line 518
    iget-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroidx/core/widget/ScrollerCompat;->abortAnimation()V

    .line 519
    iget-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroidx/core/widget/ScrollerCompat;->getCurrX()I

    move-result v5

    .line 520
    iget-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroidx/core/widget/ScrollerCompat;->getCurrY()I

    move-result v6

    .line 521
    iget-object v3, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    iget-object v4, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v7, v5, v0

    sub-int v8, v6, v1

    invoke-virtual/range {v3 .. v8}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_0
    const/4 v0, 0x0

    .line 523
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->setDragState(I)V

    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .locals 13

    move-object v0, p1

    .line 916
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 917
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 918
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 919
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 920
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 925
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p5, v3

    .line 926
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p6, v4

    .line 927
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 928
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v11, v6, v10

    .line 929
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v12, v8, v6

    move-object v6, p0

    move v8, v9

    move/from16 v9, p3

    move/from16 v10, p4

    .line 928
    invoke-virtual/range {v6 .. v12}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move/from16 v1, p3

    neg-int v1, v1

    .line 935
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_3

    move/from16 v1, p4

    neg-int v1, v1

    .line 936
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    return v2
.end method

.method public cancel()V
    .locals 1

    const/4 v0, -0x1

    .line 500
    iput v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mActivePointerId:I

    .line 501
    invoke-direct {p0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->clearMotionHistory()V

    .line 503
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 505
    iput-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 2

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 467
    iput-object p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 468
    iput p2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mActivePointerId:I

    .line 469
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    const/4 p1, 0x1

    .line 470
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->setDragState(I)V

    return-void

    .line 463
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkTouchSlop(I)Z
    .locals 4

    .line 1288
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionX:[F

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1290
    invoke-virtual {p0, p1, v2}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public checkTouchSlop(II)Z
    .locals 6

    .line 1313
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v3, 0x2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    .line 1320
    :goto_1
    iget-object v3, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mLastMotionX:[F

    aget v3, v3, p2

    iget-object v4, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionX:[F

    aget v4, v4, p2

    sub-float/2addr v3, v4

    .line 1321
    iget-object v4, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mLastMotionY:[F

    aget v4, v4, p2

    iget-object v5, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionY:[F

    aget p2, v5, p2

    sub-float/2addr v4, p2

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    .line 1324
    iget p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr p1, p1

    int-to-float p1, p1

    cmpl-float p1, v3, p1

    if-lez p1, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    if-eqz v0, :cond_6

    .line 1326
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    if-eqz p1, :cond_7

    .line 1328
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    move v1, v2

    :cond_7
    return v1
.end method

.method public continueSettling(Z)Z
    .locals 11

    .line 718
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 721
    :cond_0
    iget v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mDragState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 722
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    .line 723
    iget-object v3, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v3}, Landroidx/core/widget/ScrollerCompat;->getCurrX()I

    move-result v3

    .line 724
    iget-object v4, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v4}, Landroidx/core/widget/ScrollerCompat;->getCurrY()I

    move-result v10

    .line 725
    iget-object v4, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v8, v3, v4

    .line 726
    iget-object v4, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v9, v10, v4

    if-eqz v8, :cond_1

    .line 729
    iget-object v4, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_1
    if-eqz v9, :cond_2

    .line 732
    iget-object v4, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_2
    if-nez v8, :cond_3

    if-eqz v9, :cond_4

    .line 736
    :cond_3
    iget-object v4, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    iget-object v5, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v6, v3

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_4
    if-eqz v0, :cond_5

    .line 739
    iget-object v4, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v4}, Landroidx/core/widget/ScrollerCompat;->getFinalX()I

    move-result v4

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v3}, Landroidx/core/widget/ScrollerCompat;->getFinalY()I

    move-result v3

    if-ne v10, v3, :cond_5

    .line 742
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->abortAnimation()V

    .line 743
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    :cond_5
    if-nez v0, :cond_7

    if-eqz p1, :cond_6

    .line 748
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 750
    :cond_6
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->setDragState(I)V

    .line 755
    :cond_7
    :goto_0
    iget p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mDragState:I

    if-ne p1, v2, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 3

    .line 1444
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1446
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    invoke-virtual {v2, v0}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1447
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 1448
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public flingCapturedView(IIII)V
    .locals 10

    .line 692
    iget-boolean v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_0

    .line 697
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mActivePointerId:I

    .line 698
    invoke-static {v0, v4}, Landroidx/core/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v4, v0

    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mActivePointerId:I

    .line 699
    invoke-static {v0, v5}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v5, v0

    move v6, p1

    move v7, p3

    move v8, p2

    move v9, p4

    .line 697
    invoke-virtual/range {v1 .. v9}, Landroidx/core/widget/ScrollerCompat;->fling(IIIIIIII)V

    const/4 p1, 0x2

    .line 702
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->setDragState(I)V

    return-void

    .line 693
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getActivePointerId()I
    .locals 1

    .line 485
    iget v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mActivePointerId:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getEdgeSize()I
    .locals 1

    .line 450
    iget v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getMinVelocity()F
    .locals 1

    .line 414
    iget v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mMinVelocity:F

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .line 492
    iget v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .line 423
    iget v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1

    .line 1413
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public isDragging()Z
    .locals 2

    .line 1367
    iget v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mDragState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEdgeTouched(I)Z
    .locals 4

    .line 1343
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1345
    invoke-virtual {p0, p1, v2}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isEdgeTouched(II)Z
    .locals 1

    .line 1363
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialEdgesTouched:[I

    aget p2, v0, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPointerDown(I)Z
    .locals 2

    .line 868
    iget v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1429
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 1430
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 1431
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    if-lt p3, p2, :cond_1

    .line 1432
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p3, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1057
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1058
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    if-nez v0, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->cancel()V

    .line 1066
    :cond_0
    iget-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1067
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1069
    :cond_1
    iget-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    const/4 v3, 0x1

    if-eq v0, v3, :cond_10

    const/4 v4, 0x2

    if-eq v0, v4, :cond_b

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    const/4 v4, 0x5

    if-eq v0, v4, :cond_7

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    goto/16 :goto_5

    .line 1160
    :cond_2
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1161
    iget v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mDragState:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mActivePointerId:I

    if-ne v0, v1, :cond_6

    .line 1164
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_5

    .line 1166
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 1167
    iget v5, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mActivePointerId:I

    if-ne v4, v5, :cond_3

    goto :goto_1

    .line 1172
    :cond_3
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1173
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    float-to-int v5, v5

    float-to-int v6, v6

    .line 1174
    invoke-virtual {p0, v5, v6}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v5, v6, :cond_4

    .line 1175
    invoke-virtual {p0, v6, v4}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1176
    iget p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mActivePointerId:I

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move p1, v3

    :goto_2
    if-ne p1, v3, :cond_6

    .line 1183
    invoke-direct {p0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1186
    :cond_6
    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_5

    .line 1093
    :cond_7
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1094
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 1095
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 1097
    invoke-direct {p0, v2, p1, v0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1100
    iget v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mDragState:I

    if-nez v1, :cond_8

    float-to-int v1, v2

    float-to-int p1, p1

    .line 1103
    invoke-virtual {p0, v1, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    .line 1104
    invoke-virtual {p0, p1, v0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1106
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialEdgesTouched:[I

    aget p1, p1, v0

    .line 1107
    iget v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mTrackingEdges:I

    and-int v2, p1, v1

    if-eqz v2, :cond_13

    .line 1108
    iget-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    and-int/2addr p1, v1

    invoke-virtual {v2, p1, v0}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_5

    :cond_8
    float-to-int v1, v2

    float-to-int p1, p1

    .line 1110
    invoke-virtual {p0, v1, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1115
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_5

    .line 1199
    :cond_9
    iget p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mDragState:I

    if-ne p1, v3, :cond_a

    const/4 p1, 0x0

    .line 1200
    invoke-direct {p0, p1, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1202
    :cond_a
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->cancel()V

    goto/16 :goto_5

    .line 1121
    :cond_b
    iget v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_c

    .line 1122
    iget v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mActivePointerId:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1123
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1124
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1125
    iget-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mLastMotionX:[F

    iget v3, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mActivePointerId:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1126
    iget-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mLastMotionY:[F

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 1128
    iget-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->dragTo(IIII)V

    .line 1130
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    .line 1133
    :cond_c
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_f

    .line 1135
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1137
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 1138
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1139
    iget-object v6, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionX:[F

    aget v6, v6, v1

    sub-float v6, v4, v6

    .line 1140
    iget-object v7, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionY:[F

    aget v7, v7, v1

    sub-float v7, v5, v7

    .line 1142
    invoke-direct {p0, v6, v7, v1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1143
    iget v8, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mDragState:I

    if-ne v8, v3, :cond_d

    goto :goto_4

    :cond_d
    float-to-int v4, v4

    float-to-int v5, v5

    .line 1148
    invoke-virtual {p0, v4, v5}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v4

    .line 1149
    invoke-direct {p0, v4, v6, v7}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1150
    invoke-virtual {p0, v4, v1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1154
    :cond_f
    :goto_4
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_5

    .line 1191
    :cond_10
    iget p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mDragState:I

    if-ne p1, v3, :cond_11

    .line 1192
    invoke-direct {p0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1194
    :cond_11
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->cancel()V

    goto :goto_5

    .line 1073
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1074
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1075
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    float-to-int v2, v0

    float-to-int v3, v1

    .line 1076
    invoke-virtual {p0, v2, v3}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v2

    .line 1078
    invoke-direct {p0, v0, v1, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1083
    invoke-virtual {p0, v2, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1085
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p1

    .line 1086
    iget v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mTrackingEdges:I

    and-int v2, v0, v1

    if-eqz v2, :cond_13

    .line 1087
    iget-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    and-int/2addr v0, v1

    invoke-virtual {v2, v0, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->onEdgeTouched(II)V

    :cond_13
    :goto_5
    return-void
.end method

.method setDragState(I)V
    .locals 1

    .line 872
    iget v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 873
    iput p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mDragState:I

    .line 874
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 876
    iput-object p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0

    .line 439
    iput p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mTrackingEdges:I

    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0

    .line 403
    iput p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mMinVelocity:F

    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3

    .line 559
    iget-boolean v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mActivePointerId:I

    .line 565
    invoke-static {v0, v1}, Landroidx/core/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mActivePointerId:I

    .line 566
    invoke-static {v1, v2}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    .line 564
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result p1

    return p1

    .line 560
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 947
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 948
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    if-nez v0, :cond_0

    .line 953
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->cancel()V

    .line 956
    :cond_0
    iget-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 957
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 959
    :cond_1
    iget-object v2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_5

    const/4 v5, 0x3

    if-eq v0, v5, :cond_a

    const/4 v5, 0x5

    if-eq v0, v5, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_3

    .line 1035
    :cond_2
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    .line 1036
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_3

    .line 983
    :cond_3
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 984
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 985
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 987
    invoke-direct {p0, v5, p1, v0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 990
    iget v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mDragState:I

    if-nez v1, :cond_4

    .line 991
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialEdgesTouched:[I

    aget p1, p1, v0

    .line 992
    iget v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mTrackingEdges:I

    and-int v3, p1, v1

    if-eqz v3, :cond_d

    .line 993
    iget-object v3, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    and-int/2addr p1, v1

    invoke-virtual {v3, p1, v0}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_3

    :cond_4
    if-ne v1, v3, :cond_d

    float-to-int v1, v5

    float-to-int p1, p1

    .line 997
    invoke-virtual {p0, v1, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    .line 998
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne p1, v1, :cond_d

    .line 999
    invoke-virtual {p0, p1, v0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_3

    .line 1007
    :cond_5
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_9

    .line 1008
    iget-object v3, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionY:[F

    if-eqz v3, :cond_9

    .line 1009
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 1010
    iget-object v5, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionX:[F

    array-length v5, v5

    if-ge v3, v5, :cond_8

    iget-object v5, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionY:[F

    array-length v5, v5

    if-lt v3, v5, :cond_6

    goto :goto_1

    .line 1013
    :cond_6
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1014
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1015
    iget-object v7, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionX:[F

    aget v7, v7, v3

    sub-float/2addr v5, v7

    .line 1016
    iget-object v7, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionY:[F

    aget v7, v7, v3

    sub-float/2addr v6, v7

    .line 1018
    invoke-direct {p0, v5, v6, v3}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1019
    iget v7, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mDragState:I

    if-ne v7, v4, :cond_7

    goto :goto_2

    .line 1024
    :cond_7
    iget-object v7, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionX:[F

    aget v7, v7, v3

    float-to-int v7, v7

    iget-object v8, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialMotionY:[F

    aget v8, v8, v3

    float-to-int v8, v8

    invoke-virtual {p0, v7, v8}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 1025
    invoke-direct {p0, v7, v5, v6}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1026
    invoke-virtual {p0, v7, v3}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1030
    :cond_9
    :goto_2
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 1042
    :cond_a
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->cancel()V

    goto :goto_3

    .line 963
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 964
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 965
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    .line 966
    invoke-direct {p0, v0, v1, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->saveInitialMotion(FFI)V

    float-to-int v0, v0

    float-to-int v1, v1

    .line 968
    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v0

    .line 971
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v0, v1, :cond_c

    iget v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mDragState:I

    if-ne v1, v3, :cond_c

    .line 972
    invoke-virtual {p0, v0, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 975
    :cond_c
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p1

    .line 976
    iget v1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mTrackingEdges:I

    and-int v3, v0, v1

    if-eqz v3, :cond_d

    .line 977
    iget-object v3, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    and-int/2addr v0, v1

    invoke-virtual {v3, v0, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1047
    :cond_d
    :goto_3
    iget p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mDragState:I

    if-ne p1, v4, :cond_e

    move v2, v4

    :cond_e
    return v2
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 p1, -0x1

    .line 542
    iput p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mActivePointerId:I

    const/4 p1, 0x0

    .line 544
    invoke-direct {p0, p2, p3, p1, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result p1

    return p1
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2

    .line 891
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mActivePointerId:I

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 895
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mCallback:Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/startapps/crossx/view/panel/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    iput p2, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper;->mActivePointerId:I

    .line 897
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
