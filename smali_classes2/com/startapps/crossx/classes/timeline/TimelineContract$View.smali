.class public interface abstract Lcom/startapps/crossx/classes/timeline/TimelineContract$View;
.super Ljava/lang/Object;
.source "TimelineContract.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/classes/timeline/TimelineContract;
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
.method public abstract getContextActivity()Landroid/app/Activity;
.end method

.method public abstract getFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract getItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract onDeletePublicationError(Lcom/startapps/crossx/model/TimeLineModel;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onPublicationDeleted(Lcom/startapps/crossx/model/TimeLineModel;)V
.end method

.method public abstract onPublishError(Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V
.end method

.method public abstract onPublishSuccess()V
.end method

.method public abstract onShowCommentsUI(Lcom/startapps/crossx/model/TimeLineModel;)V
.end method

.method public abstract onSuccessReason(Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)V
.end method

.method public abstract onUpdatedPostTimeLine()V
.end method
