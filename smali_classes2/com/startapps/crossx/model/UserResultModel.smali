.class public Lcom/startapps/crossx/model/UserResultModel;
.super Lcom/startapps/crossx/model/AbstractModel;
.source "UserResultModel.java"


# instance fields
.field private category:Ljava/lang/String;

.field private mapResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private result:Ljava/lang/String;

.field private resultObs:Ljava/lang/String;

.field private resultType:Ljava/lang/String;

.field private wod:Lcom/startapps/crossx/model/WodsModel;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Ljava/lang/String;Lcom/startapps/crossx/model/WodsModel;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Lcom/startapps/crossx/model/AbstractModel;-><init>()V

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/UserResultModel;->mapResult:Ljava/util/Map;

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapps/crossx/model/UserResultModel;->category:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/startapps/crossx/model/UserResultModel;->resultObs:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/startapps/crossx/model/UserResultModel;->wod:Lcom/startapps/crossx/model/WodsModel;

    .line 36
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v0, p2, :cond_0

    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "result_type"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    const-string v1, "result"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 40
    iget-object v1, p0, Lcom/startapps/crossx/model/UserResultModel;->mapResult:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public allResults()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/startapps/crossx/model/UserResultModel;->mapResult:Ljava/util/Map;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/startapps/crossx/model/UserResultModel;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/startapps/crossx/model/UserResultModel;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getResultObs()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/startapps/crossx/model/UserResultModel;->resultObs:Ljava/lang/String;

    return-object v0
.end method

.method public getWod()Lcom/startapps/crossx/model/WodsModel;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/startapps/crossx/model/UserResultModel;->wod:Lcom/startapps/crossx/model/WodsModel;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/startapps/crossx/model/UserResultModel;->category:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/startapps/crossx/model/UserResultModel;->result:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/startapps/crossx/model/UserResultModel;->mapResult:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mapResult "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/startapps/crossx/model/UserResultModel;->mapResult:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "setResult"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setResultObs(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/startapps/crossx/model/UserResultModel;->resultObs:Ljava/lang/String;

    return-void
.end method

.method public setWod(Lcom/startapps/crossx/model/WodsModel;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/startapps/crossx/model/UserResultModel;->wod:Lcom/startapps/crossx/model/WodsModel;

    return-void
.end method
