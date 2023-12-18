.class public Lcom/startapps/crossx/view/adapter/UserPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "UserPagerAdapter.java"


# instance fields
.field context:Landroid/content/Context;

.field userModel:Lcom/startapps/crossx/model/UserModel;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Lcom/startapps/crossx/model/UserModel;Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 25
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/UserPagerAdapter;->userModel:Lcom/startapps/crossx/model/UserModel;

    .line 26
    iput-object p3, p0, Lcom/startapps/crossx/view/adapter/UserPagerAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserPagerAdapter;->userModel:Lcom/startapps/crossx/model/UserModel;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserPagerAdapter;->userModel:Lcom/startapps/crossx/model/UserModel;

    .line 59
    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getPrivacity()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 37
    new-instance p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;

    invoke-direct {p1}, Lcom/startapps/crossx/view/fragment/ProfileFragment;-><init>()V

    return-object p1

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/UserPagerAdapter;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->getInstace(Lcom/startapps/crossx/model/UserModel;)Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;

    move-result-object p1

    return-object p1

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/UserPagerAdapter;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->getInstace(Lcom/startapps/crossx/model/UserModel;)Lcom/startapps/crossx/view/fragment/ProfileFragment;

    move-result-object p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    const v0, 0x7f1200d2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/UserPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/UserPagerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f1200d1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/UserPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
