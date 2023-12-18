.class public Lcom/startapps/crossx/model/AbstractModel;
.super Ljava/lang/Object;
.source "AbstractModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private data:Lorg/json/JSONObject;

.field private datas:Lorg/json/JSONArray;

.field private error:Ljava/lang/String;

.field private messageData:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "success"

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapps/crossx/model/AbstractModel;->success:Z

    const-string v0, "data"

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/startapps/crossx/model/AbstractModel;->data:Lorg/json/JSONObject;

    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/startapps/crossx/model/AbstractModel;->datas:Lorg/json/JSONArray;

    .line 27
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/AbstractModel;->messageData:Ljava/lang/String;

    const-string v0, "message"

    .line 28
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/model/AbstractModel;->error:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getData()Lorg/json/JSONObject;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/startapps/crossx/model/AbstractModel;->data:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getDatas()Lorg/json/JSONArray;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/startapps/crossx/model/AbstractModel;->datas:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/startapps/crossx/model/AbstractModel;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageData()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/startapps/crossx/model/AbstractModel;->messageData:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/startapps/crossx/model/AbstractModel;->success:Z

    return v0
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/startapps/crossx/model/AbstractModel;->data:Lorg/json/JSONObject;

    return-void
.end method

.method public setDatas(Lorg/json/JSONArray;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/startapps/crossx/model/AbstractModel;->datas:Lorg/json/JSONArray;

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/startapps/crossx/model/AbstractModel;->error:Ljava/lang/String;

    return-void
.end method

.method public setMessageData(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/startapps/crossx/model/AbstractModel;->messageData:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/startapps/crossx/model/AbstractModel;->success:Z

    return-void
.end method
