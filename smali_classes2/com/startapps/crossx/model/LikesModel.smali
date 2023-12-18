.class public Lcom/startapps/crossx/model/LikesModel;
.super Ljava/lang/Object;
.source "LikesModel.java"


# instance fields
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

.field user:Lcom/startapps/crossx/model/UserModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateTimeComment()Ljava/lang/String;
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/startapps/crossx/model/LikesModel;->getCreated()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->stringForDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->getDuration(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreated()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/startapps/crossx/model/LikesModel;->created:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/startapps/crossx/model/LikesModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/startapps/crossx/model/UserModel;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/startapps/crossx/model/LikesModel;->user:Lcom/startapps/crossx/model/UserModel;

    return-object v0
.end method
