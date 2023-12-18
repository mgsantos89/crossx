.class public Lcom/startapps/crossx/model/InvalidFieldsModel;
.super Lcom/startapps/crossx/model/AbstractModel;
.source "InvalidFieldsModel.java"


# instance fields
.field field:Ljava/lang/String;

.field message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/startapps/crossx/model/AbstractModel;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "field"

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/InvalidFieldsModel;->field:Ljava/lang/String;

    const-string v0, "message"

    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/model/InvalidFieldsModel;->message:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getField()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/startapps/crossx/model/InvalidFieldsModel;->field:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/startapps/crossx/model/InvalidFieldsModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setField(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/startapps/crossx/model/InvalidFieldsModel;->field:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/startapps/crossx/model/InvalidFieldsModel;->message:Ljava/lang/String;

    return-void
.end method
