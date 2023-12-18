.class public Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking$$ViewInjector;
.super Ljava/lang/Object;
.source "ChampionshipAdapter$ViewHolderRanking$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0304

    const-string v1, "field \'name_championship\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->name_championship:Landroid/widget/TextView;

    const v0, 0x7f0a00e5

    const-string v1, "field \'championship_image\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->championship_image:Landroid/widget/ImageView;

    const v0, 0x7f0a00e4

    const-string v1, "field \'championship_date\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->championship_date:Landroid/widget/TextView;

    const v0, 0x7f0a00e7

    const-string v1, "field \'championship_status\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->championship_status:Landroid/view/View;

    const v0, 0x7f0a0235

    const-string v1, "field \'item_championship\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 19
    check-cast p0, Landroid/widget/RelativeLayout;

    iput-object p0, p1, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->item_championship:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->name_championship:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->championship_image:Landroid/widget/ImageView;

    .line 25
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->championship_date:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->championship_status:Landroid/view/View;

    .line 27
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->item_championship:Landroid/widget/RelativeLayout;

    return-void
.end method
