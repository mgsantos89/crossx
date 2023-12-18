.class public Lcom/startapps/crossx/modules/comments/CommentsViewModel;
.super Ljava/lang/Object;
.source "CommentsViewModel.java"

# interfaces
.implements Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;


# instance fields
.field private hasMoreItems:Z

.field private mBoxId:Ljava/lang/String;

.field private mLastId:Ljava/lang/String;

.field private mListener:Lcom/startapps/crossx/modules/comments/SearchComments$CompleteListener;

.field private mPostId:Ljava/lang/String;

.field private mSearch:Lcom/startapps/crossx/modules/comments/SearchComments;

.field private mView:Lcom/startapps/crossx/classes/comments/CommentsContract$View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapps/crossx/classes/comments/CommentsContract$View<",
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmView(Lcom/startapps/crossx/modules/comments/CommentsViewModel;)Lcom/startapps/crossx/classes/comments/CommentsContract$View;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->mView:Lcom/startapps/crossx/classes/comments/CommentsContract$View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhasMoreItems(Lcom/startapps/crossx/modules/comments/CommentsViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->hasMoreItems:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastId(Lcom/startapps/crossx/modules/comments/CommentsViewModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->mLastId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/startapps/crossx/classes/comments/CommentsContract$View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/classes/comments/CommentsContract$View<",
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->hasMoreItems:Z

    .line 29
    iput-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->mView:Lcom/startapps/crossx/classes/comments/CommentsContract$View;

    .line 30
    iput-object p2, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->mBoxId:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->mPostId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasMoreItems()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->hasMoreItems:Z

    return v0
.end method

.method public init()V
    .locals 4

    .line 37
    new-instance v0, Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;-><init>()V

    .line 38
    new-instance v1, Lcom/startapps/crossx/modules/comments/SearchComments;

    iget-object v2, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->mBoxId:Ljava/lang/String;

    iget-object v3, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->mPostId:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/startapps/crossx/modules/comments/SearchComments;-><init>(Lcom/startapps/crossx/rest/clients/BoxHttpClient;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->mSearch:Lcom/startapps/crossx/modules/comments/SearchComments;

    .line 39
    new-instance v0, Lcom/startapps/crossx/modules/comments/CommentsViewModel$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/modules/comments/CommentsViewModel$1;-><init>(Lcom/startapps/crossx/modules/comments/CommentsViewModel;)V

    iput-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->mListener:Lcom/startapps/crossx/modules/comments/SearchComments$CompleteListener;

    return-void
.end method

.method public isOwnerComment(Lcom/startapps/crossx/model/CommentModel;)Z
    .locals 1

    .line 96
    invoke-virtual {p1}, Lcom/startapps/crossx/model/CommentModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/startapps/crossx/model/CommentModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->isOwner()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadFirstResults()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->mLastId:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->loadMoreResults()V

    return-void
.end method

.method public loadMoreResults()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->mLastId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->mSearch:Lcom/startapps/crossx/modules/comments/SearchComments;

    iget-object v1, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->mListener:Lcom/startapps/crossx/modules/comments/SearchComments$CompleteListener;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/modules/comments/SearchComments;->getFirstPage(Lcom/startapps/crossx/modules/comments/SearchComments$CompleteListener;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->mSearch:Lcom/startapps/crossx/modules/comments/SearchComments;

    iget-object v2, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->mListener:Lcom/startapps/crossx/modules/comments/SearchComments$CompleteListener;

    invoke-virtual {v1, v0, v2}, Lcom/startapps/crossx/modules/comments/SearchComments;->getNextPage(Ljava/lang/String;Lcom/startapps/crossx/modules/comments/SearchComments$CompleteListener;)V

    :goto_0
    return-void
.end method

.method public onCommentPost(Ljava/lang/String;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->mSearch:Lcom/startapps/crossx/modules/comments/SearchComments;

    new-instance v1, Lcom/startapps/crossx/modules/comments/CommentsViewModel$3;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/modules/comments/CommentsViewModel$3;-><init>(Lcom/startapps/crossx/modules/comments/CommentsViewModel;)V

    invoke-virtual {v0, p1, v1}, Lcom/startapps/crossx/modules/comments/SearchComments;->onPostComment(Ljava/lang/String;Lcom/startapps/crossx/modules/comments/SearchComments$CompletePostListener;)V

    return-void
.end method

.method public onDeleteComment(Lcom/startapps/crossx/model/CommentModel;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->mSearch:Lcom/startapps/crossx/modules/comments/SearchComments;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/CommentModel;->getId()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/startapps/crossx/modules/comments/CommentsViewModel$2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/modules/comments/CommentsViewModel$2;-><init>(Lcom/startapps/crossx/modules/comments/CommentsViewModel;)V

    invoke-virtual {v0, p1, v1}, Lcom/startapps/crossx/modules/comments/SearchComments;->onDeleteComment(Ljava/lang/String;Lcom/startapps/crossx/modules/comments/SearchComments$DeleteCommentListener;)V

    return-void
.end method
