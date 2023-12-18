.class public final Lcom/startapps/crossx/rest/repository/AuthRepository;
.super Ljava/lang/Object;
.source "AuthRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eJ:\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000eJ\u001c\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00182\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/repository/AuthRepository;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "mRemote",
        "Lcom/startapps/crossx/rest/interfaces/AuthService;",
        "forgotPassword",
        "",
        "email",
        "",
        "listener",
        "Lcom/startapps/crossx/rest/listener/ApiListener;",
        "",
        "login",
        "type",
        "",
        "password",
        "facebookID",
        "Lcom/startapps/crossx/model/AuthModel;",
        "register",
        "userModel",
        "Lcom/startapps/crossx/model/UserModel;",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final mRemote:Lcom/startapps/crossx/rest/interfaces/AuthService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/rest/repository/AuthRepository;->context:Landroid/content/Context;

    .line 24
    sget-object p1, Lcom/startapps/crossx/rest/clients/RetrofitClient;->Companion:Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;

    const-class v0, Lcom/startapps/crossx/rest/interfaces/AuthService;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;->createService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/rest/interfaces/AuthService;

    iput-object p1, p0, Lcom/startapps/crossx/rest/repository/AuthRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/AuthService;

    return-void
.end method


# virtual methods
.method public final forgotPassword(Ljava/lang/String;Lcom/startapps/crossx/rest/listener/ApiListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "listener"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 126
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    iget-object p1, p0, Lcom/startapps/crossx/rest/repository/AuthRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/AuthService;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "json.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/startapps/crossx/rest/interfaces/AuthService;->forgotPassword(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 129
    new-instance v0, Lcom/startapps/crossx/rest/repository/AuthRepository$forgotPassword$1;

    invoke-direct {v0, p2, p0}, Lcom/startapps/crossx/rest/repository/AuthRepository$forgotPassword$1;-><init>(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/rest/repository/AuthRepository;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/startapps/crossx/rest/repository/AuthRepository;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final login(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/listener/ApiListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Lcom/startapps/crossx/model/AuthModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "email"

    .line 29
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "facebookID"

    .line 30
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "password"

    .line 31
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p2, "type"

    .line 32
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    iget-object p1, p0, Lcom/startapps/crossx/rest/repository/AuthRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/AuthService;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "json.toString()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/startapps/crossx/rest/interfaces/AuthService;->login(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 35
    new-instance p2, Lcom/startapps/crossx/rest/repository/AuthRepository$login$1;

    invoke-direct {p2, p5, p0}, Lcom/startapps/crossx/rest/repository/AuthRepository$login$1;-><init>(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/rest/repository/AuthRepository;)V

    check-cast p2, Lretrofit2/Callback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final register(Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/rest/listener/ApiListener;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/model/UserModel;",
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Lcom/startapps/crossx/model/AuthModel;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string/jumbo v2, "userModel"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "listener"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getBirthday()Ljava/lang/String;

    move-result-object v2

    const-string v4, "dd/MM/yyyy"

    const-string/jumbo v5, "yyyy-MM-dd"

    invoke-static {v2, v4, v5}, Lcom/startapps/crossx/controller/utils/DateUtility;->dateFromFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    sget-object v4, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "userModel.name"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v4, v5, v6}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v8

    .line 63
    sget-object v4, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getLastName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "userModel.lastName"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v4, v5, v6}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v9

    .line 64
    sget-object v4, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getEmail()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "userModel.email"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v4, v5, v6}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v10

    .line 65
    sget-object v4, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getPassword()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "userModel.password"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v4, v5, v6}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v11

    .line 66
    sget-object v4, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v5, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v4, v2, v5}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v12

    .line 67
    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getZipcode()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "userModel.zipcode"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v2, v4, v5}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v19

    .line 68
    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "userModel.address"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v2, v4, v5}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v20

    .line 69
    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getAddressNumber()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "userModel.addressNumber"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v2, v4, v5}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v21

    .line 70
    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getDistrict()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "userModel.district"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v2, v4, v5}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v23

    .line 71
    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getCity()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "userModel.city"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v2, v4, v5}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v13

    .line 72
    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getState()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "userModel.state"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v2, v4, v5}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v24

    .line 73
    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getGender()Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v4

    invoke-virtual {v4}, Lcom/startapps/crossx/model/enuns/Gender;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Masculino"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "m"

    goto :goto_0

    :cond_0
    const-string v4, "f"

    :goto_0
    sget-object v5, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v2, v4, v5}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v14

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getAvatar()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 80
    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getAvatar()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "userModel.avatar"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v2, v5, v6}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 81
    sget-object v5, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getAvatar()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "avatar"

    invoke-virtual {v5, v7, v6, v2}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_1

    :cond_1
    const/16 v18, 0x0

    .line 83
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v6

    :goto_3
    if-nez v2, :cond_4

    .line 84
    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v15, "userModel.nickname"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v2, v7, v15}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v2

    move-object v15, v2

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    .line 86
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 87
    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v4, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v2, v7, v4}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    .line 89
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getFacebookID()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "userModel.facebookID"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_6

    move v4, v6

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_7

    .line 90
    sget-object v4, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getFacebookID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v4, v5, v7}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v4

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    .line 93
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getComplement()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_8

    :cond_8
    const/4 v5, 0x0

    goto :goto_9

    :cond_9
    :goto_8
    move v5, v6

    :goto_9
    if-nez v5, :cond_a

    .line 94
    sget-object v5, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/startapps/crossx/model/UserModel;->getComplement()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "userModel.complement"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v5, v3, v6}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v3

    move-object/from16 v22, v3

    goto :goto_a

    :cond_a
    const/16 v22, 0x0

    .line 97
    :goto_a
    sget-object v3, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    const-string v5, "1"

    sget-object v6, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v3, v5, v6}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v25

    .line 99
    iget-object v7, v0, Lcom/startapps/crossx/rest/repository/AuthRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/AuthService;

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    invoke-interface/range {v7 .. v25}, Lcom/startapps/crossx/rest/interfaces/AuthService;->register(Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/MultipartBody$Part;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v2

    .line 105
    new-instance v3, Lcom/startapps/crossx/rest/repository/AuthRepository$register$1;

    invoke-direct {v3, v1, v0}, Lcom/startapps/crossx/rest/repository/AuthRepository$register$1;-><init>(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/rest/repository/AuthRepository;)V

    check-cast v3, Lretrofit2/Callback;

    invoke-interface {v2, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
