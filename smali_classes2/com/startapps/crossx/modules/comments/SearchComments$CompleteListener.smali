.class public interface abstract Lcom/startapps/crossx/modules/comments/SearchComments$CompleteListener;
.super Ljava/lang/Object;
.source "SearchComments.java"

# interfaces
.implements Lcom/startapps/crossx/modules/comments/SearchComments$RestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/modules/comments/SearchComments;
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
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;Z)V"
        }
    .end annotation
.end method
