.class public Lcom/startapps/crossx/model/GroupTimelineModel;
.super Lcom/startapps/crossx/model/AbstractModel;
.source "GroupTimelineModel.java"


# instance fields
.field private date:Ljava/util/Date;

.field private id:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private userModel:Lcom/startapps/crossx/model/UserModel;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/startapps/crossx/model/AbstractModel;-><init>()V

    const-string v0, "id"

    .line 21
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/GroupTimelineModel;->id:Ljava/lang/String;

    const-string v0, "message"

    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/GroupTimelineModel;->message:Ljava/lang/String;

    const-string v0, "created"

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->stringForDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/GroupTimelineModel;->date:Ljava/util/Date;

    .line 25
    new-instance v0, Lcom/startapps/crossx/model/UserModel;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/startapps/crossx/model/UserModel;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/startapps/crossx/model/GroupTimelineModel;->userModel:Lcom/startapps/crossx/model/UserModel;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/startapps/crossx/model/GroupTimelineModel;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/startapps/crossx/model/GroupTimelineModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/startapps/crossx/model/GroupTimelineModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getUserModel()Lcom/startapps/crossx/model/UserModel;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/startapps/crossx/model/GroupTimelineModel;->userModel:Lcom/startapps/crossx/model/UserModel;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/startapps/crossx/model/GroupTimelineModel;->id:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/startapps/crossx/model/GroupTimelineModel;->message:Ljava/lang/String;

    return-void
.end method

.method public setUserModel(Lcom/startapps/crossx/model/UserModel;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/startapps/crossx/model/GroupTimelineModel;->userModel:Lcom/startapps/crossx/model/UserModel;

    return-void
.end method
