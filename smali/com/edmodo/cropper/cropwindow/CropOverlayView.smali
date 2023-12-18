.class public Lcom/edmodo/cropper/cropwindow/CropOverlayView;
.super Landroid/view/View;
.source "CropOverlayView.java"


# static fields
.field private static final DEFAULT_CORNER_EXTENSION_DP:F

.field private static final DEFAULT_CORNER_LENGTH_DP:F = 20.0f

.field private static final DEFAULT_CORNER_OFFSET_DP:F

.field private static final DEFAULT_CORNER_THICKNESS_DP:F

.field private static final DEFAULT_LINE_THICKNESS_DP:F

.field private static final DEFAULT_SHOW_GUIDELINES_LIMIT:F = 100.0f

.field private static final GUIDELINES_OFF:I = 0x0

.field private static final GUIDELINES_ON:I = 0x2

.field private static final GUIDELINES_ON_TOUCH:I = 0x1

.field private static final SNAP_RADIUS_DP:I = 0x6


# instance fields
.field private initializedCropWindow:Z

.field private mAspectRatioX:I

.field private mAspectRatioY:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBitmapRect:Landroid/graphics/Rect;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mCornerExtension:F

.field private mCornerLength:F

.field private mCornerOffset:F

.field private mCornerPaint:Landroid/graphics/Paint;

.field private mFixAspectRatio:Z

.field private mGuidelinePaint:Landroid/graphics/Paint;

.field private mGuidelines:I

.field private mHandleRadius:F

.field private mPressedHandle:Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field private mSnapRadius:F

.field private mTargetAspectRatio:F

