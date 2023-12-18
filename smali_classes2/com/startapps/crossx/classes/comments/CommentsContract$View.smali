.class public interface abstract Lcom/startapps/crossx/classes/comments/CommentsContract$View;
.super Ljava/lang/Object;
.source "CommentsContract.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/classes/comments/CommentsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract onErrorLoadComment()V
.end method

.method public abstract onErrorPostComment(Ljava/lang/String;)V
.end method

.method public abstract onFinishLoadComment()V
.end method

.method public abstract onFinishPostComment(Lcom/startapps/crossx/model/CommentModel;)V
.end method

.method public abstract onInitLoadComment()V
.end method

.method public abstract onInitPostComment()V
.end method
