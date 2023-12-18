.class public Lcom/startapps/crossx/view/adapter/RankingAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "RankingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/RankingUserModel;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private onClickRankingListener:Lcom/startapps/crossx/Interfaces/OnClickRankingListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/startapps/crossx/view/adapter/RankingAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonClickRankingListener(Lcom/startapps/crossx/view/adapter/RankingAdapter;)Lcom/startapps/crossx/Interfaces/OnClickRankingListener;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter;->onClickRankingListener:Lcom/startapps/crossx/Interfaces/OnClickRankingListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/startapps/crossx/Interfaces/OnClickRankingListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/RankingUserModel;",
            ">;",
            "Lcom/startapps/crossx/Interfaces/OnClickRankingListener;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 32
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter;->onClickRankingListener:Lcom/startapps/crossx/Interfaces/OnClickRankingListener;

    return-void
.end method

.method private createResultLine(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 2

    .line 39
    check-cast p1, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;

    .line 40
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/RankingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/startapps/crossx/model/RankingUserModel;

    .line 42
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->getPositionText()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo v1, "\u00ba"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->getName()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p3}, Lcom/startapps/crossx/model/RankingUserModel;->getNicknameOrName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->getResult()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p3}, Lcom/startapps/crossx/model/RankingUserModel;->getResults()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/adapter/RankingAdapter;->createResultLine(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->getHour()Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/startapps/crossx/model/RankingUserModel;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/startapps/crossx/model/RankingUserModel;->getEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->getHeaderUser()Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/startapps/crossx/view/adapter/RankingAdapter$1;

    invoke-direct {v0, p0, p3}, Lcom/startapps/crossx/view/adapter/RankingAdapter$1;-><init>(Lcom/startapps/crossx/view/adapter/RankingAdapter;Lcom/startapps/crossx/model/RankingUserModel;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p2

    .line 58
    invoke-virtual {p3}, Lcom/startapps/crossx/model/RankingUserModel;->getImgUser()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;->getImgUser()Landroid/widget/ImageView;

    move-result-object p1

    .line 59
    invoke-static {}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getCircularOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 57
    invoke-virtual {p2, p3, p1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    return-void
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 75
    new-instance v0, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/RankingAdapter$ViewHolderRanking;-><init>(Lcom/startapps/crossx/view/adapter/RankingAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d00ac

    return v0
.end method
