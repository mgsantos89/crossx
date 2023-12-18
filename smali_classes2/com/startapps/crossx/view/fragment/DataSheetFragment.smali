.class public Lcom/startapps/crossx/view/fragment/DataSheetFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractFragment;
.source "DataSheetFragment.java"


# instance fields
.field indicator:Lcom/viewpagerindicator/TitlePageIndicator;

.field protected mViewPager:Landroidx/viewpager/widget/ViewPager;

.field protected page:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/startapps/crossx/view/fragment/DataSheetFragment;->page:I

    return-void
.end method

.method public static newInstace(I)Lcom/startapps/crossx/view/fragment/DataSheetFragment;
    .locals 1

    .line 35
    new-instance v0, Lcom/startapps/crossx/view/fragment/DataSheetFragment;

    invoke-direct {v0}, Lcom/startapps/crossx/view/fragment/DataSheetFragment;-><init>()V

    .line 36
    iput p0, v0, Lcom/startapps/crossx/view/fragment/DataSheetFragment;->page:I

    return-object v0
.end method


# virtual methods
.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d0078

    return v0
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 60
    new-instance p2, Lcom/startapps/crossx/view/adapter/DataSheetPagerAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/DataSheetFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/DataSheetFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcom/startapps/crossx/view/adapter/DataSheetPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;)V

    .line 61
    iget-object p3, p0, Lcom/startapps/crossx/view/fragment/DataSheetFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 62
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/DataSheetFragment;->indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    iget-object p3, p0, Lcom/startapps/crossx/view/fragment/DataSheetFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p3}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 64
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/DataSheetFragment;->indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/DataSheetFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p3

    const v0, 0x7f1201b0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/DataSheetFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/viewpagerindicator/TitlePageIndicator;->setTypeface(Landroid/graphics/Typeface;)V

    .line 66
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/DataSheetFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p3, p0, Lcom/startapps/crossx/view/fragment/DataSheetFragment;->page:I

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-object p1
.end method
