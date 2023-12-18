.class public Lcom/startapps/crossx/view/adapter/AthletesAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "AthletesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field private filter:Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter;

.field objectsFiltable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;"
        }
    .end annotation
.end field

.field originalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;"
        }
    .end annotation
.end field

.field type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 32
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->objectsFiltable:Ljava/util/List;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->originalList:Ljava/util/List;

    .line 35
    invoke-static {p1, p2}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    .line 37
    iput p3, p0, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->type:I

    return-void
.end method


# virtual methods
.method protected fillGroup(Lcom/startapps/crossx/model/holder/AthletesHolder;Lcom/startapps/crossx/model/UserModel;)V
    .locals 0

    return-void
.end method

.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 1

    .line 60
    check-cast p1, Lcom/startapps/crossx/model/holder/AthletesHolder;

    .line 61
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/UserModel;

    .line 62
    iget p3, p0, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->type:I

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->fillUsers(Lcom/startapps/crossx/model/holder/AthletesHolder;Lcom/startapps/crossx/model/UserModel;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->fillGroup(Lcom/startapps/crossx/model/holder/AthletesHolder;Lcom/startapps/crossx/model/UserModel;)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->fillUsersSameBox(Lcom/startapps/crossx/model/holder/AthletesHolder;Lcom/startapps/crossx/model/UserModel;)V

    :goto_0
    return-void
.end method

.method protected fillUsers(Lcom/startapps/crossx/model/holder/AthletesHolder;Lcom/startapps/crossx/model/UserModel;)V
    .locals 2

    .line 90
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/AthletesHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getCompleteUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/AthletesHolder;->getSubTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->isAffiliate()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/AthletesHolder;->getImg()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getCircularOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    return-void
.end method

.method protected fillUsersSameBox(Lcom/startapps/crossx/model/holder/AthletesHolder;Lcom/startapps/crossx/model/UserModel;)V
    .locals 2

    .line 81
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/AthletesHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getCompleteUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/AthletesHolder;->getSubTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/AthletesHolder;->getImg()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getCircularOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->filter:Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter;-><init>(Lcom/startapps/crossx/view/adapter/AthletesAdapter;Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter-IA;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->filter:Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->filter:Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter;

    return-object v0
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 2

    .line 50
    new-instance v0, Lcom/startapps/crossx/model/holder/AthletesHolder;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/startapps/crossx/model/holder/AthletesHolder;-><init>(Landroid/view/View;Landroid/content/Context;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d009a

    return v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->originalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->originalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
