.class public final Lcom/startapps/crossx/rest/repository/UserRepository;
.super Ljava/lang/Object;
.source "UserRepository.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserRepository.kt\ncom/startapps/crossx/rest/repository/UserRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,159:1\n1851#2,2:160\n*S KotlinDebug\n*F\n+ 1 UserRepository.kt\ncom/startapps/crossx/rest/repository/UserRepository\n*L\n72#1:160,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J@\u0010\t\u001a\u00020\n28\u0010\u000b\u001a4\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0015\u0012\u0013\u0018\u00010\u0011\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\n0\u000cJ\u001c\u0010\u0013\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0016\u001a\u00020\u0017J\u001c\u0010\u0018\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0019\u001a\u00020\u0015R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/repository/UserRepository;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "mRemote",
        "Lcom/startapps/crossx/rest/interfaces/UserService;",
        "deleteAccount",
        "",
        "listener",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "isSuccess",
        "",
        "message",
        "updateImageUser",
        "Lcom/startapps/crossx/rest/listener/ApiListener;",
        "Lcom/startapps/crossx/model/UserModel;",
        "avatar",
        "Ljava/io/File;",
        "updateUser",
        "userModel",
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

.field private final mRemote:Lcom/startapps/crossx/rest/interfaces/UserService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/rest/repository/UserRepository;->context:Landroid/content/Context;

    .line 23
    sget-object p1, Lcom/startapps/crossx/rest/clients/RetrofitClient;->Companion:Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;

    const-class v0, Lcom/startapps/crossx/rest/interfaces/UserService;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;->createService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/rest/interfaces/UserService;

    iput-object p1, p0, Lcom/startapps/crossx/rest/repository/UserRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/UserService;

    return-void
.end method


