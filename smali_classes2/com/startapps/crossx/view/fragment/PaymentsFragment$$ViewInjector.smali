.class public Lcom/startapps/crossx/view/fragment/PaymentsFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "PaymentsFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/fragment/PaymentsFragment;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a03db

    const-string v1, "field \'tabLayout\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/PaymentsFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const v0, 0x7f0a04c5

    const-string v1, "field \'viewPager\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 13
    check-cast p0, Landroidx/viewpager/widget/ViewPager;

    iput-object p0, p1, Lcom/startapps/crossx/view/fragment/PaymentsFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/fragment/PaymentsFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/PaymentsFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 18
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/PaymentsFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method
