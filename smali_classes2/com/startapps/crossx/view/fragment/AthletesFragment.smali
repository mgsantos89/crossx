.class public Lcom/startapps/crossx/view/fragment/AthletesFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractFragment;
.source "AthletesFragment.java"


# instance fields
.field indicator:Lcom/viewpagerindicator/TitlePageIndicator;

.field pagerAdapter:Lcom/startapps/crossx/view/adapter/AthletesPagerAdapter;

.field viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d0074

    return v0
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 49
    new-instance p2, Lcom/startapps/crossx/view/adapter/AthletesPagerAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/AthletesFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/AthletesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcom/startapps/crossx/view/adapter/AthletesPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/AthletesFragment;->pagerAdapter:Lcom/startapps/crossx/view/adapter/AthletesPagerAdapter;

    .line 50
    iget-object p3, p0, Lcom/startapps/crossx/view/fragment/AthletesFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 51
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/AthletesFragment;->indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    iget-object p3, p0, Lcom/startapps/crossx/view/fragment/AthletesFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p3}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 53
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/AthletesFragment;->indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/AthletesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p3

    const v0, 0x7f1201b0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/AthletesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/viewpagerindicator/TitlePageIndicator;->setTypeface(Landroid/graphics/Typeface;)V

    return-object p1
.end method
