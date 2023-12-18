.class public Lcom/startapps/crossx/model/CommentModel;
.super Lcom/startapps/crossx/model/AbstractModel;
.source "CommentModel.java"


# instance fields
.field comment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "comment"
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

.field modified:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "modified"
    .end annotation
.end field

.field user:Lcom/startapps/crossx/model/UserModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/startapps/crossx/model/AbstractModel;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateTimeComment()Ljava/lang/String;
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/startapps/crossx/model/CommentModel;->getCreated()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->stringForDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->getDuration(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/startapps/crossx/model/CommentModel;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/startapps/crossx/model/CommentModel;->created:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/startapps/crossx/model/CommentModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getModified()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/startapps/crossx/model/CommentModel;->modified:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/startapps/crossx/model/UserModel;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/startapps/crossx/model/CommentModel;->user:Lcom/startapps/crossx/model/UserModel;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/startapps/crossx/model/CommentModel;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCreated(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/startapps/crossx/model/CommentModel;->created:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/startapps/crossx/model/CommentModel;->id:Ljava/lang/String;

    return-void
.end method

.method public setModified(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/startapps/crossx/model/CommentModel;->modified:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lcom/startapps/crossx/model/UserModel;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/startapps/crossx/model/CommentModel;->user:Lcom/startapps/crossx/model/UserModel;

    return-void
.end method
