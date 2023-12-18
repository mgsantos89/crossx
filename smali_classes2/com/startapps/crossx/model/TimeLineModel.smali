.class public Lcom/startapps/crossx/model/TimeLineModel;
.super Lcom/startapps/crossx/model/AbstractModel;
.source "TimeLineModel.java"


# instance fields
.field commentCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "commentCount"
    .end annotation
.end field

.field comments:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recentComments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;"
        }
    .end annotation
.end field

.field created:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field imageProperties:Lcom/startapps/crossx/model/ImageProperties;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageProperties"
    .end annotation
.end field

.field imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageUrl"
    .end annotation
.end field

.field likeCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "likeCount"
    .end annotation
.end field

.field text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field

.field user:Lcom/startapps/crossx/model/UserModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation
.end field

.field userLiked:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userLiked"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/startapps/crossx/model/AbstractModel;-><init>()V

    return-void
.end method


# virtual methods
.method public addFirstComment(Lcom/startapps/crossx/model/CommentModel;)V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getComments()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->comments:Ljava/util/List;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->comments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addLastComment(Lcom/startapps/crossx/model/CommentModel;)V
    .locals 2

    .line 154
    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getComments()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->comments:Ljava/util/List;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public calculateTimePosted()Ljava/lang/String;
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getCreated()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->stringForDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 98
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 97
    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->getDuration(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->commentCount:I

    return v0
.end method

.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->comments:Ljava/util/List;

    return-object v0
.end method

.method public getCreated()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->created:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageProperties()Lcom/startapps/crossx/model/ImageProperties;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->imageProperties:Lcom/startapps/crossx/model/ImageProperties;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLikeCount()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->likeCount:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/startapps/crossx/model/UserModel;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->user:Lcom/startapps/crossx/model/UserModel;

    return-object v0
.end method

.method public isUserLiked()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->userLiked:Z

    return v0
.end method

.method public removeCommentIfNeed(Lcom/startapps/crossx/model/CommentModel;)V
    .locals 3

    .line 170
    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getComments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 171
    :goto_0
    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getCommentCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getComments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/CommentModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/CommentModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/CommentModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getComments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setCommentCount(I)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/startapps/crossx/model/TimeLineModel;->commentCount:I

    return-void
.end method

.method public setComments(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->comments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->comments:Ljava/util/List;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->comments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public setCreated(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/startapps/crossx/model/TimeLineModel;->created:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/startapps/crossx/model/TimeLineModel;->id:Ljava/lang/String;

    return-void
.end method

.method public setImageProperties(Lcom/startapps/crossx/model/ImageProperties;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/startapps/crossx/model/TimeLineModel;->imageProperties:Lcom/startapps/crossx/model/ImageProperties;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/startapps/crossx/model/TimeLineModel;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLikeCount(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/startapps/crossx/model/TimeLineModel;->likeCount:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/startapps/crossx/model/TimeLineModel;->text:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lcom/startapps/crossx/model/UserModel;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/startapps/crossx/model/TimeLineModel;->user:Lcom/startapps/crossx/model/UserModel;

    return-void
.end method

.method public setUserLiked(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/startapps/crossx/model/TimeLineModel;->userLiked:Z

    return-void
.end method

.method public urlImagePublicationIsValid()Z
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->imageUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/startapps/crossx/model/TimeLineModel;->imageUrl:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
