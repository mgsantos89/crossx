.class public Lcom/startapps/crossx/view/fragment/PaymentsFragment;
.super Landroidx/fragment/app/Fragment;
.source "PaymentsFragment.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/PaymentsContract$View;


# instance fields
.field private paymentsPresenter:Lcom/startapps/crossx/Interfaces/contracts/PaymentsContract$Presenter;

.field tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/PaymentsFragment;->setHasOptionsMenu(Z)V

    .line 39
    new-instance p1, Lcom/startapps/crossx/classes/presenter/PaymentsPresenter;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/classes/presenter/PaymentsPresenter;-><init>(Lcom/startapps/crossx/Interfaces/contracts/PaymentsContract$View;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/PaymentsFragment;->paymentsPresenter:Lcom/startapps/crossx/Interfaces/contracts/PaymentsContract$Presenter;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 55
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0e000b

    .line 56
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0080

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 47
    new-instance p2, Lcom/startapps/crossx/view/adapter/ToPayPagerAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/PaymentsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/startapps/crossx/view/adapter/ToPayPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 48
    iget-object p3, p0, Lcom/startapps/crossx/view/fragment/PaymentsFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 49
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/PaymentsFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object p3, p0, Lcom/startapps/crossx/view/fragment/PaymentsFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 61
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a02db

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/PaymentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/startapps/crossx/view/activity/CardsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "list_cards"

    const-string v2, "from_card_menu"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/PaymentsFragment;->startActivity(Landroid/content/Intent;)V

    .line 66
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
