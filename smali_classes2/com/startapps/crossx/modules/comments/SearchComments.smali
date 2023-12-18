.class public Lcom/startapps/crossx/modules/comments/SearchComments;
.super Ljava/lang/Object;
.source "SearchComments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/modules/comments/SearchComments$CompleteListener;,
        Lcom/startapps/crossx/modules/comments/SearchComments$DeleteCommentListener;,
        Lcom/startapps/crossx/modules/comments/SearchComments$CompletePostListener;,
        Lcom/startapps/crossx/modules/comments/SearchComments$RestListener;
    }
.end annotation


# instance fields
.field private mBoxApi:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

.field private mBoxId:Ljava/lang/String;

.field private mPostId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/rest/clients/BoxHttpClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/startapps/crossx/modules/comments/SearchComments;->mBoxApi:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    .line 48
    iput-object p2, p0, Lcom/startapps/crossx/modules/comments/SearchComments;->mBoxId:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/startapps/crossx/modules/comments/SearchComments;->mPostId:Ljava/lang/String;

    return-void
.end method

.method private getData(Ljava/lang/String;Lcom/startapps/crossx/modules/comments/SearchComments$CompleteListener;)V
    .locals 4

    .line 64
    invoke-interface {p2}, Lcom/startapps/crossx/modules/comments/SearchComments$CompleteListener;->onStart()V

    .line 66
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/SearchComments;->mBoxApi:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    iget-object v1, p0, Lcom/startapps/crossx/modules/comments/SearchComments;->mBoxId:Ljava/lang/String;

    iget-object v2, p0, Lcom/startapps/crossx/modules/comments/SearchComments;->mPostId:Ljava/lang/String;

    new-instance v3, Lcom/startapps/crossx/modules/comments/SearchComments$1;

    invoke-direct {v3, p0, p2}, Lcom/startapps/crossx/modules/comments/SearchComments$1;-><init>(Lcom/startapps/crossx/modules/comments/SearchComments;Lcom/startapps/crossx/modules/comments/SearchComments$CompleteListener;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->comments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method


# virtual methods
.method public getFirstPage(Lcom/startapps/crossx/modules/comments/SearchComments$CompleteListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0, p1}, Lcom/startapps/crossx/modules/comments/SearchComments;->getData(Ljava/lang/String;Lcom/startapps/crossx/modules/comments/SearchComments$CompleteListener;)V

    return-void
.end method

.method public getNextPage(Ljava/lang/String;Lcom/startapps/crossx/modules/comments/SearchComments$CompleteListener;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/modules/comments/SearchComments;->getData(Ljava/lang/String;Lcom/startapps/crossx/modules/comments/SearchComments$CompleteListener;)V

    return-void
.end method

.method public onDeleteComment(Ljava/lang/String;Lcom/startapps/crossx/modules/comments/SearchComments$DeleteCommentListener;)V
    .locals 4

    .line 107
    invoke-interface {p2}, Lcom/startapps/crossx/modules/comments/SearchComments$DeleteCommentListener;->onStart()V

    .line 109
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/SearchComments;->mBoxApi:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    iget-object v1, p0, Lcom/startapps/crossx/modules/comments/SearchComments;->mBoxId:Ljava/lang/String;

    iget-object v2, p0, Lcom/startapps/crossx/modules/comments/SearchComments;->mPostId:Ljava/lang/String;

    new-instance v3, Lcom/startapps/crossx/modules/comments/SearchComments$2;

    invoke-direct {v3, p0, p2}, Lcom/startapps/crossx/modules/comments/SearchComments$2;-><init>(Lcom/startapps/crossx/modules/comments/SearchComments;Lcom/startapps/crossx/modules/comments/SearchComments$DeleteCommentListener;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->deleteComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method public onPostComment(Ljava/lang/String;Lcom/startapps/crossx/modules/comments/SearchComments$CompletePostListener;)V
    .locals 4

    .line 132
    invoke-interface {p2}, Lcom/startapps/crossx/modules/comments/SearchComments$CompletePostListener;->onStart()V

    .line 134
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/SearchComments;->mBoxApi:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    iget-object v1, p0, Lcom/startapps/crossx/modules/comments/SearchComments;->mBoxId:Ljava/lang/String;

    iget-object v2, p0, Lcom/startapps/crossx/modules/comments/SearchComments;->mPostId:Ljava/lang/String;

    new-instance v3, Lcom/startapps/crossx/modules/comments/SearchComments$3;

    invoke-direct {v3, p0, p2}, Lcom/startapps/crossx/modules/comments/SearchComments$3;-><init>(Lcom/startapps/crossx/modules/comments/SearchComments;Lcom/startapps/crossx/modules/comments/SearchComments$CompletePostListener;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->postComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method
