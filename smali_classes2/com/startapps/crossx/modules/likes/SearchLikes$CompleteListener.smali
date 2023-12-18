.class public interface abstract Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;
.super Ljava/lang/Object;
.source "SearchLikes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/modules/likes/SearchLikes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CompleteListener"
.end annotation


# virtual methods
.method public abstract onComplete(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/LikesModel;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract onError(Lcom/startapps/crossx/rest/error/ResponseError;)V
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
.end method
