.class public Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "EditGroupAthletesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field listUsersSelected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;"
        }
    .end annotation
.end field

.field protected onEditGroupListener:Lcom/startapps/crossx/Interfaces/OnEditGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;->listUsersSelected:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/startapps/crossx/model/holder/EditGroupAthletesHolder;

    .line 44
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/startapps/crossx/model/UserModel;

    .line 46
    invoke-virtual {p0, p1, p3, p2}, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;->fillUsers(Lcom/startapps/crossx/model/holder/EditGroupAthletesHolder;Lcom/startapps/crossx/model/UserModel;I)V

    return-void
.end method

.method protected fillUsers(Lcom/startapps/crossx/model/holder/EditGroupAthletesHolder;Lcom/startapps/crossx/model/UserModel;I)V
    .locals 4

    .line 50
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/EditGroupAthletesHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getCompleteUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/EditGroupAthletesHolder;->getSubTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/EditGroupAthletesHolder;->getImg()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getCircularOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 52
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 54
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/EditGroupAthletesHolder;->getLayouAthlete()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter$1;-><init>(Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;Lcom/startapps/crossx/model/UserModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/EditGroupAthletesHolder;->getBtSelected()Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;->listUsersSelected:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setSelected(Z)V

    .line 63
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/EditGroupAthletesHolder;->getBtSelected()Landroid/widget/Button;

    move-result-object p1

    new-instance p2, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter$2;

    invoke-direct {p2, p0, p3}, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter$2;-><init>(Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 33
    new-instance v0, Lcom/startapps/crossx/model/holder/EditGroupAthletesHolder;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/model/holder/EditGroupAthletesHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getListUsersSelected()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;->listUsersSelected:Ljava/util/List;

    return-object v0
.end method

.method protected goToUserActivity(Lcom/startapps/crossx/model/UserModel;)V
    .locals 0

    return-void
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d0096

    return v0
.end method

.method public setOnEditGroupListener(Lcom/startapps/crossx/Interfaces/OnEditGroup;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;->onEditGroupListener:Lcom/startapps/crossx/Interfaces/OnEditGroup;

    return-void
.end method
