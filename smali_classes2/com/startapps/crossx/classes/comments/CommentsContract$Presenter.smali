.class public interface abstract Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;
.super Ljava/lang/Object;
.source "CommentsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/classes/comments/CommentsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract hasMoreItems()Z
.end method

.method public abstract init()V
.end method

.method public abstract isOwnerComment(Lcom/startapps/crossx/model/CommentModel;)Z
.end method

.method public abstract loadFirstResults()V
.end method

.method public abstract loadMoreResults()V
.end method

.method public abstract onCommentPost(Ljava/lang/String;)V
.end method

.method public abstract onDeleteComment(Lcom/startapps/crossx/model/CommentModel;)V
.end method
