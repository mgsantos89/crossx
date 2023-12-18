.class public Lcom/startapps/crossx/modules/likes/LikesViewModel;
.super Ljava/lang/Object;
.source "LikesViewModel.java"

# interfaces
.implements Lcom/startapps/crossx/classes/likes/LikesContract$Presenter;


# instance fields
.field private hasMoreItems:Z

.field private mBoxId:Ljava/lang/String;

.field private mLastId:Ljava/lang/String;

.field private mListener:Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;

.field private mPostId:Ljava/lang/String;

.field private mSearch:Lcom/startapps/crossx/modules/likes/SearchLikes;

.field private mView:Lcom/startapps/crossx/classes/likes/LikesContract$View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapps/crossx/classes/likes/LikesContract$View<",
            "Lcom/startapps/crossx/model/LikesModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmView(Lcom/startapps/crossx/modules/likes/LikesViewModel;)Lcom/startapps/crossx/classes/likes/LikesContract$View;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel;->mView:Lcom/startapps/crossx/classes/likes/LikesContract$View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhasMoreItems(Lcom/startapps/crossx/modules/likes/LikesViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel;->hasMoreItems:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastId(Lcom/startapps/crossx/modules/likes/LikesViewModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel;->mLastId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/startapps/crossx/classes/likes/LikesContract$View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/classes/likes/LikesContract$View<",
            "Lcom/startapps/crossx/model/LikesModel;",
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
    iput-boolean v0, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel;->hasMoreItems:Z

    .line 29
    iput-object p1, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel;->mView:Lcom/startapps/crossx/classes/likes/LikesContract$View;

    .line 30
    iput-object p2, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel;->mBoxId:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel;->mPostId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasMoreItems()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel;->hasMoreItems:Z

    return v0
.end method

.method public init()V
    .locals 4

    .line 37
    new-instance v0, Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;-><init>()V

    .line 38
    new-instance v1, Lcom/startapps/crossx/modules/likes/SearchLikes;

    iget-object v2, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel;->mBoxId:Ljava/lang/String;

    iget-object v3, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel;->mPostId:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/startapps/crossx/modules/likes/SearchLikes;-><init>(Lcom/startapps/crossx/rest/clients/BoxHttpClient;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel;->mSearch:Lcom/startapps/crossx/modules/likes/SearchLikes;

    .line 39
    new-instance v0, Lcom/startapps/crossx/modules/likes/LikesViewModel$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/modules/likes/LikesViewModel$1;-><init>(Lcom/startapps/crossx/modules/likes/LikesViewModel;)V

    iput-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel;->mListener:Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;

    return-void
.end method

.method public loadMoreResults()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel;->mLastId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel;->mSearch:Lcom/startapps/crossx/modules/likes/SearchLikes;

    iget-object v1, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel;->mListener:Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/modules/likes/SearchLikes;->getFirstPage(Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel;->mSearch:Lcom/startapps/crossx/modules/likes/SearchLikes;

    iget-object v2, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel;->mListener:Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;

    invoke-virtual {v1, v0, v2}, Lcom/startapps/crossx/modules/likes/SearchLikes;->getNextPage(Ljava/lang/String;Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;)V

    :goto_0
    return-void
.end method
