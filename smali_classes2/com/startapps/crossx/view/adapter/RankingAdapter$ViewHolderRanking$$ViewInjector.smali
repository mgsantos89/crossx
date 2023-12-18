.class public Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking$$ViewInjector;
.super Ljava/lang/Object;
.source "RankingAdapter$ViewHolderRanking$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0257

    const-string v1, "field \'position\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->position:Landroid/widget/TextView;

    const v0, 0x7f0a0256

    const-string v1, "field \'name\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->name:Landroid/widget/TextView;

    const v0, 0x7f0a0255

    const-string v1, "field \'hour\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->hour:Landroid/widget/TextView;

    const v0, 0x7f0a0258

    const-string v1, "field \'result\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->result:Landroid/widget/TextView;

    const v0, 0x7f0a021c

    const-string v1, "field \'imgUser\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->imgUser:Landroid/widget/ImageView;

    const v0, 0x7f0a0364

    const-string v1, "field \'headerUser\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 21
    iput-object p0, p1, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->headerUser:Landroid/view/View;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->position:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->name:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->hour:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->result:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->imgUser:Landroid/widget/ImageView;

    .line 30
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->headerUser:Landroid/view/View;

    return-void
.end method
