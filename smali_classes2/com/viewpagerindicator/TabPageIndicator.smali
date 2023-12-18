.class public Lcom/viewpagerindicator/TabPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "TabPageIndicator.java"

# interfaces
.implements Lcom/viewpagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/viewpagerindicator/TabPageIndicator$TabView;,
        Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;
    }
.end annotation


# static fields
.field private static final EMPTY_TITLE:Ljava/lang/CharSequence;


# instance fields
.field private mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mMaxTabWidth:I

.field private mSelectedTabIndex:I

.field private final mTabClickListener:Landroid/view/View$OnClickListener;

.field private final mTabLayout:Lcom/viewpagerindicator/IcsLinearLayout;

.field private mTabReselectedListener:Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    .line 39
    sput-object v0, Lcom/viewpagerindicator/TabPageIndicator;->EMPTY_TITLE:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance p2, Lcom/viewpagerindicator/TabPageIndicator$1;

    invoke-direct {p2, p0}, Lcom/viewpagerindicator/TabPageIndicator$1;-><init>(Lcom/viewpagerindicator/TabPageIndicator;)V

    iput-object p2, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabClickListener:Landroid/view/View$OnClickListener;

    const/4 p2, 0x0

    .line 83
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/TabPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 85
    new-instance p2, Lcom/viewpagerindicator/IcsLinearLayout;

    sget v0, Lcom/viewpagerindicator/R$attr;->vpiTabPageIndicatorStyle:I

    invoke-direct {p2, p1, v0}, Lcom/viewpagerindicator/IcsLinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabLayout:Lcom/viewpagerindicator/IcsLinearLayout;

    .line 86
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p1}, Lcom/viewpagerindicator/TabPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcom/viewpagerindicator/TabPageIndicator;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/viewpagerindicator/TabPageIndicator;)Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabReselectedListener:Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/viewpagerindicator/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/viewpagerindicator/TabPageIndicator;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mMaxTabWidth:I

    return p0
.end method

.method private addTab(ILjava/lang/CharSequence;I)V
    .locals 3

    .line 153
    new-instance v0, Lcom/viewpagerindicator/TabPageIndicator$TabView;

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/viewpagerindicator/TabPageIndicator$TabView;-><init>(Lcom/viewpagerindicator/TabPageIndicator;Landroid/content/Context;)V

    .line 154
    invoke-static {v0, p1}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->access$302(Lcom/viewpagerindicator/TabPageIndicator$TabView;I)I

    const/4 p1, 0x1

    .line 155
    invoke-virtual {v0, p1}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->setFocusable(Z)V

    .line 156
    iget-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {v0, p2}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 160
    invoke-virtual {v0, p3, p1, p1, p1}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 163
    :cond_0
    iget-object p2, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabLayout:Lcom/viewpagerindicator/IcsLinearLayout;

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p3, p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v0, p3}, Lcom/viewpagerindicator/IcsLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private animateToTab(I)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabLayout:Lcom/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v0, p1}, Lcom/viewpagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 125
    :cond_0
    new-instance v0, Lcom/viewpagerindicator/TabPageIndicator$2;

    invoke-direct {v0, p0, p1}, Lcom/viewpagerindicator/TabPageIndicator$2;-><init>(Lcom/viewpagerindicator/TabPageIndicator;Landroid/view/View;)V

    iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    .line 132
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 7

    .line 206
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabLayout:Lcom/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v0}, Lcom/viewpagerindicator/IcsLinearLayout;->removeAllViews()V

    .line 207
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 209
    instance-of v1, v0, Lcom/viewpagerindicator/IconPagerAdapter;

    if-eqz v1, :cond_0

    .line 210
    move-object v1, v0

    check-cast v1, Lcom/viewpagerindicator/IconPagerAdapter;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 212
    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_3

    .line 214
    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_1

    .line 216
    sget-object v5, Lcom/viewpagerindicator/TabPageIndicator;->EMPTY_TITLE:Ljava/lang/CharSequence;

    :cond_1
    if-eqz v1, :cond_2

    .line 220
    invoke-interface {v1, v4}, Lcom/viewpagerindicator/IconPagerAdapter;->getIconResId(I)I

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v3

    .line 222
    :goto_2
    invoke-direct {p0, v4, v5, v6}, Lcom/viewpagerindicator/TabPageIndicator;->addTab(ILjava/lang/CharSequence;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 224
    :cond_3
    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mSelectedTabIndex:I

    if-le v0, v2, :cond_4

    add-int/lit8 v2, v2, -0x1

    .line 225
    iput v2, p0, Lcom/viewpagerindicator/TabPageIndicator;->mSelectedTabIndex:I

    .line 227
    :cond_4
    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 228
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->requestLayout()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 137
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 138
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 146
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 147
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 95
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 97
    :goto_0
    invoke-virtual {p0, v3}, Lcom/viewpagerindicator/TabPageIndicator;->setFillViewport(Z)V

    .line 99
    iget-object v4, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabLayout:Lcom/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v4}, Lcom/viewpagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v4

    if-le v4, v1, :cond_3

    if-eq v0, v2, :cond_1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v0, 0x2

    if-le v4, v0, :cond_2

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mMaxTabWidth:I

    goto :goto_1

    .line 104
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mMaxTabWidth:I

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    .line 107
    iput v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mMaxTabWidth:I

    .line 110
    :goto_1
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->getMeasuredWidth()I

    move-result v0

    .line 111
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 112
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->getMeasuredWidth()I

    move-result p1

    if-eqz v3, :cond_4

    if-eq v0, p1, :cond_4

    .line 116
    iget p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    :cond_4
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 182
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 183
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 5

    .line 239
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_3

    .line 242
    iput p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mSelectedTabIndex:I

    .line 243
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 245
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabLayout:Lcom/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v0}, Lcom/viewpagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 247
    iget-object v3, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabLayout:Lcom/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v3, v2}, Lcom/viewpagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 249
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_1

    .line 251
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/TabPageIndicator;->animateToTab(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 240
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager has not been bound."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOnTabReselectedListener(Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabReselectedListener:Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 196
    :cond_1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 200
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 201
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 202
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->notifyDataSetChanged()V

    return-void

    .line 198
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0

    .line 233
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 234
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    return-void
.end method
