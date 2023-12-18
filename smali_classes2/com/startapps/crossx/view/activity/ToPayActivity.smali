.class public Lcom/startapps/crossx/view/activity/ToPayActivity;
.super Lcom/startapps/crossx/view/activity/BaseActivity;
.source "ToPayActivity.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/ToPayContract$View;


# instance fields
.field private presenter:Lcom/startapps/crossx/classes/presenter/ToPayPresenter;

.field toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private startToPayFragment(J)V
    .locals 3

    .line 50
    new-instance v0, Lcom/startapps/crossx/view/fragment/ToPayFragment;

    invoke-direct {v0}, Lcom/startapps/crossx/view/fragment/ToPayFragment;-><init>()V

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "membership_id_extra"

    .line 52
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/fragment/ToPayFragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ToPayActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f0a037d

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ToPayActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f120118

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/ToPayActivity;->setToolbarTitle(Landroidx/appcompat/widget/Toolbar;I)V

    .line 31
    new-instance v0, Lcom/startapps/crossx/classes/presenter/ToPayPresenter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ToPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/startapps/crossx/classes/presenter/ToPayPresenter;-><init>(Lcom/startapps/crossx/Interfaces/contracts/ToPayContract$View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ToPayActivity;->presenter:Lcom/startapps/crossx/classes/presenter/ToPayPresenter;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 41
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ToPayActivity;->onBackPressed()V

    .line 46
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected setLayoutRes()I
    .locals 1

    const v0, 0x7f0d0047

    return v0
.end method

.method public upLayout(Lcom/startapps/crossx/model/Membership;)V
    .locals 2

    .line 36
    iget-wide v0, p1, Lcom/startapps/crossx/model/Membership;->id:J

    invoke-direct {p0, v0, v1}, Lcom/startapps/crossx/view/activity/ToPayActivity;->startToPayFragment(J)V

    return-void
.end method
