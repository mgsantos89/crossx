.class public Lcom/startapps/crossx/view/adapter/CommentsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CommentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/CommentsAdapter$LoadMoreItemsListener;,
        Lcom/startapps/crossx/view/adapter/CommentsAdapter$VIEW_TYPES;,
        Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;,
        Lcom/startapps/crossx/view/adapter/CommentsAdapter$LoadMoreHolder;,
        Lcom/startapps/crossx/view/adapter/CommentsAdapter$OnSelectCommentListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsSelected:Landroid/util/SparseBooleanArray;

.field private mLoadMoreItemsListener:Lcom/startapps/crossx/view/adapter/CommentsAdapter$LoadMoreItemsListener;

.field private mOnSelectCommentListener:Lcom/startapps/crossx/view/adapter/CommentsAdapter$OnSelectCommentListener;

.field private presenter:Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLoadMoreItemsListener(Lcom/startapps/crossx/view/adapter/CommentsAdapter;)Lcom/startapps/crossx/view/adapter/CommentsAdapter$LoadMoreItemsListener;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mLoadMoreItemsListener:Lcom/startapps/crossx/view/adapter/CommentsAdapter$LoadMoreItemsListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnSelectCommentListener(Lcom/startapps/crossx/view/adapter/CommentsAdapter;)Lcom/startapps/crossx/view/adapter/CommentsAdapter$OnSelectCommentListener;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mOnSelectCommentListener:Lcom/startapps/crossx/view/adapter/CommentsAdapter$OnSelectCommentListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpresenter(Lcom/startapps/crossx/view/adapter/CommentsAdapter;)Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->presenter:Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;

    return-object p0
.end method

.method public constructor <init>(Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;Lcom/startapps/crossx/view/adapter/CommentsAdapter$LoadMoreItemsListener;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItems:Ljava/util/List;

    .line 47
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItemsSelected:Landroid/util/SparseBooleanArray;

    .line 54
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->presenter:Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;

    .line 55
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mLoadMoreItemsListener:Lcom/startapps/crossx/view/adapter/CommentsAdapter$LoadMoreItemsListener;

    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 129
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 130
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addLastData(Lcom/startapps/crossx/model/CommentModel;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 124
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearData()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearSelections()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItemsSelected:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 161
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getAllItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->presenter:Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;

    invoke-interface {v1}, Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;->hasMoreItems()Z

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-gtz p1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->getItemCount()I

    move-result p1

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public getPositionObject(Lcom/startapps/crossx/model/CommentModel;)I
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSelectedItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItemsSelected:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 170
    :goto_0
    iget-object v2, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItemsSelected:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItems:Ljava/util/List;

    iget-object v3, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItemsSelected:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/CommentModel;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 93
    instance-of v0, p1, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->presenter:Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;

    invoke-interface {v0}, Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;->hasMoreItems()Z

    move-result v0

    sub-int/2addr p2, v0

    .line 97
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/CommentModel;

    .line 98
    check-cast p1, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;

    .line 100
    invoke-virtual {v0}, Lcom/startapps/crossx/model/CommentModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->getAvatar()Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f080172

    .line 104
    invoke-static {v4}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getCircularOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    .line 103
    invoke-virtual {v2, v1, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 107
    :cond_0
    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->setCommentModel(Lcom/startapps/crossx/model/CommentModel;)V

    .line 108
    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->setPosition(I)V

    .line 110
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->getName()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/startapps/crossx/model/CommentModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getNicknameOrName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->getComments()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/startapps/crossx/model/CommentModel;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->getTime()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/startapps/crossx/model/CommentModel;->calculateTimeComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItemsSelected:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->setActivated(Z)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d009c

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 79
    new-instance p2, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;

    invoke-direct {p2, p0, p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;-><init>(Lcom/startapps/crossx/view/adapter/CommentsAdapter;Landroid/view/View;)V

    return-object p2

    .line 83
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00a9

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 84
    new-instance p2, Lcom/startapps/crossx/view/adapter/CommentsAdapter$LoadMoreHolder;

    invoke-direct {p2, p0, p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter$LoadMoreHolder;-><init>(Lcom/startapps/crossx/view/adapter/CommentsAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public removeData(Lcom/startapps/crossx/model/CommentModel;)V
    .locals 1

    .line 134
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->getPositionObject(Lcom/startapps/crossx/model/CommentModel;)I

    move-result p1

    .line 135
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 136
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public selectItem(I)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItemsSelected:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItemsSelected:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mItemsSelected:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 152
    :goto_0
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setOnSelectCommentListener(Lcom/startapps/crossx/view/adapter/CommentsAdapter$OnSelectCommentListener;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->mOnSelectCommentListener:Lcom/startapps/crossx/view/adapter/CommentsAdapter$OnSelectCommentListener;

    return-void
.end method
