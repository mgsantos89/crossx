.class public Lcom/edmodo/cropper/CropImageView;
.super Landroid/widget/FrameLayout;
.source "CropImageView.java"


# static fields
.field public static final DEFAULT_ASPECT_RATIO_X:I = 0x1

.field public static final DEFAULT_ASPECT_RATIO_Y:I = 0x1

.field public static final DEFAULT_FIXED_ASPECT_RATIO:Z = false

.field public static final DEFAULT_GUIDELINES:I = 0x1

.field private static final DEFAULT_IMAGE_RESOURCE:I = 0x0

.field private static final DEGREES_ROTATED:Ljava/lang/String; = "DEGREES_ROTATED"

.field private static final EMPTY_RECT:Landroid/graphics/Rect;


# instance fields
.field private mAspectRatioX:I

.field private mAspectRatioY:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

.field private mDegreesRotated:I

.field private mFixAspectRatio:Z

.field private mGuidelines:I

.field private mImageResource:I

.field private mImageView:Landroid/widget/ImageView;

.field private mLayoutHeight:I

.field private mLayoutWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/edmodo/cropper/CropImageView;->EMPTY_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->mDegreesRotated:I

    const/4 v1, 0x1

    .line 68
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mGuidelines:I

    .line 69
    iput-boolean v0, p0, Lcom/edmodo/cropper/CropImageView;->mFixAspectRatio:Z

    .line 70
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioX:I

    .line 71
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioY:I

    .line 72
    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->mImageResource:I

    .line 78
    invoke-direct {p0, p1}, Lcom/edmodo/cropper/CropImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->mDegreesRotated:I

    const/4 v1, 0x1

    .line 68
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mGuidelines:I

    .line 69
    iput-boolean v0, p0, Lcom/edmodo/cropper/CropImageView;->mFixAspectRatio:Z

    .line 70
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioX:I

    .line 71
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioY:I

    .line 72
    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->mImageResource:I

    .line 84
    sget-object v2, Lcom/edmodo/cropper/R$styleable;->CropImageView:[I

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 87
    :try_start_0
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/edmodo/cropper/CropImageView;->mGuidelines:I

    .line 88
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/edmodo/cropper/CropImageView;->mFixAspectRatio:Z

    const/4 v2, 0x2

    .line 90
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioX:I

    const/4 v2, 0x3

    .line 91
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioY:I

    const/4 v1, 0x4

    .line 92
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->mImageResource:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    invoke-direct {p0, p1}, Lcom/edmodo/cropper/CropImageView;->init(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception p1

    .line 94
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private static getOnMeasureSpec(III)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    .line 500
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .line 472
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 473
    sget v0, Lcom/edmodo/cropper/R$layout;->crop_image_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 475
    sget v0, Lcom/edmodo/cropper/R$id;->ImageView_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    .line 477
    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->mImageResource:I

    invoke-virtual {p0, v0}, Lcom/edmodo/cropper/CropImageView;->setImageResource(I)V

    .line 478
    sget v0, Lcom/edmodo/cropper/R$id;->CropOverlayView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    iput-object p1, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    .line 479
    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->mGuidelines:I

    iget-boolean v1, p0, Lcom/edmodo/cropper/CropImageView;->mFixAspectRatio:Z

    iget v2, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioX:I

    iget v3, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioY:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setInitialAttributeValues(IZII)V

    return-void
.end method


# virtual methods
.method public getActualCropRect()Landroid/graphics/RectF;
    .locals 6

    .line 374
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/edmodo/cropper/util/ImageViewUtil;->getBitmapRectCenterInside(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 379
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 384
    iget-object v2, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 385
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 389
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 390
    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v4, v0

    .line 391
    invoke-static {}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getWidth()F

    move-result v0

    .line 392
    invoke-static {}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getHeight()F

    move-result v5

    mul-float/2addr v3, v1

    mul-float/2addr v4, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    mul-float/2addr v5, v2

    add-float/2addr v5, v4

    const/4 v1, 0x0

    .line 402
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 403
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 404
    iget-object v3, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 405
    iget-object v3, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 407
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2, v1, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method public getCroppedImage()Landroid/graphics/Bitmap;
    .locals 6

    .line 330
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/edmodo/cropper/util/ImageViewUtil;->getBitmapRectCenterInside(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 335
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 340
    iget-object v2, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 341
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 345
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 346
    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v4, v0

    .line 347
    invoke-static {}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getWidth()F

    move-result v0

    .line 348
    invoke-static {}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getHeight()F

    move-result v5

    mul-float/2addr v3, v1

    mul-float/2addr v4, v2

    mul-float/2addr v0, v1

    mul-float/2addr v5, v2

    .line 357
    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    float-to-int v2, v3

    float-to-int v3, v4

    float-to-int v0, v0

    float-to-int v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImageResource()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->mImageResource:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 222
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 224
    iget p1, p0, Lcom/edmodo/cropper/CropImageView;->mLayoutWidth:I

    if-lez p1, :cond_0

    iget p1, p0, Lcom/edmodo/cropper/CropImageView;->mLayoutHeight:I

    if-lez p1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/edmodo/cropper/CropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 227
    iget p2, p0, Lcom/edmodo/cropper/CropImageView;->mLayoutWidth:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 228
    iget p2, p0, Lcom/edmodo/cropper/CropImageView;->mLayoutHeight:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 229
    invoke-virtual {p0, p1}, Lcom/edmodo/cropper/CropImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 150
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 151
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 152
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 153
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 155
    iget-object v4, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    .line 157
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    if-nez v3, :cond_0

    .line 162
    iget-object p1, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-ge v1, p1, :cond_1

    int-to-double p1, v1

    .line 172
    iget-object v6, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr p1, v6

    goto :goto_0

    :cond_1
    move-wide p1, v4

    .line 174
    :goto_0
    iget-object v6, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v3, v6, :cond_2

    int-to-double v6, v3

    .line 175
    iget-object v8, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    goto :goto_1

    :cond_2
    move-wide v6, v4

    :goto_1
    cmpl-double v8, p1, v4

    if-nez v8, :cond_4

    cmpl-double v4, v6, v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 194
    :cond_3
    iget-object p1, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 195
    iget-object p2, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    goto :goto_3

    :cond_4
    :goto_2
    cmpg-double v4, p1, v6

    if-gtz v4, :cond_5

    .line 183
    iget-object v4, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, p1

    double-to-int p2, v4

    move p1, v1

    goto :goto_3

    .line 186
    :cond_5
    iget-object p1, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-double p1, p1

    mul-double/2addr p1, v6

    double-to-int p1, p1

    move p2, v3

    .line 198
    :goto_3
    invoke-static {v0, v1, p1}, Lcom/edmodo/cropper/CropImageView;->getOnMeasureSpec(III)I

    move-result p1

    .line 199
    invoke-static {v2, v3, p2}, Lcom/edmodo/cropper/CropImageView;->getOnMeasureSpec(III)I

    move-result p2

    .line 201
    iput p1, p0, Lcom/edmodo/cropper/CropImageView;->mLayoutWidth:I

    .line 202
    iput p2, p0, Lcom/edmodo/cropper/CropImageView;->mLayoutHeight:I

    .line 204
    iget-object p1, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->mLayoutWidth:I

    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->mLayoutHeight:I

    invoke-static {p1, p2, v0, v1}, Lcom/edmodo/cropper/util/ImageViewUtil;->getBitmapRectCenterInside(IIII)Landroid/graphics/Rect;

    move-result-object p1

    .line 208
    iget-object p2, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {p2, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    .line 211
    iget p1, p0, Lcom/edmodo/cropper/CropImageView;->mLayoutWidth:I

    iget p2, p0, Lcom/edmodo/cropper/CropImageView;->mLayoutHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/edmodo/cropper/CropImageView;->setMeasuredDimension(II)V

    goto :goto_4

    .line 215
    :cond_6
    iget-object p1, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    sget-object p2, Lcom/edmodo/cropper/CropImageView;->EMPTY_RECT:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    .line 216
    invoke-virtual {p0, v1, v3}, Lcom/edmodo/cropper/CropImageView;->setMeasuredDimension(II)V

    :goto_4
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 117
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 119
    check-cast p1, Landroid/os/Bundle;

    .line 121
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const-string v0, "DEGREES_ROTATED"

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 125
    invoke-virtual {p0, v0}, Lcom/edmodo/cropper/CropImageView;->rotateImage(I)V

    .line 126
    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->mDegreesRotated:I

    :cond_0
    const-string v0, "instanceState"

    .line 129
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "instanceState"

    .line 107
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "DEGREES_ROTATED"

    .line 108
    iget v2, p0, Lcom/edmodo/cropper/CropImageView;->mDegreesRotated:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 139
    iget-object p1, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 140
    invoke-static {p1, p0}, Lcom/edmodo/cropper/util/ImageViewUtil;->getBitmapRectCenterInside(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 141
    iget-object p2, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {p2, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    sget-object p2, Lcom/edmodo/cropper/CropImageView;->EMPTY_RECT:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public rotateImage(I)V
    .locals 7

    .line 459
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    .line 460
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 461
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 462
    invoke-virtual {p0, v0}, Lcom/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 464
    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->mDegreesRotated:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 465
    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->mDegreesRotated:I

    return-void
.end method

.method public setAspectRatio(II)V
    .locals 1

    .line 444
    iput p1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioX:I

    .line 445
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setAspectRatioX(I)V

    .line 447
    iput p2, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioY:I

    .line 448
    iget-object p1, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {p1, p2}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setAspectRatioY(I)V

    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setFixedAspectRatio(Z)V

    return-void
.end method

.method public setGuidelines(I)V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setGuidelines(I)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 251
    iput-object p1, p0, Lcom/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 252
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 254
    iget-object p1, p0, Lcom/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->resetCropOverlayView()V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 275
    invoke-virtual {p0, p1}, Lcom/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 279
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 280
    invoke-virtual {p2, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, -0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x6

    if-eq p2, v0, :cond_3

    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    move p2, v1

    goto :goto_0

    :cond_2
    const/16 p2, 0x10e

    goto :goto_0

    :cond_3
    const/16 p2, 0x5a

    goto :goto_0

    :cond_4
    const/16 p2, 0xb4

    :goto_0
    if-ne p2, v1, :cond_5

    .line 296
    invoke-virtual {p0, p1}, Lcom/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_5
    int-to-float p2, p2

    .line 298
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 299
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 306
    invoke-virtual {p0, p2}, Lcom/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 307
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/edmodo/cropper/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 319
    invoke-virtual {p0, p1}, Lcom/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
