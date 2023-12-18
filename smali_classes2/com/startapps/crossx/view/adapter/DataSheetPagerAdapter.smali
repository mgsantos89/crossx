.class public Lcom/startapps/crossx/view/adapter/DataSheetPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "DataSheetPagerAdapter.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 20
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/DataSheetPagerAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 32
    new-instance p1, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;

    invoke-direct {p1}, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;-><init>()V

    return-object p1

    .line 30
    :cond_0
    new-instance p1, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-direct {p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;-><init>()V

    return-object p1

    .line 28
    :cond_1
    new-instance p1, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;

    invoke-direct {p1}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;-><init>()V

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    const v0, 0x7f120289

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/DataSheetPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/DataSheetPagerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f1200d1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/DataSheetPagerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f12029b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/DataSheetPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
