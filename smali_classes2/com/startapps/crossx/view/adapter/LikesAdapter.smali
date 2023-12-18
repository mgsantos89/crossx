.class public Lcom/startapps/crossx/view/adapter/LikesAdapter;
.super Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;
.source "LikesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter<",
        "Lcom/startapps/crossx/model/LikesModel;",
        ">;"
    }
.end annotation


# instance fields
.field private presenter:Lcom/startapps/crossx/classes/likes/LikesContract$Presenter;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/startapps/crossx/classes/likes/LikesContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/LikesModel;",
            ">;",
            "Lcom/startapps/crossx/classes/likes/LikesContract$Presenter;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;-><init>(Ljava/util/List;)V

    .line 32
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/LikesAdapter;->presenter:Lcom/startapps/crossx/classes/likes/LikesContract$Presenter;

    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/LikesModel;",
            ">;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/LikesAdapter;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/LikesAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected fillHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/startapps/crossx/model/LikesModel;)V
    .locals 4

    .line 38
    invoke-virtual {p2}, Lcom/startapps/crossx/model/LikesModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;

    invoke-virtual {v2}, Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;->getAvatar()Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f080172

    .line 42
    invoke-static {v3}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getCircularOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 41
    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 45
    :cond_0
    check-cast p1, Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;->getName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/LikesModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getCompleteUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;->getTime()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/startapps/crossx/model/LikesModel;->calculateTimeComment()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic fillHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/startapps/crossx/model/LikesModel;

    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/LikesAdapter;->fillHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/startapps/crossx/model/LikesModel;)V

    return-void
.end method

.method protected bridge synthetic getViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/adapter/LikesAdapter;->getViewHolder(Landroid/view/ViewGroup;)Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;

    move-result-object p1

    return-object p1
.end method

.method protected getViewHolder(Landroid/view/ViewGroup;)Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;
    .locals 3

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    new-instance v0, Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;-><init>(Lcom/startapps/crossx/view/adapter/LikesAdapter;Landroid/view/View;)V

    return-object v0
.end method
