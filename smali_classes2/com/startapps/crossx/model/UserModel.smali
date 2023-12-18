.class public Lcom/startapps/crossx/model/UserModel;
.super Lcom/startapps/crossx/model/AbstractModel;
.source "UserModel.java"


# static fields
.field public static final ROLE_BOX:Ljava/lang/Integer;

.field public static final ROLE_MASTER:Ljava/lang/Integer;


# instance fields
.field accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accessToken"
    .end annotation
.end field

.field address:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address"
    .end annotation
.end field

.field addressNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address_number"
    .end annotation
.end field

.field avatar:Ljava/io/File;

.field birthday:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "birthday"
    .end annotation
.end field

.field box:Lcom/startapps/crossx/model/BoxModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "box"
    .end annotation
.end field

.field checkinStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "checkin_status"
    .end annotation
.end field

.field city:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "city"
    .end annotation
.end field

.field complement:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "complement"
    .end annotation
.end field

.field cpf:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cpf"
    .end annotation
.end field

.field district:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "district"
    .end annotation
.end field

.field email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field facebookAccessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "facebookAccessToken"
    .end annotation
.end field

.field facebookID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "facebookID"
    .end annotation
.end field

.field gender:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gender"
    .end annotation
.end field

.field gympass:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gympass"
    .end annotation
.end field

.field gympassCheckinOnly:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gympass_checkin_only"
    .end annotation
.end field

.field gympassUniqueToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gympass_unique_token"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field imgUser:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "picture"
    .end annotation
.end field

.field isStudent:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isStudent"
    .end annotation
.end field

.field lastName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_name"
    .end annotation
.end field

.field measureUnity:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "measureUnity"
    .end annotation
.end field

.field name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field nickname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nickname"
    .end annotation
.end field

.field password:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "password"
    .end annotation
.end field

.field phone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone"
    .end annotation
.end field

.field phones:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phones"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/PhoneModel;",
            ">;"
        }
    .end annotation
.end field

.field privacity:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "privacy"
    .end annotation
.end field

.field rg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rg"
    .end annotation
.end field

.field role:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "role"
    .end annotation
.end field

.field state:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field

.field userStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_status"
    .end annotation
.end field

.field weight:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weight"
    .end annotation
.end field

