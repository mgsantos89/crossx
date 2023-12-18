.class public Lcom/startapps/crossx/view/CustonIndicatePager;
.super Landroid/widget/HorizontalScrollView;
.source "CustonIndicatePager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field protected parent:Landroid/view/ViewGroup;

.field protected viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private resetView(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 72
    invoke-virtual {p0}, Lcom/startapps/crossx/view/CustonIndicatePager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private selectView(Landroid/view/View;)V
    .locals 3

    .line 78
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    .line 79
    invoke-virtual {p0}, Lcom/startapps/crossx/view/CustonIndicatePager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 82
    invoke-virtual {p0}, Lcom/startapps/crossx/view/CustonIndicatePager;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, v0, p1}, Lcom/startapps/crossx/view/CustonIndicatePager;->scrollTo(II)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/CustonIndicatePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/startapps/crossx/view/CustonIndicatePager;->parent:Landroid/view/ViewGroup;

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/startapps/crossx/view/CustonIndicatePager;->parent:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/CustonIndicatePager;->resetView(Landroid/view/ViewGroup;)V

    .line 59
    iget-object v0, p0, Lcom/startapps/crossx/view/CustonIndicatePager;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/CustonIndicatePager;->selectView(Landroid/view/View;)V

    return-void
.end method

.method public populateScroll()V
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/startapps/crossx/view/CustonIndicatePager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 89
    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/startapps/crossx/view/CustonIndicatePager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d008d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 92
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/startapps/crossx/view/CustonIndicatePager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 98
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 99
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v3

    invoke-virtual {p0}, Lcom/startapps/crossx/view/CustonIndicatePager;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1201ae

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 100
    new-instance v3, Lcom/startapps/crossx/view/CustonIndicatePager$1;

    invoke-direct {v3, p0}, Lcom/startapps/crossx/view/CustonIndicatePager$1;-><init>(Lcom/startapps/crossx/view/CustonIndicatePager;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v3, p0, Lcom/startapps/crossx/view/CustonIndicatePager;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/startapps/crossx/view/CustonIndicatePager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 47
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method
