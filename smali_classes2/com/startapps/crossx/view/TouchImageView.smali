.class public Lcom/startapps/crossx/view/TouchImageView;
.super Landroid/widget/ImageView;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/TouchImageView$OnTouchImageViewListener;,
        Lcom/startapps/crossx/view/TouchImageView$ScaleListener;,
        Lcom/startapps/crossx/view/TouchImageView$GestureListener;,
        Lcom/startapps/crossx/view/TouchImageView$State;,
        Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;,
        Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;,
        Lcom/startapps/crossx/view/TouchImageView$CompatScroller;,
        Lcom/startapps/crossx/view/TouchImageView$Fling;,
        Lcom/startapps/crossx/view/TouchImageView$DoubleTapZoom;
    }
.end annotation


# static fields
.field private static final DEBUG:Ljava/lang/String; = "DEBUG"

.field private static final SUPER_MAX_MULTIPLIER:F = 1.25f

.field private static final SUPER_MIN_MULTIPLIER:F = 0.75f


# instance fields
.field private context:Landroid/content/Context;

.field private delayedZoomVariables:Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;

.field private doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private fling:Lcom/startapps/crossx/view/TouchImageView$Fling;

.field private imageRenderedAtLeastOnce:Z

.field private m:[F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private matchViewHeight:F

.field private matchViewWidth:F

.field private matrix:Landroid/graphics/Matrix;

.field private maxScale:F

.field private minScale:F

.field private normalizedScale:F

.field private onDrawReady:Z

.field private prevMatchViewHeight:F

.field private prevMatchViewWidth:F

.field private prevMatrix:Landroid/graphics/Matrix;

.field private prevViewHeight:I

.field private prevViewWidth:I

.field private state:Lcom/startapps/crossx/view/TouchImageView$State;

.field private superMaxScale:F

.field private superMinScale:F

.field private touchImageViewListener:Lcom/startapps/crossx/view/TouchImageView$OnTouchImageViewListener;

.field private userTouchListener:Landroid/view/View$OnTouchListener;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/startapps/crossx/view/TouchImageView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/TouchImageView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdoubleTapListener(Lcom/startapps/crossx/view/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfling(Lcom/startapps/crossx/view/TouchImageView;)Lcom/startapps/crossx/view/TouchImageView$Fling;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/TouchImageView;->fling:Lcom/startapps/crossx/view/TouchImageView$Fling;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm(Lcom/startapps/crossx/view/TouchImageView;)[F
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGestureDetector(Lcom/startapps/crossx/view/TouchImageView;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScaleDetector(Lcom/startapps/crossx/view/TouchImageView;)Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmatrix(Lcom/startapps/crossx/view/TouchImageView;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmaxScale(Lcom/startapps/crossx/view/TouchImageView;)F
    .locals 0

    iget p0, p0, Lcom/startapps/crossx/view/TouchImageView;->maxScale:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetminScale(Lcom/startapps/crossx/view/TouchImageView;)F
    .locals 0

    iget p0, p0, Lcom/startapps/crossx/view/TouchImageView;->minScale:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnormalizedScale(Lcom/startapps/crossx/view/TouchImageView;)F
    .locals 0

    iget p0, p0, Lcom/startapps/crossx/view/TouchImageView;->normalizedScale:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstate(Lcom/startapps/crossx/view/TouchImageView;)Lcom/startapps/crossx/view/TouchImageView$State;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/TouchImageView;->state:Lcom/startapps/crossx/view/TouchImageView$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettouchImageViewListener(Lcom/startapps/crossx/view/TouchImageView;)Lcom/startapps/crossx/view/TouchImageView$OnTouchImageViewListener;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/TouchImageView;->touchImageViewListener:Lcom/startapps/crossx/view/TouchImageView$OnTouchImageViewListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuserTouchListener(Lcom/startapps/crossx/view/TouchImageView;)Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetviewHeight(Lcom/startapps/crossx/view/TouchImageView;)I
    .locals 0

    iget p0, p0, Lcom/startapps/crossx/view/TouchImageView;->viewHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetviewWidth(Lcom/startapps/crossx/view/TouchImageView;)I
    .locals 0

    iget p0, p0, Lcom/startapps/crossx/view/TouchImageView;->viewWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputfling(Lcom/startapps/crossx/view/TouchImageView;Lcom/startapps/crossx/view/TouchImageView$Fling;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/TouchImageView;->fling:Lcom/startapps/crossx/view/TouchImageView$Fling;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcompatPostOnAnimation(Lcom/startapps/crossx/view/TouchImageView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfixScaleTrans(Lcom/startapps/crossx/view/TouchImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->fixScaleTrans()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfixTrans(Lcom/startapps/crossx/view/TouchImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->fixTrans()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetFixDragTrans(Lcom/startapps/crossx/view/TouchImageView;FFF)F
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/startapps/crossx/view/TouchImageView;->getFixDragTrans(FFF)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetImageHeight(Lcom/startapps/crossx/view/TouchImageView;)F
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->getImageHeight()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetImageWidth(Lcom/startapps/crossx/view/TouchImageView;)F
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->getImageWidth()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mscaleImage(Lcom/startapps/crossx/view/TouchImageView;DFFZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/startapps/crossx/view/TouchImageView;->scaleImage(DFFZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetState(Lcom/startapps/crossx/view/TouchImageView;Lcom/startapps/crossx/view/TouchImageView$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/TouchImageView;->setState(Lcom/startapps/crossx/view/TouchImageView$State;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtransformCoordBitmapToTouch(Lcom/startapps/crossx/view/TouchImageView;FF)Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/TouchImageView;->transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mtransformCoordTouchToBitmap(Lcom/startapps/crossx/view/TouchImageView;FFZ)Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/startapps/crossx/view/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 89
    iput-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 90
    iput-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->touchImageViewListener:Lcom/startapps/crossx/view/TouchImageView$OnTouchImageViewListener;

    .line 94
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 88
    iput-object p2, p0, Lcom/startapps/crossx/view/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 89
    iput-object p2, p0, Lcom/startapps/crossx/view/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 90
    iput-object p2, p0, Lcom/startapps/crossx/view/TouchImageView;->touchImageViewListener:Lcom/startapps/crossx/view/TouchImageView$OnTouchImageViewListener;

    .line 99
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 88
    iput-object p2, p0, Lcom/startapps/crossx/view/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 89
    iput-object p2, p0, Lcom/startapps/crossx/view/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 90
    iput-object p2, p0, Lcom/startapps/crossx/view/TouchImageView;->touchImageViewListener:Lcom/startapps/crossx/view/TouchImageView$OnTouchImageViewListener;

    .line 104
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    return-void
.end method

.method private compatPostOnAnimation(Ljava/lang/Runnable;)V
    .locals 0

    .line 1241
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/TouchImageView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fitImageToView()V
    .locals 15

    .line 538
    invoke-virtual {p0}, Lcom/startapps/crossx/view/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 539
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 546
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 547
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 552
    iget v1, p0, Lcom/startapps/crossx/view/TouchImageView;->viewWidth:I

    int-to-float v1, v1

    int-to-float v2, v9

    div-float/2addr v1, v2

    .line 553
    iget v3, p0, Lcom/startapps/crossx/view/TouchImageView;->viewHeight:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 555
    sget-object v5, Lcom/startapps/crossx/view/TouchImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v6, p0, Lcom/startapps/crossx/view/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v10, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    if-eq v5, v6, :cond_6

    if-eq v5, v10, :cond_5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    if-eq v5, v8, :cond_4

    if-ne v5, v7, :cond_2

    goto :goto_1

    .line 578
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TouchImageView does not support FIT_START or FIT_END"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_3
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    move v3, v1

    .line 568
    :cond_4
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_0
    move v3, v1

    goto :goto_1

    .line 561
    :cond_5
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0

    :cond_6
    move v1, v11

    goto :goto_0

    .line 585
    :goto_1
    iget v5, p0, Lcom/startapps/crossx/view/TouchImageView;->viewWidth:I

    int-to-float v6, v5

    mul-float v12, v1, v2

    sub-float/2addr v6, v12

    .line 586
    iget v12, p0, Lcom/startapps/crossx/view/TouchImageView;->viewHeight:I

    int-to-float v13, v12

    mul-float v14, v3, v4

    sub-float/2addr v13, v14

    int-to-float v5, v5

    sub-float/2addr v5, v6

    .line 587
    iput v5, p0, Lcom/startapps/crossx/view/TouchImageView;->matchViewWidth:F

    int-to-float v5, v12

    sub-float/2addr v5, v13

    .line 588
    iput v5, p0, Lcom/startapps/crossx/view/TouchImageView;->matchViewHeight:F

    .line 589
    invoke-virtual {p0}, Lcom/startapps/crossx/view/TouchImageView;->isZoomed()Z

    move-result v5

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/startapps/crossx/view/TouchImageView;->imageRenderedAtLeastOnce:Z

    if-nez v5, :cond_7

    .line 593
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 594
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v6, v1

    div-float/2addr v13, v1

    invoke-virtual {v0, v6, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 595
    iput v11, p0, Lcom/startapps/crossx/view/TouchImageView;->normalizedScale:F

    goto :goto_2

    .line 603
    :cond_7
    iget v1, p0, Lcom/startapps/crossx/view/TouchImageView;->prevMatchViewWidth:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/startapps/crossx/view/TouchImageView;->prevMatchViewHeight:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_9

    .line 604
    :cond_8
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->savePreviousImageValues()V

    .line 607
    :cond_9
    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 612
    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    iget v3, p0, Lcom/startapps/crossx/view/TouchImageView;->matchViewWidth:F

    div-float/2addr v3, v2

    iget v2, p0, Lcom/startapps/crossx/view/TouchImageView;->normalizedScale:F

    mul-float/2addr v3, v2

    const/4 v5, 0x0

    aput v3, v1, v5

    .line 613
    iget v3, p0, Lcom/startapps/crossx/view/TouchImageView;->matchViewHeight:F

    div-float/2addr v3, v4

    mul-float/2addr v3, v2

    aput v3, v1, v8

    .line 618
    aget v4, v1, v10

    .line 619
    aget v10, v1, v7

    .line 624
    iget v1, p0, Lcom/startapps/crossx/view/TouchImageView;->prevMatchViewWidth:F

    mul-float v5, v1, v2

    .line 625
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->getImageWidth()F

    move-result v6

    const/4 v3, 0x2

    .line 626
    iget v7, p0, Lcom/startapps/crossx/view/TouchImageView;->prevViewWidth:I

    iget v8, p0, Lcom/startapps/crossx/view/TouchImageView;->viewWidth:I

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/startapps/crossx/view/TouchImageView;->translateMatrixAfterRotate(IFFFIII)V

    .line 631
    iget v1, p0, Lcom/startapps/crossx/view/TouchImageView;->prevMatchViewHeight:F

    iget v2, p0, Lcom/startapps/crossx/view/TouchImageView;->normalizedScale:F

    mul-float v4, v1, v2

    .line 632
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->getImageHeight()F

    move-result v5

    const/4 v2, 0x5

    .line 633
    iget v6, p0, Lcom/startapps/crossx/view/TouchImageView;->prevViewHeight:I

    iget v7, p0, Lcom/startapps/crossx/view/TouchImageView;->viewHeight:I

    move-object v1, p0

    move v3, v10

    move v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/startapps/crossx/view/TouchImageView;->translateMatrixAfterRotate(IFFFIII)V

    .line 638
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 640
    :goto_2
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->fixTrans()V

    .line 641
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_a
    :goto_3
    return-void
.end method

.method private fixScaleTrans()V
    .locals 4

    .line 458
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->fixTrans()V

    .line 459
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 460
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->getImageWidth()F

    move-result v0

    iget v1, p0, Lcom/startapps/crossx/view/TouchImageView;->viewWidth:I

    int-to-float v2, v1

    cmpg-float v0, v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->getImageWidth()F

    move-result v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->getImageHeight()F

    move-result v0

    iget v1, p0, Lcom/startapps/crossx/view/TouchImageView;->viewHeight:I

    int-to-float v3, v1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->getImageHeight()F

    move-result v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method private fixTrans()V
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 439
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x5

    .line 440
    aget v0, v0, v2

    .line 442
    iget v2, p0, Lcom/startapps/crossx/view/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->getImageWidth()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/startapps/crossx/view/TouchImageView;->getFixTrans(FFF)F

    move-result v1

    .line 443
    iget v2, p0, Lcom/startapps/crossx/view/TouchImageView;->viewHeight:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->getImageHeight()F

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/startapps/crossx/view/TouchImageView;->getFixTrans(FFF)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    .line 446
    :cond_0
    iget-object v2, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    return-void
.end method

.method private getFixDragTrans(FFF)F
    .locals 0

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method private getFixTrans(FFF)F
    .locals 2

    cmpg-float v0, p3, p2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    sub-float/2addr p2, p3

    move p3, p2

    move p2, v1

    goto :goto_0

    :cond_0
    sub-float/2addr p2, p3

    move p3, v1

    :goto_0
    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    neg-float p1, p1

    add-float/2addr p1, p2

    return p1

    :cond_1
    cmpl-float p2, p1, p3

    if-lez p2, :cond_2

    neg-float p1, p1

    add-float/2addr p1, p3

    return p1

    :cond_2
    return v1
.end method

.method private getImageHeight()F
    .locals 2

    .line 501
    iget v0, p0, Lcom/startapps/crossx/view/TouchImageView;->matchViewHeight:F

    iget v1, p0, Lcom/startapps/crossx/view/TouchImageView;->normalizedScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getImageWidth()F
    .locals 2

    .line 497
    iget v0, p0, Lcom/startapps/crossx/view/TouchImageView;->matchViewWidth:F

    iget v1, p0, Lcom/startapps/crossx/view/TouchImageView;->normalizedScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private printMatrixInfo()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1264
    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1265
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scale: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TransX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TransY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private savePreviousImageValues()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/startapps/crossx/view/TouchImageView;->viewHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/startapps/crossx/view/TouchImageView;->viewWidth:I

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 227
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 228
    iget v0, p0, Lcom/startapps/crossx/view/TouchImageView;->matchViewHeight:F

    iput v0, p0, Lcom/startapps/crossx/view/TouchImageView;->prevMatchViewHeight:F

    .line 229
    iget v0, p0, Lcom/startapps/crossx/view/TouchImageView;->matchViewWidth:F

    iput v0, p0, Lcom/startapps/crossx/view/TouchImageView;->prevMatchViewWidth:F

    .line 230
    iget v0, p0, Lcom/startapps/crossx/view/TouchImageView;->viewHeight:I

    iput v0, p0, Lcom/startapps/crossx/view/TouchImageView;->prevViewHeight:I

    .line 231
    iget v0, p0, Lcom/startapps/crossx/view/TouchImageView;->viewWidth:I

    iput v0, p0, Lcom/startapps/crossx/view/TouchImageView;->prevViewWidth:I

    :cond_0
    return-void
.end method

.method private scaleImage(DFFZ)V
    .locals 4

    if-eqz p5, :cond_0

    .line 923
    iget p5, p0, Lcom/startapps/crossx/view/TouchImageView;->superMinScale:F

    .line 924
    iget v0, p0, Lcom/startapps/crossx/view/TouchImageView;->superMaxScale:F

    goto :goto_0

    .line 927
    :cond_0
    iget p5, p0, Lcom/startapps/crossx/view/TouchImageView;->minScale:F

    .line 928
    iget v0, p0, Lcom/startapps/crossx/view/TouchImageView;->maxScale:F

    .line 931
    :goto_0
    iget v1, p0, Lcom/startapps/crossx/view/TouchImageView;->normalizedScale:F

    float-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-float v2, v2

    .line 932
    iput v2, p0, Lcom/startapps/crossx/view/TouchImageView;->normalizedScale:F

    cmpl-float v3, v2, v0

    if-lez v3, :cond_1

    .line 934
    iput v0, p0, Lcom/startapps/crossx/view/TouchImageView;->normalizedScale:F

    div-float/2addr v0, v1

    float-to-double p1, v0

    goto :goto_1

    :cond_1
    cmpg-float v0, v2, p5

    if-gez v0, :cond_2

    .line 937
    iput p5, p0, Lcom/startapps/crossx/view/TouchImageView;->normalizedScale:F

    div-float/2addr p5, v1

    float-to-double p1, p5

    .line 941
    :cond_2
    :goto_1
    iget-object p5, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    double-to-float p1, p1

    invoke-virtual {p5, p1, p1, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 942
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->fixScaleTrans()V

    return-void
.end method

.method private setState(Lcom/startapps/crossx/view/TouchImageView$State;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/startapps/crossx/view/TouchImageView;->state:Lcom/startapps/crossx/view/TouchImageView$State;

    return-void
.end method

.method private setViewSize(III)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    goto :goto_0

    .line 660
    :cond_1
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    return p2
.end method

.method private sharedConstructing(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    .line 108
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 109
    iput-object p1, p0, Lcom/startapps/crossx/view/TouchImageView;->context:Landroid/content/Context;

    .line 110
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/startapps/crossx/view/TouchImageView$ScaleListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/startapps/crossx/view/TouchImageView$ScaleListener;-><init>(Lcom/startapps/crossx/view/TouchImageView;Lcom/startapps/crossx/view/TouchImageView$ScaleListener-IA;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 111
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/startapps/crossx/view/TouchImageView$GestureListener;

    invoke-direct {v1, p0, v2}, Lcom/startapps/crossx/view/TouchImageView$GestureListener;-><init>(Lcom/startapps/crossx/view/TouchImageView;Lcom/startapps/crossx/view/TouchImageView$GestureListener-IA;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 112
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 113
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 114
    iput-object p1, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 115
    iput p1, p0, Lcom/startapps/crossx/view/TouchImageView;->normalizedScale:F

    .line 116
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 119
    :cond_0
    iput p1, p0, Lcom/startapps/crossx/view/TouchImageView;->minScale:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 120
    iput v0, p0, Lcom/startapps/crossx/view/TouchImageView;->maxScale:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr p1, v1

    .line 121
    iput p1, p0, Lcom/startapps/crossx/view/TouchImageView;->superMinScale:F

    const/high16 p1, 0x3fa00000    # 1.25f

    mul-float/2addr v0, p1

    .line 122
    iput v0, p0, Lcom/startapps/crossx/view/TouchImageView;->superMaxScale:F

    .line 123
    iget-object p1, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 124
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 125
    sget-object p1, Lcom/startapps/crossx/view/TouchImageView$State;->NONE:Lcom/startapps/crossx/view/TouchImageView$State;

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/TouchImageView;->setState(Lcom/startapps/crossx/view/TouchImageView$State;)V

    const/4 p1, 0x0

    .line 126
    iput-boolean p1, p0, Lcom/startapps/crossx/view/TouchImageView;->onDrawReady:Z

    .line 127
    new-instance p1, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;

    invoke-direct {p1, p0, v2}, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;-><init>(Lcom/startapps/crossx/view/TouchImageView;Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener-IA;)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;
    .locals 2

    .line 1080
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1081
    invoke-virtual {p0}, Lcom/startapps/crossx/view/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1082
    invoke-virtual {p0}, Lcom/startapps/crossx/view/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v0

    div-float/2addr p2, v1

    .line 1085
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->getImageWidth()F

    move-result v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 1086
    iget-object p1, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    const/4 v1, 0x5

    aget p1, p1, v1

    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->getImageHeight()F

    move-result v1

    mul-float/2addr v1, p2

    add-float/2addr p1, v1

    .line 1087
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2
.end method

.method private transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;
    .locals 5

    .line 1056
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1057
    invoke-virtual {p0}, Lcom/startapps/crossx/view/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1058
    invoke-virtual {p0}, Lcom/startapps/crossx/view/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    .line 1059
    iget-object v2, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    const/4 v3, 0x2

    aget v3, v2, v3

    const/4 v4, 0x5

    .line 1060
    aget v2, v2, v4

    sub-float/2addr p1, v3

    mul-float/2addr p1, v0

    .line 1061
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->getImageWidth()F

    move-result v3

    div-float/2addr p1, v3

    sub-float/2addr p2, v2

    mul-float/2addr p2, v1

    .line 1062
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->getImageHeight()F

    move-result v2

    div-float/2addr p2, v2

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 1065
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1066
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 1069
    :cond_0
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p3
.end method

.method private translateMatrixAfterRotate(IFFFIII)V
    .locals 2

    int-to-float p6, p6

    cmpg-float v0, p4, p6

    const/high16 v1, 0x3f000000    # 0.5f

    if-gez v0, :cond_0

    .line 691
    iget-object p2, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    int-to-float p3, p7

    const/4 p4, 0x0

    aget p4, p2, p4

    mul-float/2addr p3, p4

    sub-float/2addr p6, p3

    mul-float/2addr p6, v1

    aput p6, p2, p1

    goto :goto_0

    :cond_0
    const/4 p7, 0x0

    cmpl-float p7, p2, p7

    if-lez p7, :cond_1

    .line 697
    iget-object p2, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    sub-float/2addr p4, p6

    mul-float/2addr p4, v1

    neg-float p3, p4

    aput p3, p2, p1

    goto :goto_0

    .line 705
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    int-to-float p5, p5

    mul-float/2addr p5, v1

    add-float/2addr p2, p5

    div-float/2addr p2, p3

    .line 706
    iget-object p3, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    mul-float/2addr p2, p4

    mul-float/2addr p6, v1

    sub-float/2addr p2, p6

    neg-float p2, p2

    aput p2, p3, p1

    :goto_0
    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 3

    .line 720
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 721
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 723
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->getImageWidth()F

    move-result v1

    iget v2, p0, Lcom/startapps/crossx/view/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    if-gez p1, :cond_1

    return v2

    .line 729
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/startapps/crossx/view/TouchImageView;->viewWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->getImageWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    if-lez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public canScrollHorizontallyFroyo(I)Z
    .locals 0

    .line 715
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/TouchImageView;->canScrollHorizontally(I)Z

    move-result p1

    return p1
.end method

.method public getCurrentZoom()F
    .locals 1

    .line 317
    iget v0, p0, Lcom/startapps/crossx/view/TouchImageView;->normalizedScale:F

    return v0
.end method

.method public getMaxZoom()F
    .locals 1

    .line 291
    iget v0, p0, Lcom/startapps/crossx/view/TouchImageView;->maxScale:F

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    .line 308
    iget v0, p0, Lcom/startapps/crossx/view/TouchImageView;->minScale:F

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getScrollPosition()Landroid/graphics/PointF;
    .locals 5

    .line 410
    invoke-virtual {p0}, Lcom/startapps/crossx/view/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 414
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 415
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 417
    iget v2, p0, Lcom/startapps/crossx/view/TouchImageView;->viewWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/startapps/crossx/view/TouchImageView;->viewHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/startapps/crossx/view/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v2

    .line 418
    iget v3, v2, Landroid/graphics/PointF;->x:F

    int-to-float v1, v1

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 419
    iget v1, v2, Landroid/graphics/PointF;->y:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, v2, Landroid/graphics/PointF;->y:F

    return-object v2
.end method

.method public getZoomedRect()Landroid/graphics/RectF;
    .locals 7

    .line 209
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 212
    invoke-direct {p0, v0, v0, v1}, Lcom/startapps/crossx/view/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v0

    .line 213
    iget v2, p0, Lcom/startapps/crossx/view/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/startapps/crossx/view/TouchImageView;->viewHeight:I

    int-to-float v3, v3

    invoke-direct {p0, v2, v3, v1}, Lcom/startapps/crossx/view/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v1

    .line 215
    invoke-virtual {p0}, Lcom/startapps/crossx/view/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 216
    invoke-virtual {p0}, Lcom/startapps/crossx/view/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    .line 217
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v3

    iget v6, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v6, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v3

    invoke-direct {v4, v5, v0, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getZoomedRect() not supported with FIT_XY"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isZoomed()Z
    .locals 2

    .line 201
    iget v0, p0, Lcom/startapps/crossx/view/TouchImageView;->normalizedScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 282
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 283
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->savePreviousImageValues()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lcom/startapps/crossx/view/TouchImageView;->onDrawReady:Z

    .line 272
    iput-boolean v0, p0, Lcom/startapps/crossx/view/TouchImageView;->imageRenderedAtLeastOnce:Z

    .line 273
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->delayedZoomVariables:Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;

    if-eqz v0, :cond_0

    .line 274
    iget v0, v0, Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;->scale:F

    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView;->delayedZoomVariables:Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;

    iget v1, v1, Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;->focusX:F

    iget-object v2, p0, Lcom/startapps/crossx/view/TouchImageView;->delayedZoomVariables:Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;

    iget v2, v2, Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;->focusY:F

    iget-object v3, p0, Lcom/startapps/crossx/view/TouchImageView;->delayedZoomVariables:Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;

    iget-object v3, v3, Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/startapps/crossx/view/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->delayedZoomVariables:Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;

    .line 277
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 506
    invoke-virtual {p0}, Lcom/startapps/crossx/view/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 513
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 514
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 515
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 516
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 517
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 518
    invoke-direct {p0, p1, v2, v1}, Lcom/startapps/crossx/view/TouchImageView;->setViewSize(III)I

    move-result p1

    iput p1, p0, Lcom/startapps/crossx/view/TouchImageView;->viewWidth:I

    .line 519
    invoke-direct {p0, p2, v3, v0}, Lcom/startapps/crossx/view/TouchImageView;->setViewSize(III)I

    move-result p1

    iput p1, p0, Lcom/startapps/crossx/view/TouchImageView;->viewHeight:I

    .line 524
    iget p2, p0, Lcom/startapps/crossx/view/TouchImageView;->viewWidth:I

    invoke-virtual {p0, p2, p1}, Lcom/startapps/crossx/view/TouchImageView;->setMeasuredDimension(II)V

    .line 529
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->fitImageToView()V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 508
    invoke-virtual {p0, p1, p1}, Lcom/startapps/crossx/view/TouchImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 252
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 253
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "saveScale"

    .line 254
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/view/TouchImageView;->normalizedScale:F

    const-string v0, "matrix"

    .line 255
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    .line 256
    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    const-string v0, "matchViewHeight"

    .line 257
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/view/TouchImageView;->prevMatchViewHeight:F

    const-string v0, "matchViewWidth"

    .line 258
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/view/TouchImageView;->prevMatchViewWidth:F

    const-string/jumbo v0, "viewHeight"

    .line 259
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/view/TouchImageView;->prevViewHeight:I

    const-string/jumbo v0, "viewWidth"

    .line 260
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/view/TouchImageView;->prevViewWidth:I

    const-string v0, "imageRendered"

    .line 261
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapps/crossx/view/TouchImageView;->imageRenderedAtLeastOnce:Z

    const-string v0, "instanceState"

    .line 262
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 266
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 237
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "instanceState"

    .line 238
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "saveScale"

    .line 239
    iget v2, p0, Lcom/startapps/crossx/view/TouchImageView;->normalizedScale:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "matchViewHeight"

    .line 240
    iget v2, p0, Lcom/startapps/crossx/view/TouchImageView;->matchViewHeight:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "matchViewWidth"

    .line 241
    iget v2, p0, Lcom/startapps/crossx/view/TouchImageView;->matchViewWidth:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v1, "viewWidth"

    .line 242
    iget v2, p0, Lcom/startapps/crossx/view/TouchImageView;->viewWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "viewHeight"

    .line 243
    iget v2, p0, Lcom/startapps/crossx/view/TouchImageView;->viewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const-string v1, "matrix"

    .line 245
    iget-object v2, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const-string v1, "imageRendered"

    .line 246
    iget-boolean v2, p0, Lcom/startapps/crossx/view/TouchImageView;->imageRenderedAtLeastOnce:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public resetZoom()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 333
    iput v0, p0, Lcom/startapps/crossx/view/TouchImageView;->normalizedScale:F

    .line 334
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 152
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->savePreviousImageValues()V

    .line 154
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->savePreviousImageValues()V

    .line 161
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 145
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->savePreviousImageValues()V

    .line 147
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 166
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 167
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->savePreviousImageValues()V

    .line 168
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setMaxZoom(F)V
    .locals 1

    .line 299
    iput p1, p0, Lcom/startapps/crossx/view/TouchImageView;->maxScale:F

    const/high16 v0, 0x3fa00000    # 1.25f

    mul-float/2addr p1, v0

    .line 300
    iput p1, p0, Lcom/startapps/crossx/view/TouchImageView;->superMaxScale:F

    return-void
.end method

.method public setMinZoom(F)V
    .locals 1

    .line 325
    iput p1, p0, Lcom/startapps/crossx/view/TouchImageView;->minScale:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    .line 326
    iput p1, p0, Lcom/startapps/crossx/view/TouchImageView;->superMinScale:F

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/startapps/crossx/view/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method

.method public setOnTouchImageViewListener(Lcom/startapps/crossx/view/TouchImageView$OnTouchImageViewListener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/startapps/crossx/view/TouchImageView;->touchImageViewListener:Lcom/startapps/crossx/view/TouchImageView$OnTouchImageViewListener;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/startapps/crossx/view/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 173
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_2

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_2

    .line 176
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    .line 177
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 180
    :cond_0
    iput-object p1, p0, Lcom/startapps/crossx/view/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 181
    iget-boolean p1, p0, Lcom/startapps/crossx/view/TouchImageView;->onDrawReady:Z

    if-eqz p1, :cond_1

    .line 186
    invoke-virtual {p0, p0}, Lcom/startapps/crossx/view/TouchImageView;->setZoom(Lcom/startapps/crossx/view/TouchImageView;)V

    :cond_1
    :goto_0
    return-void

    .line 174
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "TouchImageView does not support FIT_START or FIT_END"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScrollPosition(FF)V
    .locals 1

    .line 430
    iget v0, p0, Lcom/startapps/crossx/view/TouchImageView;->normalizedScale:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/startapps/crossx/view/TouchImageView;->setZoom(FFF)V

    return-void
.end method

.method public setZoom(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 342
    invoke-virtual {p0, p1, v0, v0}, Lcom/startapps/crossx/view/TouchImageView;->setZoom(FFF)V

    return-void
.end method

.method public setZoom(FFF)V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/startapps/crossx/view/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setZoom(FFFLandroid/widget/ImageView$ScaleType;)V
    .locals 7

    .line 374
    iget-boolean v0, p0, Lcom/startapps/crossx/view/TouchImageView;->onDrawReady:Z

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;-><init>(Lcom/startapps/crossx/view/TouchImageView;FFFLandroid/widget/ImageView$ScaleType;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->delayedZoomVariables:Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;

    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p4, v0, :cond_1

    .line 380
    invoke-virtual {p0, p4}, Lcom/startapps/crossx/view/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/TouchImageView;->resetZoom()V

    float-to-double v2, p1

    .line 383
    iget p1, p0, Lcom/startapps/crossx/view/TouchImageView;->viewWidth:I

    const/4 p4, 0x2

    div-int/2addr p1, p4

    int-to-float v4, p1

    iget p1, p0, Lcom/startapps/crossx/view/TouchImageView;->viewHeight:I

    div-int/2addr p1, p4

    int-to-float v5, p1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/startapps/crossx/view/TouchImageView;->scaleImage(DFFZ)V

    .line 384
    iget-object p1, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 385
    iget-object p1, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->getImageWidth()F

    move-result v0

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/startapps/crossx/view/TouchImageView;->viewWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    sub-float/2addr p2, v0

    neg-float p2, p2

    aput p2, p1, p4

    .line 386
    iget-object p1, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->getImageHeight()F

    move-result p2

    mul-float/2addr p3, p2

    iget p2, p0, Lcom/startapps/crossx/view/TouchImageView;->viewHeight:I

    int-to-float p2, p2

    mul-float/2addr p2, v1

    sub-float/2addr p3, p2

    neg-float p2, p3

    const/4 p3, 0x5

    aput p2, p1, p3

    .line 387
    iget-object p1, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/startapps/crossx/view/TouchImageView;->m:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 388
    invoke-direct {p0}, Lcom/startapps/crossx/view/TouchImageView;->fixTrans()V

    .line 389
    iget-object p1, p0, Lcom/startapps/crossx/view/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setZoom(Lcom/startapps/crossx/view/TouchImageView;)V
    .locals 3

    .line 398
    invoke-virtual {p1}, Lcom/startapps/crossx/view/TouchImageView;->getScrollPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 399
    invoke-virtual {p1}, Lcom/startapps/crossx/view/TouchImageView;->getCurrentZoom()F

    move-result v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/startapps/crossx/view/TouchImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/startapps/crossx/view/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    return-void
.end method
