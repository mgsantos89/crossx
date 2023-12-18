.class public Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "CreateGroupAthletesAdapter.java"


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

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;->listUsersSelected:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 44
    check-cast p1, Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;

    .line 45
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/UserModel;

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;->fillUsers(Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;Lcom/startapps/crossx/model/UserModel;)V

    return-void
.end method

.method protected fillUsers(Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;Lcom/startapps/crossx/model/UserModel;)V
    .locals 4

    .line 51
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getCompleteUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;->getSubTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;->getImg()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getCircularOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 54
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;->getLayouAthlete()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$1;-><init>(Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;Lcom/startapps/crossx/model/UserModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;->getBtSelected()Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;->listUsersSelected:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 63
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;->getBtSelected()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$2;-><init>(Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 34
    new-instance v0, Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;-><init>(Landroid/view/View;)V

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

    .line 84
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;->listUsersSelected:Ljava/util/List;

    return-object v0
.end method

.method protected goToUserActivity(Lcom/startapps/crossx/model/UserModel;)V
    .locals 0

    return-void
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d0094

    return v0
.end method