# virtual methods
.method public final deleteAccount(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/startapps/crossx/rest/repository/UserRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/UserService;

    invoke-interface {v0}, Lcom/startapps/crossx/rest/interfaces/UserService;->deleteAccount()Lretrofit2/Call;

    move-result-object v0

    .line 115
    new-instance v1, Lcom/startapps/crossx/rest/repository/UserRepository$deleteAccount$1;

    invoke-direct {v1, p1, p0}, Lcom/startapps/crossx/rest/repository/UserRepository$deleteAccount$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/startapps/crossx/rest/repository/UserRepository;)V

    check-cast v1, Lretrofit2/Callback;

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/startapps/crossx/rest/repository/UserRepository;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final updateImageUser(Lcom/startapps/crossx/rest/listener/ApiListener;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v2, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v1, p2, v2}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 133
    sget-object v2, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v0, p2, v1}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p2

    .line 135
    iget-object v0, p0, Lcom/startapps/crossx/rest/repository/UserRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/UserService;

    invoke-interface {v0, p2}, Lcom/startapps/crossx/rest/interfaces/UserService;->updateUserImage(Lokhttp3/MultipartBody$Part;)Lretrofit2/Call;

    move-result-object p2

    .line 136
    new-instance v0, Lcom/startapps/crossx/rest/repository/UserRepository$updateImageUser$1;

    invoke-direct {v0, p1, p0}, Lcom/startapps/crossx/rest/repository/UserRepository$updateImageUser$1;-><init>(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/rest/repository/UserRepository;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p2, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final updateUser(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/model/UserModel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;",
            "Lcom/startapps/crossx/model/UserModel;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "yyyy-MM-dd"

    .line 27
    invoke-virtual {p2, v1}, Lcom/startapps/crossx/model/UserModel;->getBirthdayFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userModel.getBirthdayFor\u2026ateUtility.MASK_TYPE_TWO)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "name"

    .line 28
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "last_name"

    .line 29
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "email"

    .line 30
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getGender()Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/model/enuns/Gender;->getGender()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gender"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    const-string v2, "birthday"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getCity()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v3

    :goto_2
    if-eqz v1, :cond_4

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getCity()Ljava/lang/String;

    move-result-object v1

    :goto_3
    const-string v2, "city"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getWeight()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v4

    goto :goto_5

    :cond_6
    :goto_4
    move v1, v3

    :goto_5
    if-eqz v1, :cond_7

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_6

    :cond_7
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getWeight()Ljava/lang/String;

    move-result-object v1

    :goto_6
    const-string/jumbo v2, "weight"

    .line 34
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getCpf()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    move v1, v4

    goto :goto_8

    :cond_9
    :goto_7
    move v1, v3

    :goto_8
    if-eqz v1, :cond_a

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_9

    :cond_a
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getCpf()Ljava/lang/String;

    move-result-object v1

    :goto_9
    const-string v2, "cpf"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getRg()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_a

    :cond_b
    move v1, v4

    goto :goto_b

    :cond_c
    :goto_a
    move v1, v3

    :goto_b
    if-eqz v1, :cond_d

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_c

    :cond_d
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getRg()Ljava/lang/String;

    move-result-object v1

    :goto_c
    const-string v2, "rg"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_d

    :cond_e
    move v1, v4

    goto :goto_e

    :cond_f
    :goto_d
    move v1, v3

    :goto_e
    if-eqz v1, :cond_10

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_f

    :cond_10
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v1

    :goto_f
    const-string v2, "nickname"

    .line 40
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getZipcode()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_10

    :cond_11
    move v1, v4

    goto :goto_11

    :cond_12
    :goto_10
    move v1, v3

    :goto_11
    if-eqz v1, :cond_13

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_12

    :cond_13
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getZipcode()Ljava/lang/String;

    move-result-object v1

    :goto_12
    const-string/jumbo v2, "zipcode"

    .line 44
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getAddress()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_13

    :cond_14
    move v1, v4

    goto :goto_14

    :cond_15
    :goto_13
    move v1, v3

    :goto_14
    if-eqz v1, :cond_16

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_15

    :cond_16
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getAddress()Ljava/lang/String;

    move-result-object v1

    :goto_15
    const-string v2, "address"

    .line 48
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getAddressNumber()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_18

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_17

    goto :goto_16

    :cond_17
    move v1, v4

    goto :goto_17

    :cond_18
    :goto_16
    move v1, v3

    :goto_17
    if-eqz v1, :cond_19

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_18

    :cond_19
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getAddressNumber()Ljava/lang/String;

    move-result-object v1

    :goto_18
    const-string v2, "address_number"

    .line 52
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getComplement()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_19

    :cond_1a
    move v1, v4

    goto :goto_1a

    :cond_1b
    :goto_19
    move v1, v3

    :goto_1a
    if-eqz v1, :cond_1c

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_1b

    :cond_1c
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getComplement()Ljava/lang/String;

    move-result-object v1

    :goto_1b
    const-string v2, "complement"

    .line 56
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getDistrict()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_1c

    :cond_1d
    move v1, v4

    goto :goto_1d

    :cond_1e
    :goto_1c
    move v1, v3

    :goto_1d
    if-eqz v1, :cond_1f

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_1e

    :cond_1f
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getDistrict()Ljava/lang/String;

    move-result-object v1

    :goto_1e
    const-string v2, "district"

    .line 60
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getState()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_20

    goto :goto_1f

    :cond_20
    move v1, v4

    goto :goto_20

    :cond_21
    :goto_1f
    move v1, v3

    :goto_20
    if-eqz v1, :cond_22

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_21

    :cond_22
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getState()Ljava/lang/String;

    move-result-object v1

    :goto_21
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 66
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_23

    goto :goto_22

    :cond_23
    move v3, v4

    :goto_22
    if-nez v3, :cond_24

    const-string v2, "box_id"

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    :cond_24
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 72
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getPhones()Ljava/util/ArrayList;

    move-result-object p2

    const-string/jumbo v2, "userModel.phones"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    .line 160
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_23
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/PhoneModel;

    .line 73
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "ddi"

    .line 74
    invoke-virtual {v2}, Lcom/startapps/crossx/model/PhoneModel;->getDdi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "main"

    .line 75
    invoke-virtual {v2}, Lcom/startapps/crossx/model/PhoneModel;->getMain()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v4, "type"

    .line 76
    invoke-virtual {v2}, Lcom/startapps/crossx/model/PhoneModel;->getType()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "number"

    .line 77
    invoke-virtual {v2}, Lcom/startapps/crossx/model/PhoneModel;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    invoke-virtual {v2}, Lcom/startapps/crossx/model/PhoneModel;->getId()I

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "id"

    .line 80
    invoke-virtual {v2}, Lcom/startapps/crossx/model/PhoneModel;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    :cond_25
    invoke-virtual {v2}, Lcom/startapps/crossx/model/PhoneModel;->getUser_id()I

    move-result v4

    if-eqz v4, :cond_26

    const-string/jumbo v4, "user_id"

    .line 83
    invoke-virtual {v2}, Lcom/startapps/crossx/model/PhoneModel;->getUser_id()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    :cond_26
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_23

    :cond_27
    const-string p2, "phones"

    .line 87
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    iget-object p2, p0, Lcom/startapps/crossx/rest/repository/UserRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/UserService;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "json.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/startapps/crossx/rest/interfaces/UserService;->update(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p2

    .line 90
    new-instance v0, Lcom/startapps/crossx/rest/repository/UserRepository$updateUser$3;

    invoke-direct {v0, p1, p0}, Lcom/startapps/crossx/rest/repository/UserRepository$updateUser$3;-><init>(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/rest/repository/UserRepository;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p2, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
