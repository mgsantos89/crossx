.class public Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "TrainingResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/UserResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field protected resultWodListener:Lcom/startapps/crossx/Interfaces/ResultWodListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/startapps/crossx/Interfaces/ResultWodListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserResultModel;",
            ">;",
            "Lcom/startapps/crossx/Interfaces/ResultWodListener;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 30
    iput-object p3, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;->resultWodListener:Lcom/startapps/crossx/Interfaces/ResultWodListener;

    return-void
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 6

    .line 41
    check-cast p1, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;

    .line 42
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/startapps/crossx/model/UserResultModel;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {p3}, Lcom/startapps/crossx/model/UserResultModel;->allResults()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 47
    invoke-virtual {p3}, Lcom/startapps/crossx/model/UserResultModel;->allResults()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "\n"

    if-eqz v3, :cond_1

    const-string v5, "null"

    .line 49
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p3}, Lcom/startapps/crossx/model/UserResultModel;->allResults()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->getCategorie()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12029d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->getCategorie()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->getNameWod()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/UserResultModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserResultModel;->getWod()Lcom/startapps/crossx/model/WodsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WodsModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->getDescription()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/UserResultModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserResultModel;->getResultObs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->getButtonEdit()Landroid/widget/Button;

    move-result-object p1

    new-instance p3, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$1;

    invoke-direct {p3, p0, p2}, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$1;-><init>(Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;I)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 79
    new-instance v0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;-><init>(Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d00ad

    return v0
.end method
