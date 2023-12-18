.class public Lcom/startapps/crossx/view/adapter/AthletesPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "AthletesPagerAdapter.java"


# instance fields
.field context:Landroid/content/Context;

.field isAffiliate:Z

.field isExistBox:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 27
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/AthletesPagerAdapter;->context:Landroid/content/Context;

    .line 29
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/startapps/crossx/view/adapter/AthletesPagerAdapter;->isExistBox:Z

    .line 30
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/controller/utils/Preference;->isBoxAffiliate()Z

    move-result p1

    iput-boolean p1, p0, Lcom/startapps/crossx/view/adapter/AthletesPagerAdapter;->isAffiliate:Z

    return-void
.end method

.method private getTitlte(I)Ljava/lang/String;
    .locals 3

    const v0, 0x7f1201b4

    const v1, 0x7f1201b2

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 81
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/AthletesPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/AthletesPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/AthletesPagerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f1201b3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 75
    :cond_2
    iget-boolean p1, p0, Lcom/startapps/crossx/view/adapter/AthletesPagerAdapter;->isExistBox:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/AthletesPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/AthletesPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/startapps/crossx/view/adapter/AthletesPagerAdapter;->isExistBox:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/startapps/crossx/view/adapter/AthletesPagerAdapter;->isExistBox:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 42
    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->newInstace(I)Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    move-result-object p1

    return-object p1

    .line 40
    :cond_0
    new-instance p1, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;

    invoke-direct {p1}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;-><init>()V

    return-object p1

    :cond_1
    const/4 p1, 0x2

    .line 46
    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->newInstace(I)Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    move-result-object p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/adapter/AthletesPagerAdapter;->getTitlte(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
