.class public interface abstract Lcom/startapps/crossx/Interfaces/views/TimelineViewInterface;
.super Ljava/lang/Object;
.source "TimelineViewInterface.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;


# annotations
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
.method public abstract onDeletePublicationError(Lcom/startapps/crossx/model/TimeLineModel;)V
.end method

.method public abstract onPublicationDeleted(Lcom/startapps/crossx/model/TimeLineModel;)V
.end method

.method public abstract onPublishError(Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V
.end method

.method public abstract onPublishSuccess()V
.end method
