.class public Lcom/startapps/crossx/model/WokoutCategorie;
.super Lcom/startapps/crossx/model/AbstractModel;
.source "WokoutCategorie.java"


# instance fields
.field private id:J

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/startapps/crossx/model/AbstractModel;-><init>()V

    const-string v0, "id"

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/model/WokoutCategorie;->setId(J)V

    const-string v0, "name"

    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/model/WokoutCategorie;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/startapps/crossx/model/WokoutCategorie;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/startapps/crossx/model/WokoutCategorie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/startapps/crossx/model/WokoutCategorie;->id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/startapps/crossx/model/WokoutCategorie;->name:Ljava/lang/String;

    return-void
.end method
