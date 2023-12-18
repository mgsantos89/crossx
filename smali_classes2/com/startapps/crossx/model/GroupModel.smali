.class public Lcom/startapps/crossx/model/GroupModel;
.super Lcom/startapps/crossx/model/AbstractModel;
.source "GroupModel.java"


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private usersCount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/startapps/crossx/model/AbstractModel;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/GroupModel;->urls:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .line 28
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/AbstractModel;-><init>(Lorg/json/JSONObject;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/GroupModel;->urls:Ljava/util/List;

    if-eqz p1, :cond_0

    const-string v0, "id"

    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/GroupModel;->id:Ljava/lang/String;

    const-string v0, "name"

    const-string v1, ""

    .line 31
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/GroupModel;->name:Ljava/lang/String;

    const-string/jumbo v0, "users"

    .line 32
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/GroupModel;->usersCount:Ljava/lang/String;

    const-string/jumbo v0, "thumbs"

    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 36
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/startapps/crossx/model/GroupModel;->urls:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/startapps/crossx/model/GroupModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/startapps/crossx/model/GroupModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/startapps/crossx/model/GroupModel;->urls:Ljava/util/List;

    return-object v0
.end method

.method public getUsersCount()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/startapps/crossx/model/GroupModel;->usersCount:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/startapps/crossx/model/GroupModel;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/startapps/crossx/model/GroupModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/startapps/crossx/model/GroupModel;->urls:Ljava/util/List;

    return-void
.end method

.method public setUsersCount(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/startapps/crossx/model/GroupModel;->usersCount:Ljava/lang/String;

    return-void
.end method
