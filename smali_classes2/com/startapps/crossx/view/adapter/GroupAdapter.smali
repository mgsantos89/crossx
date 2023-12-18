.class public Lcom/startapps/crossx/view/adapter/GroupAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "GroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/GroupModel;",
        ">;"
    }
.end annotation


# instance fields
.field type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/GroupModel;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 23
    iget p1, p0, Lcom/startapps/crossx/view/adapter/GroupAdapter;->type:I

    iput p1, p0, Lcom/startapps/crossx/view/adapter/GroupAdapter;->type:I

    return-void
.end method


# virtual methods
.method protected fillGroup(Lcom/startapps/crossx/model/holder/GroupHolder;Lcom/startapps/crossx/model/GroupModel;)V
    .locals 3

    .line 47
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/GroupHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/GroupModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/GroupHolder;->getSubTitle()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/startapps/crossx/model/GroupModel;->getUsersCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Participantes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/GroupHolder;->getImg()Lcom/startapps/crossx/view/SquareGridLayout;

    move-result-object p1

    invoke-virtual {p2}, Lcom/startapps/crossx/model/GroupModel;->getUrls()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/SquareGridLayout;->setThumbs(Ljava/util/List;)V

    return-void
.end method

.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/startapps/crossx/model/holder/GroupHolder;

    .line 39
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/GroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/GroupModel;

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/GroupAdapter;->fillGroup(Lcom/startapps/crossx/model/holder/GroupHolder;Lcom/startapps/crossx/model/GroupModel;)V

    return-void
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 2

    .line 28
    new-instance v0, Lcom/startapps/crossx/model/holder/GroupHolder;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/GroupAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/startapps/crossx/model/holder/GroupHolder;-><init>(Landroid/view/View;Landroid/content/Context;)V

    return-object v0
.end method

.method protected goToUserActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/GroupAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/GroupAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/startapps/crossx/controller/utils/Intents;->goToTimelineGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d009e

    return v0
.end method
