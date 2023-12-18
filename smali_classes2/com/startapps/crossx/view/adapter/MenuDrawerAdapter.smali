.class public Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "MenuDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/MenuDrawerModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/MenuDrawerModel;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 2

    .line 34
    check-cast p1, Lcom/startapps/crossx/model/holder/MenuDrawerHolder;

    .line 35
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/MenuDrawerModel;

    .line 41
    invoke-virtual {p2}, Lcom/startapps/crossx/model/MenuDrawerModel;->isVisible()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 42
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/MenuDrawerHolder;->getName()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/MenuDrawerModel;->getText()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p2}, Lcom/startapps/crossx/model/MenuDrawerModel;->isSelected()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/MenuDrawerHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/MenuDrawerModel;->getDrawableImageSelected()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/MenuDrawerHolder;->getName()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060034

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/MenuDrawerHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/MenuDrawerModel;->getDrawableImage()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/MenuDrawerHolder;->getName()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06002e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 24
    new-instance v0, Lcom/startapps/crossx/model/holder/MenuDrawerHolder;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/model/holder/MenuDrawerHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d00a3

    return v0
.end method
