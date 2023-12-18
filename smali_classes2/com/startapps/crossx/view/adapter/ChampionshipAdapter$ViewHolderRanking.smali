.class public Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "ChampionshipAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolderRanking"
.end annotation


# instance fields
.field public championship_date:Landroid/widget/TextView;

.field public championship_image:Landroid/widget/ImageView;

.field public championship_status:Landroid/view/View;

.field public item_championship:Landroid/widget/RelativeLayout;

.field public name_championship:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;Landroid/view/View;)V
    .locals 2

    .line 100
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->this$0:Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;

    .line 101
    invoke-direct {p0, p2}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    .line 103
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->name_championship:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1201b0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDate()Landroid/widget/TextView;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->championship_date:Landroid/widget/TextView;

    return-object v0
.end method

.method public getImage()Landroid/widget/ImageView;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->championship_image:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getItem()Landroid/widget/RelativeLayout;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->item_championship:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getStatus()Landroid/view/View;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->championship_status:Landroid/view/View;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->name_championship:Landroid/widget/TextView;

    return-object v0
.end method

.method public setDate(Landroid/widget/TextView;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->championship_date:Landroid/widget/TextView;

    return-void
.end method

.method public setImage(Landroid/widget/ImageView;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->championship_image:Landroid/widget/ImageView;

    return-void
.end method

.method public setItem(Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->item_championship:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setStatus(Landroid/view/View;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->championship_status:Landroid/view/View;

    return-void
.end method

.method public setTitle(Landroid/widget/TextView;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->name_championship:Landroid/widget/TextView;

    return-void
.end method
