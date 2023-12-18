.class public Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "RankingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/RankingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolderRanking"
.end annotation


# instance fields
.field public headerUser:Landroid/view/View;

.field public hour:Landroid/widget/TextView;

.field public imgUser:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public position:Landroid/widget/TextView;

.field public result:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/RankingAdapter;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/RankingAdapter;Landroid/view/View;)V
    .locals 3

    .line 99
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->this$0:Lcom/startapps/crossx/view/adapter/RankingAdapter;

    .line 100
    invoke-direct {p0, p2}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    .line 102
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->position:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/RankingAdapter;->-$$Nest$fgetcontext(Lcom/startapps/crossx/view/adapter/RankingAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->name:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/RankingAdapter;->-$$Nest$fgetcontext(Lcom/startapps/crossx/view/adapter/RankingAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->hour:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/RankingAdapter;->-$$Nest$fgetcontext(Lcom/startapps/crossx/view/adapter/RankingAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->result:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/RankingAdapter;->-$$Nest$fgetcontext(Lcom/startapps/crossx/view/adapter/RankingAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHeaderUser()Landroid/view/View;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->headerUser:Landroid/view/View;

    return-object v0
.end method

.method public getHour()Landroid/widget/TextView;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->hour:Landroid/widget/TextView;

    return-object v0
.end method

.method public getImgUser()Landroid/widget/ImageView;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->imgUser:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getName()Landroid/widget/TextView;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPositionText()Landroid/widget/TextView;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->position:Landroid/widget/TextView;

    return-object v0
.end method

.method public getResult()Landroid/widget/TextView;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->result:Landroid/widget/TextView;

    return-object v0
.end method

.method public setHour(Landroid/widget/TextView;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->hour:Landroid/widget/TextView;

    return-void
.end method

.method public setImgUser(Landroid/widget/ImageView;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->imgUser:Landroid/widget/ImageView;

    return-void
.end method

.method public setName(Landroid/widget/TextView;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->name:Landroid/widget/TextView;

    return-void
.end method

.method public setPosition(Landroid/widget/TextView;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->position:Landroid/widget/TextView;

    return-void
.end method

.method public setResult(Landroid/widget/TextView;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->result:Landroid/widget/TextView;

    return-void
.end method