.field private mTouchOffset:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    invoke-static {}, Lcom/edmodo/cropper/util/PaintUtil;->getCornerThickness()F

    move-result v0

    sput v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->DEFAULT_CORNER_THICKNESS_DP:F

    .line 48
    invoke-static {}, Lcom/edmodo/cropper/util/PaintUtil;->getLineThickness()F

    move-result v1

    sput v1, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->DEFAULT_LINE_THICKNESS_DP:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    div-float/2addr v1, v2

    sub-float/2addr v3, v1

    .line 49
    sput v3, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->DEFAULT_CORNER_OFFSET_DP:F

    div-float/2addr v0, v2

    add-float/2addr v0, v3

    .line 50
    sput v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->DEFAULT_CORNER_EXTENSION_DP:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 120
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mFixAspectRatio:Z

    const/4 v1, 0x1

    .line 99
    iput v1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioX:I

    .line 100
    iput v1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioY:I

    int-to-float v2, v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 104
    iput v2, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    .line 110
    iput-boolean v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->initializedCropWindow:Z

    .line 121
    invoke-direct {p0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 96
    iput-boolean p2, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mFixAspectRatio:Z

    const/4 v0, 0x1

    .line 99
    iput v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioX:I

    .line 100
    iput v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioY:I

    int-to-float v1, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 104
    iput v1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    .line 110
    iput-boolean p2, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->initializedCropWindow:Z

    .line 126
    invoke-direct {p0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 13

    .line 495
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    .line 496
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    .line 497
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v11

    .line 498
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v12

    .line 515
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v1

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v1

    iget-object v10, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v9, v0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 516
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v1

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v1

    iget-object v10, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move v7, v12

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 517
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget-object v6, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v0

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 518
    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v8, p2

    iget-object v10, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v11

    move v7, v0

    move v9, v12

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCorners(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 523
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 524
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    .line 525
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v15

    .line 526
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v16

    .line 531
    iget v2, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    sub-float v10, v1, v2

    iget v3, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerExtension:F

    sub-float v11, v8, v3

    sub-float v12, v1, v2

    iget v2, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerLength:F

    add-float v13, v8, v2

    iget-object v14, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 536
    iget v2, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    sub-float v4, v8, v2

    iget v3, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerLength:F

    add-float v5, v1, v3

    sub-float v6, v8, v2

    iget-object v7, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 539
    iget v2, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    add-float v10, v15, v2

    iget v3, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerExtension:F

    sub-float v11, v8, v3

    add-float v12, v15, v2

    iget v2, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerLength:F

    add-float v13, v8, v2

    iget-object v14, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 544
    iget v2, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    sub-float v11, v8, v2

    iget v3, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerLength:F

    sub-float v12, v15, v3

    sub-float v13, v8, v2

    iget-object v14, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerPaint:Landroid/graphics/Paint;

    move v10, v15

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 547
    iget v2, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    sub-float v4, v1, v2

    iget v3, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerExtension:F

    add-float v5, v16, v3

    sub-float v6, v1, v2

    iget v2, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerLength:F

    sub-float v7, v16, v2

    iget-object v8, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 552
    iget v2, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    add-float v4, v16, v2

    iget v3, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerLength:F

    add-float v5, v1, v3

    add-float v6, v16, v2

    iget-object v7, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 559
    iget v1, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    add-float v3, v15, v1

    iget v2, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerExtension:F

    add-float v4, v16, v2

    add-float v5, v15, v1

    iget v1, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerLength:F

    sub-float v6, v16, v1

    iget-object v7, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 564
    iget v1, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    add-float v11, v16, v1

    iget v2, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerLength:F

    sub-float v12, v15, v2

    add-float v13, v16, v1

    iget-object v14, v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRuleOfThirdsGuidelines(Landroid/graphics/Canvas;)V
    .locals 12

    .line 471
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    .line 472
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 473
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    .line 474
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v9

    .line 477
    invoke-static {}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getWidth()F

    move-result v2

    const/high16 v10, 0x40400000    # 3.0f

    div-float v11, v2, v10

    add-float v5, v0, v11

    .line 480
    iget-object v7, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v5

    move v4, v1

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v5, v8, v11

    .line 482
    iget-object v7, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 485
    invoke-static {}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getHeight()F

    move-result v2

    div-float v7, v2, v10

    add-float v5, v1, v7

    .line 488
    iget-object v6, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v0

    move v3, v5

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v5, v9, v7

    .line 490
    iget-object v6, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 350
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 352
    invoke-static {p1}, Lcom/edmodo/cropper/util/HandleUtil;->getTargetRadius(Landroid/content/Context;)F

    move-result v1

    iput v1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mHandleRadius:F

    const/high16 v1, 0x40c00000    # 6.0f

    const/4 v2, 0x1

    .line 354
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mSnapRadius:F

    .line 358
    invoke-static {p1}, Lcom/edmodo/cropper/util/PaintUtil;->newBorderPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    .line 359
    invoke-static {}, Lcom/edmodo/cropper/util/PaintUtil;->newGuidelinePaint()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    .line 360
    invoke-static {p1}, Lcom/edmodo/cropper/util/PaintUtil;->newBackgroundPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 361
    invoke-static {p1}, Lcom/edmodo/cropper/util/PaintUtil;->newCornerPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerPaint:Landroid/graphics/Paint;

    .line 364
    sget p1, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->DEFAULT_CORNER_OFFSET_DP:F

    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    .line 367
    sget p1, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->DEFAULT_CORNER_EXTENSION_DP:F

    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerExtension:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 370
    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mCornerLength:F

    .line 375
    iput v2, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelines:I

    return-void
.end method

.method private initCropWindow(Landroid/graphics/Rect;)V
    .locals 5

    .line 388
    iget-boolean v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->initializedCropWindow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 389
    iput-boolean v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->initializedCropWindow:Z

    .line 391
    :cond_0
    iget-boolean v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mFixAspectRatio:Z

    if-eqz v0, :cond_4

    .line 396
    invoke-static {p1}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateAspectRatio(Landroid/graphics/Rect;)F

    move-result v0

    iget v1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    cmpl-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x42200000    # 40.0f

    if-lez v0, :cond_2

    .line 398
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 399
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 401
    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 404
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    iget v4, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    invoke-static {v0, v3, v4}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateWidth(FFF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_1

    .line 412
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iput v2, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    :cond_1
    div-float/2addr v0, v1

    .line 415
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sub-float v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 416
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    add-float/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    goto/16 :goto_0

    .line 420
    :cond_2
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 421
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 423
    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 426
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    iget v4, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    invoke-static {v0, v3, v4}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateHeight(FFF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_3

    .line 434
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    iput v3, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    :cond_3
    div-float/2addr v0, v1

    .line 437
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sub-float v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 438
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    add-float/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    goto :goto_0

    .line 444
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    .line 445
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 447
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 448
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 449
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 450
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    :goto_0
    return-void
.end method

.method private onActionDown(FF)V
    .locals 11

    .line 580
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    .line 581
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    .line 582
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v9

    .line 583
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v10

    .line 585
    iget v7, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mHandleRadius:F

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-static/range {v1 .. v7}, Lcom/edmodo/cropper/util/HandleUtil;->getPressedHandle(FFFFFFF)Lcom/edmodo/cropper/cropwindow/handle/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mPressedHandle:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    if-nez v1, :cond_0

    return-void

    :cond_0
    move v2, p1

    move v3, p2

    move v4, v0

    move v5, v8

    move v6, v9

    move v7, v10

    .line 593
    invoke-static/range {v1 .. v7}, Lcom/edmodo/cropper/util/HandleUtil;->getOffset(Lcom/edmodo/cropper/cropwindow/handle/Handle;FFFFFF)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mTouchOffset:Landroid/util/Pair;

    .line 595
    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->invalidate()V

    return-void
.end method

.method private onActionMove(FF)V
    .locals 7

    .line 620
    iget-object v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mPressedHandle:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    if-nez v0, :cond_0

    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mTouchOffset:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float v2, p1, v0

    .line 628
    iget-object p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mTouchOffset:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float v3, p2, p1

    .line 631
    iget-boolean p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mFixAspectRatio:Z

    if-eqz p1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mPressedHandle:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    iget v4, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    iget-object v5, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    iget v6, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mSnapRadius:F

    invoke-virtual/range {v1 .. v6}, Lcom/edmodo/cropper/cropwindow/handle/Handle;->updateCropWindow(FFFLandroid/graphics/Rect;F)V

    goto :goto_0

    .line 634
    :cond_1
    iget-object p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mPressedHandle:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    iget-object p2, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mSnapRadius:F

    invoke-virtual {p1, v2, v3, p2, v0}, Lcom/edmodo/cropper/cropwindow/handle/Handle;->updateCropWindow(FFLandroid/graphics/Rect;F)V

    .line 636
    :goto_0
    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->invalidate()V

    return-void
.end method

.method private onActionUp()V
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mPressedHandle:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 607
    iput-object v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mPressedHandle:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 609
    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->invalidate()V

    return-void
.end method

.method public static showGuidelines()Z
    .locals 3

    .line 462
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 142
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 145
    iget-object v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 147
    invoke-static {}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->showGuidelines()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelines:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 150
    invoke-direct {p0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->drawRuleOfThirdsGuidelines(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mPressedHandle:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    if-eqz v0, :cond_1

    .line 154
    invoke-direct {p0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->drawRuleOfThirdsGuidelines(Landroid/graphics/Canvas;)V

    .line 161
    :cond_1
    :goto_0
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v5

    iget-object v6, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 167
    invoke-direct {p0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->drawCorners(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->initCropWindow(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 174
    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 178
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    return v1

    .line 191
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->onActionMove(FF)V

    .line 192
    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v2

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 187
    invoke-direct {p0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->onActionUp()V

    return v2

    .line 181
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->onActionDown(FF)V

    return v2
.end method

.method public resetCropOverlayView()V
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->initCropWindow(Landroid/graphics/Rect;)V

    .line 222
    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setAspectRatioX(I)V
    .locals 1

    if-lez p1, :cond_1

    .line 275
    iput p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioX:I

    int-to-float p1, p1

    .line 276
    iget v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioY:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    .line 278
    iget-boolean p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->initCropWindow(Landroid/graphics/Rect;)V

    .line 280
    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->invalidate()V

    :cond_0
    return-void

    .line 273
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAspectRatioY(I)V
    .locals 1

    if-lez p1, :cond_1

    .line 296
    iput p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioY:I

    .line 297
    iget v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioX:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    .line 299
    iget-boolean p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_0

    .line 300
    iget-object p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->initCropWindow(Landroid/graphics/Rect;)V

    .line 301
    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->invalidate()V

    :cond_0
    return-void

    .line 294
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBitmapRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    .line 210
    invoke-direct {p0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->initCropWindow(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 0

    .line 256
    iput-boolean p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mFixAspectRatio:Z

    .line 258
    iget-boolean p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->initCropWindow(Landroid/graphics/Rect;)V

    .line 260
    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setGuidelines(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    .line 238
    iput p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelines:I

    .line 240
    iget-boolean p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->initCropWindow(Landroid/graphics/Rect;)V

    .line 242
    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->invalidate()V

    :cond_0
    return-void

    .line 236
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Guideline value must be set between 0 and 2. See documentation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInitialAttributeValues(IZII)V
    .locals 1

    if-ltz p1, :cond_2

    const/4 v0, 0x2

    if-gt p1, v0, :cond_2

    .line 326
    iput p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelines:I

    .line 328
    iput-boolean p2, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mFixAspectRatio:Z

    const-string p1, "Cannot set aspect ratio value to a number less than or equal to 0."

    if-lez p3, :cond_1

    .line 333
    iput p3, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioX:I

    int-to-float p2, p3

    .line 334
    iget v0, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioY:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    iput p2, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    if-lez p4, :cond_0

    .line 340
    iput p4, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioY:I

    int-to-float p1, p3

    int-to-float p2, p4

    div-float/2addr p1, p2

    .line 341
    iput p1, p0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    return-void

    .line 338
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 331
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 324
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Guideline value must be set between 0 and 2. See documentation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
