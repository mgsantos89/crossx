.class public Lcom/startapps/crossx/controller/network/requests/UserRequester;
.super Lcom/startapps/crossx/controller/network/requests/AbstractRequester;
.source "UserRequester.java"


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/startapps/crossx/controller/network/requests/AbstractRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public alterUser(Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->NAME:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->LAST_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->EMAIL:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->BIRTHDAY:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBirthday()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dd/MM/yyyy"

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-static {v2, v3, v4}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->GENDER:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getGender()Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/model/enuns/Gender;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->WEIGHT:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getWeight()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->CITY:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->BOX_ID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->PHONE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getRg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->RG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getRg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_1
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getCpf()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->CPF:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getCpf()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_2
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 108
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->ADDRESS:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_3
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v2, Lcom/startapps/crossx/controller/network/URLs;->URL_USER_PROFILE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/UserRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0, p2}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 2

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "currentPassword"

    .line 121
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object p1, Lcom/startapps/crossx/model/key/UserKey;->NEW_PASSWORD:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object p2, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v1, Lcom/startapps/crossx/controller/network/URLs;->URL_USER_CHANGE_PASSWORD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/UserRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0, p3}, Lcom/startapps/crossx/controller/network/ConnectionController;->put(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public changePictureUser([BLcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/UserRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v1

    sget-object v2, Lcom/startapps/crossx/model/key/UserKey;->PICTURE:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/startapps/crossx/controller/network/requests/UserRequester;->addParams(Lcom/loopj/android/http/RequestParams;Ljava/lang/String;Ljava/lang/String;[B)Lcom/loopj/android/http/RequestParams;

    .line 78
    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v2, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v3, Lcom/startapps/crossx/controller/network/URLs;->URL_USER_CHANGE_PICTURE:Ljava/lang/String;

    .line 79
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/UserRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    sget-object v4, Lcom/startapps/crossx/model/key/UserKey;->PICTURE:Ljava/lang/String;

    const-string v5, "imagem.jpg"

    invoke-virtual {p0, v0, v4, v5, p1}, Lcom/startapps/crossx/controller/network/requests/UserRequester;->addParams(Lcom/loopj/android/http/RequestParams;Ljava/lang/String;Ljava/lang/String;[B)Lcom/loopj/android/http/RequestParams;

    move-result-object p1

    .line 78
    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public checkins(Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v2, Lcom/startapps/crossx/controller/network/URLs;->URL_USER_ALL_CHECKINS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/startapps/crossx/controller/network/ConnectionController;->get(Landroid/content/Context;Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public getAccountStatistics(Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 167
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->USER_ID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v2, Lcom/startapps/crossx/controller/network/URLs;->URL_ACCOUNT_STATISTICS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/UserRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0, p2}, Lcom/startapps/crossx/controller/network/ConnectionController;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public getPayments(Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 178
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    .line 182
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->USER_ID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v2, Lcom/startapps/crossx/controller/network/URLs;->URL_ACCOUNT_PAYMENTS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/UserRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0, p2}, Lcom/startapps/crossx/controller/network/ConnectionController;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public missPassword(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v2, Lcom/startapps/crossx/controller/network/URLs;->URL_USER_RESET_PASSWORD:Ljava/lang/String;

    sget-object v3, Lcom/startapps/crossx/model/key/UserKey;->EMAIL:Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Lcom/startapps/crossx/controller/network/requests/UserRequester;->makeRequestParamsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/loopj/android/http/RequestParams;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/startapps/crossx/controller/network/ConnectionController;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public registerUser(Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 5

    .line 50
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->NAME:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->LAST_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->EMAIL:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->BIRTHDAY:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBirthday()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dd/MM/yyyy"

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-static {v2, v3, v4}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getFacebookID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->FACEBOOK_ID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getFacebookID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getFacebookAccessToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 60
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->FACEBOOK_ACCESS_TOKEN:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getFacebookAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_1
    :goto_0
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->GENDER:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getGender()Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/model/enuns/Gender;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->WEIGHT:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getWeight()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->CITY:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->PASSWORD:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->BOX_ID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v2, Lcom/startapps/crossx/controller/network/URLs;->URL_USER_REGISTER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/UserRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0, p2}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public setUserPrivacity(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    sget-object v1, Lcom/startapps/crossx/model/key/UserKey;->PRIVACY:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v2, Lcom/startapps/crossx/controller/network/URLs;->URL_USER_PROFILE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/UserRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0, p2}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public userLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "2"

    if-eqz p2, :cond_0

    .line 35
    sget-object p1, Lcom/startapps/crossx/model/key/UserKey;->FACEBOOK_ID:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object p1, Lcom/startapps/crossx/model/key/UserKey;->TYPE:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 39
    sget-object p2, Lcom/startapps/crossx/model/key/UserKey;->FACEBOOK_ACCESS_TOKEN:Ljava/lang/String;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object p1, Lcom/startapps/crossx/model/key/UserKey;->TYPE:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 42
    :cond_1
    sget-object p1, Lcom/startapps/crossx/model/key/UserKey;->PASSWORD:Ljava/lang/String;

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object p1, Lcom/startapps/crossx/model/key/UserKey;->EMAIL:Ljava/lang/String;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object p1, Lcom/startapps/crossx/model/key/UserKey;->TYPE:Ljava/lang/String;

    const-string p2, "1"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_0
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object p2, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object p3, Lcom/startapps/crossx/controller/network/URLs;->URL_USER_LOGIN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/UserRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public userRole(Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/UserRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v2, Lcom/startapps/crossx/controller/network/URLs;->URL_USER_ROLE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/startapps/crossx/controller/network/ConnectionController;->get(Landroid/content/Context;Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method