.field zipcode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "zipcode"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/UserModel;->ROLE_BOX:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/UserModel;->ROLE_MASTER:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/startapps/crossx/model/AbstractModel;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .line 102
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/AbstractModel;-><init>(Lorg/json/JSONObject;)V

    if-eqz p1, :cond_1

    const-string v0, "id"

    .line 106
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->id:Ljava/lang/String;

    const-string v0, "facebookID"

    const-string v1, ""

    .line 107
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->facebookID:Ljava/lang/String;

    const-string v0, "email"

    .line 108
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->email:Ljava/lang/String;

    const-string v0, "role"

    .line 109
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->role:Ljava/lang/String;

    const-string/jumbo v0, "user_status"

    .line 110
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->userStatus:Ljava/lang/String;

    const-string v0, "name"

    .line 111
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->name:Ljava/lang/String;

    const-string v0, "last_name"

    .line 112
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->lastName:Ljava/lang/String;

    const-string v0, "nickname"

    .line 113
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->nickname:Ljava/lang/String;

    const-string v0, "birthday"

    .line 114
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yyyy-MM-dd"

    const-string v2, "dd/MM/yyyy"

    invoke-static {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->birthday:Ljava/lang/String;

    const-string v0, "gender"

    .line 115
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/model/enuns/Gender;->findByGender(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/Gender;->getGender()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->gender:Ljava/lang/String;

    const-string/jumbo v0, "weight"

    .line 116
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->weight:Ljava/lang/String;

    const-string v0, "city"

    .line 117
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->city:Ljava/lang/String;

    const-string v0, "accessToken"

    .line 118
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->accessToken:Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/startapps/crossx/model/BoxModel;

    const-string v1, "box"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapps/crossx/model/BoxModel;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->box:Lcom/startapps/crossx/model/BoxModel;

    const-string v0, "picture"

    .line 120
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->imgUser:Ljava/lang/String;

    const-string v0, "privacy"

    .line 121
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/model/UserModel;->privacity:I

    const-string v0, "gympass"

    .line 122
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/startapps/crossx/model/UserModel;->gympass:Z

    const-string v0, "gympass_checkin_only"

    .line 123
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapps/crossx/model/UserModel;->gympassCheckinOnly:Z

    const-string v0, "phone"

    .line 125
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->phone:Ljava/lang/String;

    const-string v0, "rg"

    .line 126
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->rg:Ljava/lang/String;

    const-string v0, "cpf"

    .line 127
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->cpf:Ljava/lang/String;

    const-string/jumbo v0, "zipcode"

    .line 128
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->zipcode:Ljava/lang/String;

    const-string v0, "address"

    .line 129
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->address:Ljava/lang/String;

    const-string v0, "address_number"

    .line 130
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->addressNumber:Ljava/lang/String;

    const-string v0, "complement"

    .line 131
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->complement:Ljava/lang/String;

    const-string v0, "district"

    .line 132
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->district:Ljava/lang/String;

    const-string v0, "state"

    .line 133
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/UserModel;->state:Ljava/lang/String;

    const-string v0, "checkin_status"

    const/4 v1, 0x3

    .line 134
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/startapps/crossx/model/UserModel;->checkinStatus:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 2

    .line 287
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string/jumbo v1, "token_jwt"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/Preference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressNumber()Ljava/lang/String;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->addressNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/io/File;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->avatar:Ljava/io/File;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthdayFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->birthday:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "yyyy-MM-dd"

    .line 204
    invoke-static {v0, v1, p1}, Lcom/startapps/crossx/controller/utils/DateUtility;->dateFromFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 206
    :catch_0
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->birthday:Ljava/lang/String;

    const-string v1, "dd/MM/yyyy"

    invoke-static {v0, v1, p1}, Lcom/startapps/crossx/controller/utils/DateUtility;->dateFromFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBox()Lcom/startapps/crossx/model/BoxModel;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->box:Lcom/startapps/crossx/model/BoxModel;

    return-object v0
.end method

.method public getCheckinStatus()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/startapps/crossx/model/UserModel;->checkinStatus:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getComplement()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->complement:Ljava/lang/String;

    return-object v0
.end method

.method public getCompleteUserName()Ljava/lang/String;
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/startapps/crossx/model/UserModel;->lastName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/model/UserModel;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getCpf()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->cpf:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookAccessToken()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->facebookAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookID()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->facebookID:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Lcom/startapps/crossx/model/enuns/Gender;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->gender:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/model/enuns/Gender;->findByGender(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v0

    return-object v0
.end method

.method public getGympassUniqueToken()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->gympassUniqueToken:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUser()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->imgUser:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getMeasureUnity()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/startapps/crossx/model/UserModel;->measureUnity:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getNicknameOrName()Ljava/lang/String;
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->nickname:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "null"

    if-eq v0, v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->nickname:Ljava/lang/String;

    return-object v0

    .line 169
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/startapps/crossx/model/UserModel;->getCompleteUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->phones:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 326
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/PhoneModel;

    .line 327
    invoke-virtual {v1}, Lcom/startapps/crossx/model/PhoneModel;->getMain()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {v1}, Lcom/startapps/crossx/model/PhoneModel;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPhones()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/PhoneModel;",
            ">;"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->phones:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPrivacity()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/startapps/crossx/model/UserModel;->privacity:I

    return v0
.end method

.method public getRg()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->rg:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->role:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getUserStatus()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->userStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getUserStatusName()Ljava/lang/String;
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->role:Ljava/lang/String;

    const-string v1, "0"

    const-string v2, "Atleta"

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "1"

    if-eq v0, v1, :cond_3

    const-string v1, "2"

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "5"

    if-ne v0, v1, :cond_2

    const-string v0, "Staff"

    return-object v0

    :cond_2
    return-object v2

    :cond_3
    :goto_0
    const-string v0, "Coach"

    return-object v0
.end method

.method public getWeight()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->weight:Ljava/lang/String;

    return-object v0
.end method

.method public getZipcode()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/startapps/crossx/model/UserModel;->zipcode:Ljava/lang/String;

    return-object v0
.end method

.method public isGympass()Z
    .locals 1

    .line 432
    iget-boolean v0, p0, Lcom/startapps/crossx/model/UserModel;->gympass:Z

    return v0
.end method

.method public isGympassChecinOnly()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/startapps/crossx/model/UserModel;->gympassCheckinOnly:Z

    return v0
.end method

.method public isOwner()Z
    .locals 2

    .line 428
    invoke-virtual {p0}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isStudent()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/startapps/crossx/model/UserModel;->isStudent:Z

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->address:Ljava/lang/String;

    return-void
.end method

.method public setAddressNumber(Ljava/lang/String;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->addressNumber:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/io/File;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->avatar:Ljava/io/File;

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setBox(Lcom/startapps/crossx/model/BoxModel;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->box:Lcom/startapps/crossx/model/BoxModel;

    return-void
.end method

.method public setCheckinStatus(I)V
    .locals 0

    .line 441
    iput p1, p0, Lcom/startapps/crossx/model/UserModel;->checkinStatus:I

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->city:Ljava/lang/String;

    return-void
.end method

.method public setComplement(Ljava/lang/String;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->complement:Ljava/lang/String;

    return-void
.end method

.method public setCpf(Ljava/lang/String;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->cpf:Ljava/lang/String;

    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->district:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->email:Ljava/lang/String;

    return-void
.end method

.method public setFacebookAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->facebookAccessToken:Ljava/lang/String;

    return-void
.end method

.method public setFacebookID(Ljava/lang/String;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->facebookID:Ljava/lang/String;

    return-void
.end method

.method public setGender(Lcom/startapps/crossx/model/enuns/Gender;)V
    .locals 0

    .line 219
    invoke-virtual {p1}, Lcom/startapps/crossx/model/enuns/Gender;->getGender()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->gender:Ljava/lang/String;

    return-void
.end method

.method public setGympassUniqueToken(Ljava/lang/String;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->gympassUniqueToken:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->id:Ljava/lang/String;

    return-void
.end method

.method public setImgUser(Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->imgUser:Ljava/lang/String;

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->lastName:Ljava/lang/String;

    return-void
.end method

.method public setMeasureUnity(I)V
    .locals 0

    .line 305
    iput p1, p0, Lcom/startapps/crossx/model/UserModel;->measureUnity:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->password:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPhones(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/PhoneModel;",
            ">;)V"
        }
    .end annotation

    .line 458
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->phones:Ljava/util/ArrayList;

    return-void
.end method

.method public setPrivacity(I)V
    .locals 0

    .line 313
    iput p1, p0, Lcom/startapps/crossx/model/UserModel;->privacity:I

    return-void
.end method

.method public setRg(Ljava/lang/String;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->rg:Ljava/lang/String;

    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->role:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->state:Ljava/lang/String;

    return-void
.end method

.method public setStudent(Z)V
    .locals 0

    .line 251
    iput-boolean p1, p0, Lcom/startapps/crossx/model/UserModel;->isStudent:Z

    return-void
.end method

.method public setUserStatus(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->userStatus:Ljava/lang/String;

    return-void
.end method

.method public setWeight(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->weight:Ljava/lang/String;

    return-void
.end method

.method public setZipcode(Ljava/lang/String;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/startapps/crossx/model/UserModel;->zipcode:Ljava/lang/String;

    return-void
.end method
