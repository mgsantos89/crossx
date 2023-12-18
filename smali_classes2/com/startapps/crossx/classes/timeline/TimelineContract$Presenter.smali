.class public interface abstract Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;
.super Ljava/lang/Object;
.source "TimelineContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/classes/timeline/TimelineContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract blockAllFromUser(Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)V
.end method

.method public abstract getPositionTimeLineModel(Lcom/startapps/crossx/model/TimeLineModel;)I
.end method

.method public abstract isShowButtonDeletePost(Lcom/startapps/crossx/model/TimeLineModel;)Z
.end method

.method public abstract isUserLiked(Lcom/startapps/crossx/model/TimeLineModel;)Z
.end method

.method public abstract onCommentPost(Lcom/startapps/crossx/model/TimeLineModel;)V
.end method

.method public abstract onDeletePublication(Ljava/lang/String;Lcom/startapps/crossx/model/TimeLineModel;)V
.end method

.method public abstract onEditPublication(Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V
.end method

.method public abstract onFeatchPublicationsPage(Ljava/lang/String;I)V
.end method

.method public abstract onLikePost(ZLcom/startapps/crossx/model/TimeLineModel;)V
.end method

.method public abstract onLoadComments(Lcom/startapps/crossx/model/TimeLineModel;)V
.end method

.method public abstract onLoadLikes(Lcom/startapps/crossx/model/TimeLineModel;)V
.end method

.method public abstract onPublish(Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V
.end method

.method public abstract onSharePublication(Landroid/content/Context;Lcom/startapps/crossx/model/TimeLineModel;)V
.end method

.method public abstract onTextNumberComments(Lcom/startapps/crossx/model/TimeLineModel;)Ljava/lang/String;
.end method

.method public abstract onTextNumberLikes(Lcom/startapps/crossx/model/TimeLineModel;)Ljava/lang/String;
.end method

.method public abstract postComplaint(Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)V
.end method

.method public abstract userComplaint(Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)V
.end method
