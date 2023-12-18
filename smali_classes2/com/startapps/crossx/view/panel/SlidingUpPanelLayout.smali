.class public Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;
.super Landroid/view/ViewGroup;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;,
        Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;,
        Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelSlideListener;,
        Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;,
        Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$SavedState;,
        Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$SimplePanelSlideListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANCHOR_POINT:F = 1.0f

.field private static final DEFAULT_ATTRS:[I

.field private static final DEFAULT_CLIP_PANEL_FLAG:Z = true

.field private static final DEFAULT_FADE_COLOR:I = -0x67000000

.field private static final DEFAULT_MIN_FLING_VELOCITY:I = 0x190

.field private static final DEFAULT_OVERLAY_FLAG:Z = false

.field private static final DEFAULT_PANEL_HEIGHT:I = 0x44

.field private static final DEFAULT_PARALAX_OFFSET:I = 0x0

.field private static final DEFAULT_SHADOW_HEIGHT:I = 0x4

.field private static DEFAULT_SLIDE_STATE:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState; = null

.field private static final TAG:Ljava/lang/String; = "SlidingUpPanelLayout"


# instance fields
.field private mAnchorPoint:F

.field private mClipPanel:Z

.field private mCoveredFadeColor:I

.field private final mCoveredFadePaint:Landroid/graphics/Paint;

.field private final mDragHelper:Lcom/startapps/crossx/view/panel/ViewDragHelper;

.field private mDragView:Landroid/view/View;

.field private mDragViewResId:I

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsScrollable:Z

.field private mIsScrollableViewHandlingTouch:Z

.field private mIsSlidingUp:Z

.field private mIsTouchEnabled:Z

.field private mIsUnableToDrag:Z

.field private mLastNotDraggingSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

.field private mMainView:Landroid/view/View;

.field private mMinFlingVelocity:I

.field private mOverlayContent:Z

.field private mPanelHeight:I

.field private mPanelSlideListener:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelSlideListener;

.field private mParallaxOffset:I

.field private mPrevMotionY:F

.field private mScrollableView:Landroid/view/View;

.field private mScrollableViewResId:I

.field private final mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowHeight:I

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

.field private mSlideableView:Landroid/view/View;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnchorPoint(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F
    .locals 0

    iget p0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mAnchorPoint:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDragHelper(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Lcom/startapps/crossx/view/panel/ViewDragHelper;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragHelper:Lcom/startapps/crossx/view/panel/ViewDragHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSlidingUp(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsUnableToDrag(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlideOffset(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F
    .locals 0

    iget p0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideOffset:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlideRange(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)I
    .locals 0

    iget p0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideRange:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlideState(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlideableView(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSlideOffset(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;F)V
    .locals 0

    iput p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideOffset:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSlideState(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyParallaxForCurrentSlideOffset(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->applyParallaxForCurrentSlideOffset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcomputePanelTopPosition(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;F)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcomputeSlideOffset(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;I)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monPanelDragged(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->onPanelDragged(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 50
    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    sput-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->DEFAULT_SLIDE_STATE:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    const v0, 0x10100af

    .line 77
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->DEFAULT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 296
    invoke-direct {p0, p1, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 300
    invoke-direct {p0, p1, p2, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 304
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x190

    .line 84
    iput p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    const/high16 v0, -0x67000000

    .line 89
    iput v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 99
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 109
    iput v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 114
    iput v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 119
    iput v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mParallaxOffset:I

    const/4 v2, 0x0

    .line 129
    iput-boolean v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mOverlayContent:Z

    const/4 v3, 0x1

    .line 134
    iput-boolean v3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mClipPanel:Z

    .line 146
    iput v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragViewResId:I

    .line 175
    sget-object v4, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->DEFAULT_SLIDE_STATE:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    iput-object v4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    const/4 v4, 0x0

    .line 180
    iput-object v4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mLastNotDraggingSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 196
    iput v5, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mAnchorPoint:F

    .line 212
    iput-boolean v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 213
    iput-boolean v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsScrollable:Z

    .line 224
    iput-boolean v3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 226
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 306
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 307
    iput-object v4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 308
    iput-object v4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragHelper:Lcom/startapps/crossx/view/panel/ViewDragHelper;

    return-void

    :cond_0
    if-eqz p2, :cond_3

    .line 313
    sget-object v6, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->DEFAULT_ATTRS:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 316
    invoke-virtual {v6, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 317
    invoke-virtual {p0, v7}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->setGravity(I)V

    .line 320
    :cond_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 322
    sget-object v6, Lcom/startapps/crossx/R$styleable;->SlidingUpPanelLayout:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 v6, 0x8

    .line 325
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelHeight:I

    const/16 v6, 0xb

    .line 326
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mShadowHeight:I

    const/16 v6, 0x9

    .line 327
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mParallaxOffset:I

    const/4 v6, 0x5

    .line 329
    invoke-virtual {p2, v6, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    const/4 p3, 0x4

    .line 330
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    const/4 p3, 0x3

    .line 332
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragViewResId:I

    const/16 p3, 0xa

    .line 333
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mScrollableViewResId:I

    const/4 p3, 0x7

    .line 335
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mOverlayContent:Z

    const/4 p3, 0x2

    .line 336
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mClipPanel:Z

    .line 338
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mAnchorPoint:F

    .line 340
    invoke-static {}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->values()[Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    move-result-object p3

    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->DEFAULT_SLIDE_STATE:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->ordinal()I

    move-result v0

    const/4 v5, 0x6

    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    aget-object p3, p3, v0

    iput-object p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    .line 342
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsScrollable:Z

    .line 345
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 348
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 349
    iget p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelHeight:I

    const/high16 p3, 0x3f000000    # 0.5f

    if-ne p2, v1, :cond_4

    const/high16 p2, 0x42880000    # 68.0f

    mul-float/2addr p2, p1

    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 350
    iput p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 352
    :cond_4
    iget p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mShadowHeight:I

    if-ne p2, v1, :cond_5

    const/high16 p2, 0x40800000    # 4.0f

    mul-float/2addr p2, p1

    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 353
    iput p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 355
    :cond_5
    iget p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mParallaxOffset:I

    if-ne p2, v1, :cond_6

    const/4 p2, 0x0

    mul-float/2addr p2, p1

    float-to-int p2, p2

    .line 356
    iput p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mParallaxOffset:I

    .line 359
    :cond_6
    iget p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mShadowHeight:I

    if-lez p2, :cond_8

    .line 360
    iget-boolean p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz p2, :cond_7

    .line 361
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080058

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 363
    :cond_7
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080061

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 366
    :cond_8
    iput-object v4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 369
    :goto_0
    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->setWillNotDraw(Z)V

    .line 371
    new-instance p2, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;

    invoke-direct {p2, p0, v4}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback;-><init>(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$DragHelperCallback-IA;)V

    invoke-static {p0, p3, p2}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/startapps/crossx/view/panel/ViewDragHelper$Callback;)Lcom/startapps/crossx/view/panel/ViewDragHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragHelper:Lcom/startapps/crossx/view/panel/ViewDragHelper;

    .line 372
    iget p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    int-to-float p3, p3

    mul-float/2addr p3, p1

    invoke-virtual {p2, p3}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->setMinVelocity(F)V

    .line 374
    iput-boolean v3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsTouchEnabled:Z

    return-void
.end method

.method private applyParallaxForCurrentSlideOffset()V
    .locals 0

    return-void
.end method

.method private computePanelTopPosition(F)I
    .locals 2

    .line 1086
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1087
    :goto_0
    iget v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 1089
    iget-boolean v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_1

    .line 1090
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    goto :goto_1

    .line 1091
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelHeight:I

    add-int/2addr v1, v0

    add-int v0, v1, p1

    :goto_1
    return v0
.end method

.method private computeSlideOffset(I)F
    .locals 2

    const/4 v0, 0x0

    .line 1099
    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v0

    .line 1103
    iget-boolean v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_0

    sub-int/2addr v0, p1

    int-to-float p1, v0

    .line 1104
    iget v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideRange:I

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 1105
    iget v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideRange:I

    :goto_0
    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method private getScrollableViewScrollPosition()I
    .locals 4

    .line 1044
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mScrollableView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1045
    :cond_0
    instance-of v2, v0, Landroid/widget/ScrollView;

    if-eqz v2, :cond_2

    .line 1046
    iget-boolean v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v2, :cond_1

    .line 1047
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0

    .line 1049
    :cond_1
    check-cast v0, Landroid/widget/ScrollView;

    .line 1050
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1051
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    add-int/2addr v2, v0

    sub-int/2addr v1, v2

    return v1

    .line 1053
    :cond_2
    instance-of v2, v0, Landroid/widget/ListView;

    if-eqz v2, :cond_5

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 1054
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mScrollableView:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    .line 1055
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    .line 1056
    :cond_3
    iget-boolean v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v2, :cond_4

    .line 1057
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1059
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    return v0

    .line 1061
    :cond_4
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1063
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getBottom()I

    move-result v0

    :goto_1
    sub-int/2addr v2, v0

    return v2

    .line 1065
    :cond_5
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mScrollableView:Landroid/view/View;

    instance-of v2, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_8

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 1066
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mScrollableView:Landroid/view/View;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 1067
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-nez v2, :cond_6

    return v1

    .line 1068
    :cond_6
    iget-boolean v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v2, :cond_7

    .line 1069
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1071
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    .line 1073
    :cond_7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1075
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v2, v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getBottom()I

    move-result v0

    goto :goto_1

    :cond_8
    return v1
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 1

    .line 714
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 715
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isViewUnder(Landroid/view/View;II)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 1034
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v1, v1, [I

    .line 1036
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getLocationOnScreen([I)V

    aget v3, v1, v0

    add-int/2addr v3, p2

    const/4 p2, 0x1

    aget v1, v1, p2

    add-int/2addr v1, p3

    aget p3, v2, v0

    if-lt v3, p3, :cond_1

    .line 1039
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr p3, v4

    if-ge v3, p3, :cond_1

    aget p3, v2, p2

    if-lt v1, p3, :cond_1

    .line 1040
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p3, p1

    if-ge v1, p3, :cond_1

    move v0, p2

    :cond_1
    return v0
.end method

.method private onPanelDragged(I)V
    .locals 4

    .line 1172
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    iput-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mLastNotDraggingSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    .line 1173
    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    iput-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    .line 1175
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideOffset:F

    .line 1176
    invoke-direct {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->applyParallaxForCurrentSlideOffset()V

    .line 1178
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    .line 1181
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;

    .line 1182
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int/2addr v1, v2

    .line 1184
    iget v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideOffset:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    iget-boolean v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v2, :cond_1

    .line 1186
    iget-boolean v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int p1, v1, p1

    :goto_0
    iput p1, v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;->height:I

    .line 1187
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    .line 1188
    :cond_1
    iget p1, v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;->height:I

    if-eq p1, v1, :cond_2

    iget-boolean p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez p1, :cond_2

    .line 1189
    iput v1, v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;->height:I

    .line 1190
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 1302
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1303
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 1304
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 1305
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 1306
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 1309
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 1310
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 1311
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 1312
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 1313
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 1312
    invoke-virtual/range {v6 .. v11}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 1318
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1336
    instance-of v0, p1, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeScroll()V
    .locals 2

    .line 1258
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragHelper:Lcom/startapps/crossx/view/panel/ViewDragHelper;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1259
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragHelper:Lcom/startapps/crossx/view/panel/ViewDragHelper;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->abort()V

    return-void

    .line 1264
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method dispatchOnPanelAnchored(Landroid/view/View;)V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 657
    invoke-interface {v0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelSlideListener;->onPanelAnchored(Landroid/view/View;)V

    :cond_0
    const/16 p1, 0x20

    .line 659
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelCollapsed(Landroid/view/View;)V
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 650
    invoke-interface {v0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelSlideListener;->onPanelCollapsed(Landroid/view/View;)V

    :cond_0
    const/16 p1, 0x20

    .line 652
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelExpanded(Landroid/view/View;)V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 643
    invoke-interface {v0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelSlideListener;->onPanelExpanded(Landroid/view/View;)V

    :cond_0
    const/16 p1, 0x20

    .line 645
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelHidden(Landroid/view/View;)V
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 664
    invoke-interface {v0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelSlideListener;->onPanelHidden(Landroid/view/View;)V

    :cond_0
    const/16 p1, 0x20

    .line 666
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 637
    iget v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 954
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 956
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->isTouchEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 961
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 964
    iput-boolean v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 965
    iput v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPrevMotionY:F

    goto/16 :goto_1

    :cond_1
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v3, :cond_a

    .line 967
    iget v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPrevMotionY:F

    sub-float v0, v1, v0

    .line 968
    iput v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPrevMotionY:F

    .line 972
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mScrollableView:Landroid/view/View;

    iget v3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mInitialMotionX:F

    float-to-int v3, v3

    iget v5, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mInitialMotionY:F

    float-to-int v5, v5

    invoke-direct {p0, v1, v3, v5}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->isViewUnder(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 973
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 977
    :cond_2
    iget-boolean v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    const/4 v3, -0x1

    if-eqz v1, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_0
    int-to-float v5, v5

    mul-float/2addr v5, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    .line 980
    invoke-direct {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getScrollableViewScrollPosition()I

    move-result v0

    if-lez v0, :cond_4

    .line 981
    iput-boolean v4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 982
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 988
    :cond_4
    iget-boolean v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    if-eqz v0, :cond_5

    .line 990
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x3

    .line 991
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 992
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 993
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 997
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1000
    :cond_5
    iput-boolean v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 1001
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_6
    if-eqz v1, :cond_7

    move v3, v4

    :cond_7
    int-to-float v1, v3

    mul-float/2addr v0, v1

    cmpg-float v0, v0, v6

    if-gez v0, :cond_b

    .line 1005
    iget v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 1006
    iput-boolean v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 1007
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1013
    :cond_8
    iget-boolean v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragHelper:Lcom/startapps/crossx/view/panel/ViewDragHelper;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1014
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragHelper:Lcom/startapps/crossx/view/panel/ViewDragHelper;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->cancel()V

    .line 1015
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1018
    :cond_9
    iput-boolean v4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 1019
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_a
    if-ne v0, v4, :cond_b

    .line 1021
    iget-boolean v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    if-eqz v0, :cond_b

    .line 1024
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragHelper:Lcom/startapps/crossx/view/panel/ViewDragHelper;

    invoke-virtual {v0, v2}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->setDragState(I)V

    .line 1028
    :cond_b
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 957
    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragHelper:Lcom/startapps/crossx/view/panel/ViewDragHelper;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->cancel()V

    .line 958
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1270
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 1197
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1199
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eq v1, p2, :cond_3

    .line 1202
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1203
    iget-boolean v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v1, :cond_1

    .line 1204
    iget-boolean v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_0

    .line 1205
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1207
    :cond_0
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1210
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mClipPanel:Z

    if-eqz v1, :cond_2

    .line 1211
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1214
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 1216
    iget p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    if-eqz p3, :cond_4

    iget p4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideOffset:F

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_4

    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    mul-float/2addr v1, p4

    float-to-int p4, v1

    shl-int/lit8 p4, p4, 0x18

    const v1, 0xffffff

    and-int/2addr p3, v1

    or-int/2addr p3, p4

    .line 1220
    iget-object p4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1221
    iget-object p3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 1224
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 1227
    :cond_4
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1324
    new-instance v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1341
    new-instance v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1329
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 1330
    new-instance v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 1331
    :cond_0
    new-instance v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public getAnchorPoint()F
    .locals 1

    .line 605
    iget v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mAnchorPoint:F

    return v0
.end method

.method public getCoveredFadeColor()I
    .locals 1

    .line 416
    iget v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getCurrentParalaxOffset()I
    .locals 3

    .line 489
    iget v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mParallaxOffset:I

    int-to-float v0, v0

    iget v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideOffset:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 490
    iget-boolean v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_0

    neg-int v0, v0

    :cond_0
    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .line 509
    iget v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    return v0
.end method

.method public getPanelHeight()I
    .locals 1

    .line 481
    iget v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelHeight:I

    return v0
.end method

.method public getPanelState()Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;
    .locals 1

    .line 1114
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    return-object v0
.end method

.method public getShadowHeight()I
    .locals 1

    .line 462
    iget v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mShadowHeight:I

    return v0
.end method

.method public isClipPanel()Z
    .locals 1

    .line 632
    iget-boolean v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mClipPanel:Z

    return v0
.end method

.method public isOverlayed()Z
    .locals 1

    .line 621
    iget-boolean v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mOverlayContent:Z

    return v0
.end method

.method public isTouchEnabled()Z
    .locals 2

    .line 429
    iget-boolean v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsTouchEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    sget-object v1, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 720
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 721
    iput-boolean v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 726
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 727
    iput-boolean v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 382
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 383
    iget v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragViewResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 384
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 386
    :cond_0
    iget v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mScrollableViewResId:I

    if-eq v0, v1, :cond_1

    .line 387
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->setScrollableView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 888
    iget-boolean v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsScrollable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 891
    iget-boolean v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    if-eqz v0, :cond_0

    .line 892
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragHelper:Lcom/startapps/crossx/view/panel/ViewDragHelper;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->cancel()V

    return v1

    .line 896
    :cond_0
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 897
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 898
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    if-eqz v0, :cond_5

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 909
    :cond_1
    iget v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mInitialMotionX:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 910
    iget v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mInitialMotionY:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 911
    iget-object v3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragHelper:Lcom/startapps/crossx/view/panel/ViewDragHelper;

    invoke-virtual {v3}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_3

    .line 913
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    iget v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mInitialMotionX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mInitialMotionY:F

    float-to-int v3, v3

    invoke-direct {p0, v0, v2, v3}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_6

    .line 914
    :cond_3
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragHelper:Lcom/startapps/crossx/view/panel/ViewDragHelper;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->cancel()V

    .line 915
    iput-boolean v4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    return v1

    .line 926
    :cond_4
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragHelper:Lcom/startapps/crossx/view/panel/ViewDragHelper;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 927
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragHelper:Lcom/startapps/crossx/view/panel/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    return v4

    .line 902
    :cond_5
    iput-boolean v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    .line 903
    iput v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mInitialMotionX:F

    .line 904
    iput v3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mInitialMotionY:F

    .line 932
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragHelper:Lcom/startapps/crossx/view/panel/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_7
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 817
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result p1

    .line 818
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result p2

    .line 820
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getChildCount()I

    move-result p3

    .line 822
    iget-boolean p4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz p4, :cond_4

    .line 823
    sget-object p4, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$2;->$SwitchMap$com$startapps$crossx$view$panel$SlidingUpPanelLayout$PanelState:[I

    iget-object p5, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {p5}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->ordinal()I

    move-result p5

    aget p4, p4, p5

    const/4 p5, 0x1

    if-eq p4, p5, :cond_3

    const/4 p5, 0x2

    if-eq p4, p5, :cond_2

    const/4 p5, 0x3

    const/4 v0, 0x0

    if-eq p4, p5, :cond_0

    .line 835
    iput v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_1

    .line 831
    :cond_0
    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result p4

    iget-boolean p5, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz p5, :cond_1

    iget p5, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelHeight:I

    goto :goto_0

    :cond_1
    iget p5, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelHeight:I

    neg-int p5, p5

    :goto_0
    add-int/2addr p4, p5

    .line 832
    invoke-direct {p0, p4}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result p4

    iput p4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_1

    .line 828
    :cond_2
    iget p4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mAnchorPoint:F

    iput p4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_1

    :cond_3
    const/high16 p4, 0x3f800000    # 1.0f

    .line 825
    iput p4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideOffset:F

    :cond_4
    :goto_1
    const/4 p4, 0x0

    move p5, p4

    :goto_2
    if-ge p5, p3, :cond_9

    .line 841
    invoke-virtual {p0, p5}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 842
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;

    .line 845
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    if-eqz p5, :cond_8

    iget-boolean v2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v2, :cond_5

    goto :goto_4

    .line 849
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 852
    iget-object v3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-ne v0, v3, :cond_6

    .line 853
    iget v3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-direct {p0, v3}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v3

    goto :goto_3

    :cond_6
    move v3, p2

    .line 856
    :goto_3
    iget-boolean v4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-nez v4, :cond_7

    .line 857
    iget-object v4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    if-ne v0, v4, :cond_7

    iget-boolean v4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v4, :cond_7

    .line 858
    iget v3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-direct {p0, v3}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v3

    iget-object v4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    :cond_7
    add-int/2addr v2, v3

    .line 862
    iget v1, v1, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, p1

    .line 863
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    .line 865
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/view/View;->layout(IIII)V

    :cond_8
    :goto_4
    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    .line 868
    :cond_9
    iget-boolean p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz p1, :cond_a

    .line 869
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 871
    :cond_a
    invoke-direct {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->applyParallaxForCurrentSlideOffset()V

    .line 873
    iput-boolean p4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 732
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 733
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 734
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 735
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_e

    if-ne v1, v2, :cond_d

    .line 743
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    const/4 v1, 0x0

    .line 749
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    const/4 v3, 0x1

    .line 750
    invoke-virtual {p0, v3}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    .line 751
    iget-object v4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 752
    invoke-virtual {p0, v3}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 756
    :cond_0
    iget-object v3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 757
    sget-object v3, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    iput-object v3, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    .line 760
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 761
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    :goto_0
    if-ge v1, v0, :cond_b

    .line 765
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 766
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;

    .line 769
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    if-nez v1, :cond_2

    goto/16 :goto_6

    .line 775
    :cond_2
    iget-object v7, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    if-ne v5, v7, :cond_4

    .line 776
    iget-boolean v7, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    sget-object v8, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    if-eq v7, v8, :cond_3

    .line 777
    iget v7, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int v7, v3, v7

    goto :goto_1

    :cond_3
    move v7, v3

    .line 780
    :goto_1
    iget v8, v6, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;->leftMargin:I

    iget v9, v6, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    sub-int v8, v4, v8

    goto :goto_3

    .line 781
    :cond_4
    iget-object v7, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-ne v5, v7, :cond_5

    .line 784
    iget v7, v6, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;->topMargin:I

    sub-int v7, v3, v7

    goto :goto_2

    :cond_5
    move v7, v3

    :goto_2
    move v8, v4

    .line 788
    :goto_3
    iget v9, v6, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;->width:I

    const/high16 v10, -0x80000000

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-ne v9, v12, :cond_6

    .line 789
    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_4

    .line 790
    :cond_6
    iget v9, v6, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;->width:I

    if-ne v9, v11, :cond_7

    .line 791
    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_4

    .line 793
    :cond_7
    iget v8, v6, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;->width:I

    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 797
    :goto_4
    iget v9, v6, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;->height:I

    if-ne v9, v12, :cond_8

    .line 798
    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_5

    .line 799
    :cond_8
    iget v9, v6, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;->height:I

    if-ne v9, v11, :cond_9

    .line 800
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_5

    .line 802
    :cond_9
    iget v6, v6, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$LayoutParams;->height:I

    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 805
    :goto_5
    invoke-virtual {v5, v8, v6}, Landroid/view/View;->measure(II)V

    .line 807
    iget-object v6, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-ne v5, v6, :cond_a

    .line 808
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideRange:I

    :cond_a
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 812
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->setMeasuredDimension(II)V

    return-void

    .line 746
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Sliding up panel layout must have exactly 2 children!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 740
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Height must have an exact value or MATCH_PARENT"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 738
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1359
    check-cast p1, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$SavedState;

    .line 1360
    invoke-virtual {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1361
    iget-object v0, p1, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->DEFAULT_SLIDE_STATE:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    :goto_0
    iput-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1346
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1348
    new-instance v1, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1349
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    sget-object v2, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    if-eq v0, v2, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    iput-object v0, v1, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    goto :goto_0

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mLastNotDraggingSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    iput-object v0, v1, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    :goto_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 878
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p2, p4, :cond_0

    const/4 p1, 0x1

    .line 881
    iput-boolean p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mFirstLayout:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 940
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->isTouchEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 944
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragHelper:Lcom/startapps/crossx/view/panel/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1

    .line 941
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method setAllChildrenVisible()V
    .locals 6

    .line 705
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 706
    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 707
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 708
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAnchorPoint(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 595
    iput p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mAnchorPoint:F

    :cond_0
    return-void
.end method

.method public setClipPanel(Z)V
    .locals 0

    .line 625
    iput-boolean p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mClipPanel:Z

    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0

    .line 408
    iput p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 409
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->invalidate()V

    return-void
.end method

.method public setDragView(I)V
    .locals 0

    .line 573
    iput p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragViewResId:I

    .line 574
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    return-void
.end method

.method public setDragView(Landroid/view/View;)V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 537
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    :cond_0
    iput-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 541
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 542
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 543
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 545
    iget-boolean p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsScrollable:Z

    if-eqz p1, :cond_1

    .line 547
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    new-instance v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$1;-><init>(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setGravity(I)V
    .locals 2

    const/16 v0, 0x30

    const/16 v1, 0x50

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "gravity must be set to either top or bottom"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 395
    :goto_1
    iput-boolean p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    .line 396
    iget-boolean p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez p1, :cond_3

    .line 397
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->requestLayout()V

    :cond_3
    return-void
.end method

.method public setMinFlingVelocity(I)V
    .locals 0

    .line 518
    iput p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    return-void
.end method

.method public setOverlayed(Z)V
    .locals 0

    .line 614
    iput-boolean p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mOverlayContent:Z

    return-void
.end method

.method public setPanelHeight(I)V
    .locals 1

    .line 438
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getPanelHeight()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 442
    :cond_0
    iput p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 443
    iget-boolean p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez p1, :cond_1

    .line 444
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->requestLayout()V

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getPanelState()Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    move-result-object p1

    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    if-ne p1, v0, :cond_2

    .line 448
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->smoothToBottom()V

    .line 449
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public setPanelSlideListener(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelSlideListener;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelSlideListener;

    return-void
.end method

.method public setPanelState(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;)V
    .locals 3

    if-eqz p1, :cond_a

    .line 1123
    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    if-eq p1, v0, :cond_a

    .line 1126
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_9

    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    if-eq p1, v0, :cond_9

    sget-object v1, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 1131
    :cond_1
    iget-boolean v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v0, :cond_2

    .line 1132
    iput-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    goto :goto_1

    .line 1134
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideState:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    sget-object v1, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 1135
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->requestLayout()V

    .line 1138
    :cond_3
    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$2;->$SwitchMap$com$startapps$crossx$view$panel$SlidingUpPanelLayout$PanelState:[I

    invoke-virtual {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    goto :goto_1

    .line 1143
    :cond_4
    invoke-virtual {p0, v1, v2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    goto :goto_1

    .line 1149
    :cond_5
    invoke-direct {p0, v1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result p1

    iget-boolean v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelHeight:I

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mPanelHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr p1, v0

    .line 1150
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    goto :goto_1

    .line 1140
    :cond_7
    iget p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mAnchorPoint:F

    invoke-virtual {p0, p1, v2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    goto :goto_1

    :cond_8
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1146
    invoke-virtual {p0, p1, v2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    :cond_9
    :goto_1
    return-void

    .line 1124
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Panel state cannot be null or DRAGGING."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParalaxOffset(I)V
    .locals 0

    .line 499
    iput p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mParallaxOffset:I

    .line 500
    iget-boolean p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez p1, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setScrollableView(Landroid/view/View;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mScrollableView:Landroid/view/View;

    return-void
.end method

.method public setShadowHeight(I)V
    .locals 0

    .line 471
    iput p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 472
    iget-boolean p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez p1, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    .line 425
    iput-boolean p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mIsTouchEnabled:Z

    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 3

    .line 1239
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->isEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-nez p2, :cond_0

    goto :goto_0

    .line 1244
    :cond_0
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result p1

    .line 1246
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "smoothSlideTo "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "smoothSlideTo"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object p2, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mDragHelper:Lcom/startapps/crossx/view/panel/ViewDragHelper;

    iget-object v1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2, v1, v2, p1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1249
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->setAllChildrenVisible()V

    .line 1250
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method protected smoothToBottom()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 455
    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    return-void
.end method

.method updateObscuredViewVisibility()V
    .locals 11

    .line 670
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v0

    .line 674
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 675
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v2

    .line 676
    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 681
    iget-object v4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 682
    iget-object v4, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 683
    iget-object v6, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    .line 684
    iget-object v7, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 685
    iget-object v8, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v4

    move v7, v6

    move v8, v7

    .line 689
    :goto_0
    invoke-virtual {p0, v5}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 690
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 691
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 692
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 693
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lt v0, v4, :cond_2

    if-lt v2, v7, :cond_2

    if-gt v1, v6, :cond_2

    if-gt v3, v8, :cond_2

    const/4 v5, 0x4

    .line 701
    :cond_2
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
