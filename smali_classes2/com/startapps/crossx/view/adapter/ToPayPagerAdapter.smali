.class public Lcom/startapps/crossx/view/adapter/ToPayPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "ToPayPagerAdapter.java"


# static fields
.field private static final COUNT_TABS:I = 0x2

.field private static final HISTORY_TAB_POSITION:I = 0x1

.field private static final HISTORY_TAB_TITLE:Ljava/lang/String; = "HIST\u00d3RICO"

.field private static final TO_PAY_TAB_POSITION:I = 0x0

.field private static final TO_PAY_TAB_TITLE:Ljava/lang/String; = "\u00c0 PAGAR"


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 31
    :cond_0
    new-instance p1, Lcom/startapps/crossx/view/fragment/HistoryFragment;

    invoke-direct {p1}, Lcom/startapps/crossx/view/fragment/HistoryFragment;-><init>()V

    return-object p1

    .line 29
    :cond_1
    new-instance p1, Lcom/startapps/crossx/view/fragment/ToPayFragment;

    invoke-direct {p1}, Lcom/startapps/crossx/view/fragment/ToPayFragment;-><init>()V

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 49
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "HIST\u00d3RICO"

    return-object p1

    :cond_1
    const-string/jumbo p1, "\u00c0 PAGAR"

    return-object p1
.end method
