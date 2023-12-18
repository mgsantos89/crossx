.class public Lcom/startapps/crossx/view/adapter/UserMembershipsPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "UserMembershipsPagerAdapter.java"


# instance fields
.field context:Landroid/content/Context;

.field mFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mFragmentTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserMembershipsPagerAdapter;->mFragmentList:Ljava/util/List;

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iput-object p3, p0, Lcom/startapps/crossx/view/adapter/UserMembershipsPagerAdapter;->mFragmentList:Ljava/util/List;

    .line 20
    iput-object p4, p0, Lcom/startapps/crossx/view/adapter/UserMembershipsPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    .line 21
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/UserMembershipsPagerAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private getTitle(I)Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipsPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipsPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipsPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/adapter/UserMembershipsPagerAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
