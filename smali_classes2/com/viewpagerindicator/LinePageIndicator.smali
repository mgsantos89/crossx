.class public Lcom/viewpagerindicator/LinePageIndicator;
.super Landroid/view/View;
.source "LinePageIndicator.java"

# interfaces
.implements Lcom/viewpagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/viewpagerindicator/LinePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mCentered:Z

.field private mCurrentPage:I

.field private mGapWidth:F

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mLineWidth:F

.field private mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private final mPaintSelected:Landroid/graphics/Paint;

.field private final mPaintUnselected:Landroid/graphics/Paint;

.field private mTouchSlop:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/LinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 62
    sget v0, Lcom/viewpagerindicator/R$attr;->vpiLinePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/LinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    .line 43
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    const/high16 v1, -0x40800000    # -1.0f

    .line 52
    iput v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLastMotionX:F

    const/4 v1, -0x1

    .line 53
    iput v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mActivePointerId:I

    .line 67
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 72
    sget v3, Lcom/viewpagerindicator/R$color;->default_line_indicator_selected_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 73
    sget v4, Lcom/viewpagerindicator/R$color;->default_line_indicator_unselected_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 74
    sget v5, Lcom/viewpagerindicator/R$dimen;->default_line_indicator_line_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 75
    sget v6, Lcom/viewpagerindicator/R$dimen;->default_line_indicator_gap_width:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 76
    sget v7, Lcom/viewpagerindicator/R$dimen;->default_line_indicator_stroke_width:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 77
    sget v8, Lcom/viewpagerindicator/R$bool;->default_line_indicator_centered:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 80
    sget-object v8, Lcom/viewpagerindicator/R$styleable;->LinePageIndicator:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 82
    sget p3, Lcom/viewpagerindicator/R$styleable;->LinePageIndicator_centered:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCentered:Z

    .line 83
    sget p3, Lcom/viewpagerindicator/R$styleable;->LinePageIndicator_lineWidth:I

    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLineWidth:F

    .line 84
    sget p3, Lcom/viewpagerindicator/R$styleable;->LinePageIndicator_gapWidth:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/viewpagerindicator/LinePageIndicator;->mGapWidth:F

    .line 85
    sget p3, Lcom/viewpagerindicator/R$styleable;->LinePageIndicator_strokeWidth:I

    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/viewpagerindicator/LinePageIndicator;->setStrokeWidth(F)V

    .line 86
    sget p3, Lcom/viewpagerindicator/R$styleable;->LinePageIndicator_unselectedColor:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    sget p3, Lcom/viewpagerindicator/R$styleable;->LinePageIndicator_selectedColor:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    sget p3, Lcom/viewpagerindicator/R$styleable;->LinePageIndicator_android_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 91
    invoke-virtual {p0, p3}, Lcom/viewpagerindicator/LinePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 97
    invoke-static {p1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mTouchSlop:I

    return-void
.end method

.method private measureHeight(I)I
    .locals 3

    .line 384
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 385
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    int-to-float p1, p1

    goto :goto_0

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    int-to-float p1, p1

    .line 395
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 398
    :goto_0
    invoke-static {p1}, Landroid/util/FloatMath;->ceil(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private measureWidth(I)I
    .locals 5

    .line 357
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 358
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    .line 366
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v1

    iget v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLineWidth:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v3, p0, Lcom/viewpagerindicator/LinePageIndicator;->mGapWidth:F

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    int-to-float p1, p1

    .line 369
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v2, p1

    .line 372
    :cond_2
    :goto_1
    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public getGapWidth()F
    .locals 1

    .line 153
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mGapWidth:F

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .line 134
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLineWidth:F

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getUnselectedColor()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCentered:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 311
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 158
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 168
    :cond_1
    iget v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    if-lt v1, v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 169
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/LinePageIndicator;->setCurrentItem(I)V

    return-void

    .line 173
    :cond_2
    iget v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLineWidth:F

    iget v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->mGapWidth:F

    add-float/2addr v1, v2

    int-to-float v3, v0

    mul-float/2addr v3, v1

    sub-float/2addr v3, v2

    .line 175
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    .line 176
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    .line 177
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingRight()I

    move-result v5

    int-to-float v5, v5

    .line 179
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v2, v6

    .line 181
    iget-boolean v6, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCentered:Z

    if-eqz v6, :cond_3

    .line 182
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    sub-float/2addr v6, v5

    div-float/2addr v6, v7

    div-float/2addr v3, v7

    sub-float/2addr v6, v3

    add-float/2addr v4, v6

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    int-to-float v5, v3

    mul-float/2addr v5, v1

    add-float v9, v4, v5

    .line 188
    iget v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLineWidth:F

    add-float v11, v9, v5

    .line 189
    iget v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    if-ne v3, v5, :cond_4

    iget-object v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    :goto_1
    move-object v13, v5

    move-object v8, p1

    move v10, v2

    move v12, v2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/LinePageIndicator;->measureWidth(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/viewpagerindicator/LinePageIndicator;->measureHeight(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/viewpagerindicator/LinePageIndicator;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 317
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 330
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    .line 331
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 333
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 403
    check-cast p1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;

    .line 404
    invoke-virtual {p1}, Lcom/viewpagerindicator/LinePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 405
    iget p1, p1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;->currentPage:I

    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    .line 406
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 411
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 412
    new-instance v1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/LinePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 413
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    iput v0, v1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;->currentPage:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 194
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 201
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

    .line 263
    :cond_2
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 264
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 265
    iget v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->mActivePointerId:I

    if-ne v3, v4, :cond_4

    if-nez v0, :cond_3

    move v2, v1

    .line 267
    :cond_3
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mActivePointerId:I

    .line 269
    :cond_4
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLastMotionX:F

    goto/16 :goto_0

    .line 256
    :cond_5
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 257
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLastMotionX:F

    .line 258
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mActivePointerId:I

    goto/16 :goto_0

    .line 209
    :cond_6
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 210
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 211
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLastMotionX:F

    sub-float v0, p1, v0

    .line 213
    iget-boolean v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->mIsDragging:Z

    if-nez v2, :cond_7

    .line 214
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/viewpagerindicator/LinePageIndicator;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 215
    iput-boolean v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mIsDragging:Z

    .line 219
    :cond_7
    iget-boolean v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->mIsDragging:Z

    if-eqz v2, :cond_f

    .line 220
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLastMotionX:F

    .line 221
    iget-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->beginFakeDrag()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 222
    :cond_8
    iget-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 231
    :cond_9
    iget-boolean v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->mIsDragging:Z

    if-nez v4, :cond_d

    .line 232
    iget-object v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v4

    .line 233
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v5, v7

    .line 237
    iget v7, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    if-lez v7, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v8, v6, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_b

    if-eq v0, v3, :cond_a

    .line 239
    iget-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_a
    return v1

    .line 242
    :cond_b
    iget v7, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    sub-int/2addr v4, v1

    if-ge v7, v4, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    add-float/2addr v6, v5

    cmpl-float p1, p1, v6

    if-lez p1, :cond_d

    if-eq v0, v3, :cond_c

    .line 244
    iget-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_c
    return v1

    .line 250
    :cond_d
    iput-boolean v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->mIsDragging:Z

    const/4 p1, -0x1

    .line 251
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mActivePointerId:I

    .line 252
    iget-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V

    goto :goto_0

    .line 204
    :cond_e
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mActivePointerId:I

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLastMotionX:F

    :cond_f
    :goto_0
    return v1

    :cond_10
    :goto_1
    return v2
.end method

.method public setCentered(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCentered:Z

    .line 103
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 305
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    .line 306
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    return-void

    .line 302
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager has not been bound."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGapWidth(F)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mGapWidth:F

    .line 149
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLineWidth:F

    .line 130
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method public setUnselectedColor(I)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 283
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 285
    :cond_1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 288
    iput-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 289
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 290
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    return-void

    .line 286
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0

    .line 295
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/LinePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 296
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/LinePageIndicator;->setCurrentItem(I)V

    return-void
.end method
