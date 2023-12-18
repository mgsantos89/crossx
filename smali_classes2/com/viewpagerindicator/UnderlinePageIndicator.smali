.class public Lcom/viewpagerindicator/UnderlinePageIndicator;
.super Landroid/view/View;
.source "UnderlinePageIndicator.java"

# interfaces
.implements Lcom/viewpagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final FADE_FRAME_MS:I = 0x1e

.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mCurrentPage:I

.field private mFadeBy:I

.field private mFadeDelay:I

.field private mFadeLength:I

.field private final mFadeRunnable:Ljava/lang/Runnable;

.field private mFades:Z

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPositionOffset:F

.field private mScrollState:I

.field private mTouchSlop:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 78
    sget v0, Lcom/viewpagerindicator/R$attr;->vpiUnderlinePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x40800000    # -1.0f

    .line 56
    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mLastMotionX:F

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    .line 60
    new-instance v0, Lcom/viewpagerindicator/UnderlinePageIndicator$1;

    invoke-direct {v0, p0}, Lcom/viewpagerindicator/UnderlinePageIndicator$1;-><init>(Lcom/viewpagerindicator/UnderlinePageIndicator;)V

    iput-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    .line 83
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    sget v1, Lcom/viewpagerindicator/R$bool;->default_underline_indicator_fades:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 89
    sget v2, Lcom/viewpagerindicator/R$integer;->default_underline_indicator_fade_delay:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 90
    sget v3, Lcom/viewpagerindicator/R$integer;->default_underline_indicator_fade_length:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 91
    sget v4, Lcom/viewpagerindicator/R$color;->default_underline_indicator_selected_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 94
    sget-object v4, Lcom/viewpagerindicator/R$styleable;->UnderlinePageIndicator:[I

    const/4 v5, 0x0

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 96
    sget p3, Lcom/viewpagerindicator/R$styleable;->UnderlinePageIndicator_fades:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setFades(Z)V

    .line 97
    sget p3, Lcom/viewpagerindicator/R$styleable;->UnderlinePageIndicator_selectedColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setSelectedColor(I)V

    .line 98
    sget p3, Lcom/viewpagerindicator/R$styleable;->UnderlinePageIndicator_fadeDelay:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setFadeDelay(I)V

    .line 99
    sget p3, Lcom/viewpagerindicator/R$styleable;->UnderlinePageIndicator_fadeLength:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setFadeLength(I)V

    .line 101
    sget p3, Lcom/viewpagerindicator/R$styleable;->UnderlinePageIndicator_android_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 103
    invoke-virtual {p0, p3}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 109
    invoke-static {p1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mTouchSlop:I

    return-void
.end method

.method static synthetic access$000(Lcom/viewpagerindicator/UnderlinePageIndicator;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFades:Z

    return p0
.end method

.method static synthetic access$100(Lcom/viewpagerindicator/UnderlinePageIndicator;)Landroid/graphics/Paint;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$200(Lcom/viewpagerindicator/UnderlinePageIndicator;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeBy:I

    return p0
.end method

.method static synthetic access$300(Lcom/viewpagerindicator/UnderlinePageIndicator;)Ljava/lang/Runnable;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public getFadeDelay()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeDelay:I

    return v0
.end method

.method public getFadeLength()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeLength:I

    return v0
.end method

.method public getFades()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFades:Z

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 306
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 157
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 159
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 167
    :cond_1
    iget v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    if-lt v1, v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 168
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setCurrentItem(I)V

    return-void

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getPaddingLeft()I

    move-result v1

    .line 173
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v0, v0

    mul-float/2addr v0, v3

    div-float/2addr v2, v0

    int-to-float v0, v1

    .line 174
    iget v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    int-to-float v1, v1

    iget v3, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPositionOffset:F

    add-float/2addr v1, v3

    mul-float/2addr v1, v2

    add-float v4, v0, v1

    add-float v6, v4, v2

    .line 176
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getPaddingTop()I

    move-result v0

    int-to-float v5, v0

    .line 177
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v7, v0

    .line 178
    iget-object v8, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 311
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mScrollState:I

    .line 313
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 314
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .line 320
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    .line 321
    iput p2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPositionOffset:F

    .line 322
    iget-boolean v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFades:Z

    if-eqz v0, :cond_1

    if-lez p3, :cond_0

    .line 324
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 325
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 326
    :cond_0
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 327
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    iget v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/viewpagerindicator/UnderlinePageIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 332
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 333
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 339
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mScrollState:I

    if-nez v0, :cond_0

    .line 340
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    const/4 v0, 0x0

    .line 341
    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPositionOffset:F

    .line 342
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 343
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 346
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 357
    check-cast p1, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;

    .line 358
    invoke-virtual {p1}, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 359
    iget p1, p1, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;->currentPage:I

    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    .line 360
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 365
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 366
    new-instance v1, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 367
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    iput v0, v1, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;->currentPage:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 182
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 189
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_e

    const/4 v3, 0x3

    if-eq v0, v1, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_9

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_0

    .line 251
    :cond_2
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 252
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 253
    iget v4, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    if-ne v3, v4, :cond_4

    if-nez v0, :cond_3

    move v2, v1

    .line 255
    :cond_3
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    .line 257
    :cond_4
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mLastMotionX:F

    goto/16 :goto_0

    .line 244
    :cond_5
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 245
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mLastMotionX:F

    .line 246
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    goto/16 :goto_0

    .line 197
    :cond_6
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 198
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 199
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mLastMotionX:F

    sub-float v0, p1, v0

    .line 201
    iget-boolean v2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mIsDragging:Z

    if-nez v2, :cond_7

    .line 202
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 203
    iput-boolean v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mIsDragging:Z

    .line 207
    :cond_7
    iget-boolean v2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mIsDragging:Z

    if-eqz v2, :cond_f

    .line 208
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mLastMotionX:F

    .line 209
    iget-object p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->beginFakeDrag()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 210
    :cond_8
    iget-object p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 219
    :cond_9
    iget-boolean v4, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mIsDragging:Z

    if-nez v4, :cond_d

    .line 220
    iget-object v4, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v4

    .line 221
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v5, v7

    .line 225
    iget v7, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    if-lez v7, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v8, v6, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_b

    if-eq v0, v3, :cond_a

    .line 227
    iget-object p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_a
    return v1

    .line 230
    :cond_b
    iget v7, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    sub-int/2addr v4, v1

    if-ge v7, v4, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    add-float/2addr v6, v5

    cmpl-float p1, p1, v6

    if-lez p1, :cond_d

    if-eq v0, v3, :cond_c

    .line 232
    iget-object p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_c
    return v1

    .line 238
    :cond_d
    iput-boolean v2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mIsDragging:Z

    const/4 p1, -0x1

    .line 239
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    .line 240
    iget-object p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V

    goto :goto_0

    .line 192
    :cond_e
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mLastMotionX:F

    :cond_f
    :goto_0
    return v1

    :cond_10
    :goto_1
    return v2
.end method

.method public setCurrentItem(I)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 300
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    .line 301
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    return-void

    .line 297
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager has not been bound."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFadeDelay(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeDelay:I

    return-void
.end method

.method public setFadeLength(I)V
    .locals 1

    .line 142
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeLength:I

    .line 143
    div-int/lit8 p1, p1, 0x1e

    const/16 v0, 0xff

    div-int/2addr v0, p1

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeBy:I

    return-void
.end method

.method public setFades(Z)V
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFades:Z

    if-eq p1, v0, :cond_1

    .line 118
    iput-boolean p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFades:Z

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 123
    iget-object p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 271
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 273
    :cond_1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 276
    iput-object p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 277
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 278
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 279
    new-instance p1, Lcom/viewpagerindicator/UnderlinePageIndicator$2;

    invoke-direct {p1, p0}, Lcom/viewpagerindicator/UnderlinePageIndicator$2;-><init>(Lcom/viewpagerindicator/UnderlinePageIndicator;)V

    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 274
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0

    .line 290
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 291
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setCurrentItem(I)V

    return-void
.end method
