.class public Lcom/startapps/crossx/model/BoxModel;
.super Lcom/startapps/crossx/model/AbstractModel;
.source "BoxModel.java"


# instance fields
.field address:Ljava/lang/String;

.field address1:Ljava/lang/String;

.field address2:Ljava/lang/String;

.field affiliate:Z

.field checkInLocations:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "checkin_locations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/CheckInLocationModel;",
            ">;"
        }
    .end annotation
.end field

.field email:Ljava/lang/String;

.field id:Ljava/lang/String;

.field logoUrl:Ljava/lang/String;

.field name:Ljava/lang/String;

.field telephone:Ljava/lang/String;

.field website:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/startapps/crossx/model/AbstractModel;-><init>()V

    .line 25
    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    iput-object p8, p0, Lcom/startapps/crossx/model/BoxModel;->checkInLocations:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/startapps/crossx/model/BoxModel;->id:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/startapps/crossx/model/BoxModel;->name:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/startapps/crossx/model/BoxModel;->logoUrl:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/startapps/crossx/model/BoxModel;->website:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/startapps/crossx/model/BoxModel;->telephone:Ljava/lang/String;

    .line 51
    iput-object p6, p0, Lcom/startapps/crossx/model/BoxModel;->address:Ljava/lang/String;

    .line 52
    iput-object p7, p0, Lcom/startapps/crossx/model/BoxModel;->email:Ljava/lang/String;

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/startapps/crossx/model/BoxModel;->affiliate:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/AbstractModel;-><init>(Lorg/json/JSONObject;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->checkInLocations:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    const-string v0, "id"

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->id:Ljava/lang/String;

    const-string v0, "name"

    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->name:Ljava/lang/String;

    const-string v0, "logoUrl"

    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->logoUrl:Ljava/lang/String;

    const-string/jumbo v0, "website"

    .line 37
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->website:Ljava/lang/String;

    const-string/jumbo v0, "telephone"

    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->telephone:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "address1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "address2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->address:Ljava/lang/String;

    const-string v0, "email"

    .line 40
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/model/BoxModel;->email:Ljava/lang/String;

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/startapps/crossx/model/BoxModel;->affiliate:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->address:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vazio"

    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress1()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->address1:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vazio"

    return-object v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->address1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->address2:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vazio"

    return-object v0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->address2:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckLocations()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/CheckInLocationModel;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->checkInLocations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->email:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vazio"

    return-object v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->logoUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vazio"

    return-object v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vazio"

    return-object v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTelephone()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->telephone:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vazio"

    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->telephone:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->website:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vazio"

    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/model/BoxModel;->website:Ljava/lang/String;

    return-object v0
.end method

.method public isAffiliate()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/startapps/crossx/model/BoxModel;->affiliate:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/startapps/crossx/model/BoxModel;->address:Ljava/lang/String;

    return-void
.end method

.method public setAffiliate(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/startapps/crossx/model/BoxModel;->affiliate:Z

    return-void
.end method

.method public setCheckInLocations(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/CheckInLocationModel;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/startapps/crossx/model/BoxModel;->checkInLocations:Ljava/util/ArrayList;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/startapps/crossx/model/BoxModel;->email:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/startapps/crossx/model/BoxModel;->id:Ljava/lang/String;

    return-void
.end method

.method public setLogoUrl(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/startapps/crossx/model/BoxModel;->logoUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/startapps/crossx/model/BoxModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setTelephone(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/startapps/crossx/model/BoxModel;->telephone:Ljava/lang/String;

    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/startapps/crossx/model/BoxModel;->website:Ljava/lang/String;

    return-void
.end method
