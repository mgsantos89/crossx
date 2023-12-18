.class public Lcom/startapps/crossx/rest/clients/ApiClient;
.super Ljava/lang/Object;
.source "ApiClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/rest/clients/ApiClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u0010*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001\u0010B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000c\u001a\u00020\rH\u0004J\u000b\u0010\u000e\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u000fR\u0014\u0010\u0006\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00028\u00008\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/clients/ApiClient;",
        "T",
        "",
        "cls",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)V",
        "apiToken",
        "",
        "getApiToken",
        "()Ljava/lang/String;",
        "service",
        "Ljava/lang/Object;",
        "createClient",
        "",
        "serviceCreate",
        "()Ljava/lang/Object;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/startapps/crossx/rest/clients/ApiClient$Companion;

.field private static retrofit:Lretrofit/Retrofit;


# instance fields
.field protected service:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/startapps/crossx/rest/clients/ApiClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapps/crossx/rest/clients/ApiClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/startapps/crossx/rest/clients/ApiClient;->Companion:Lcom/startapps/crossx/rest/clients/ApiClient$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0}, Lcom/startapps/crossx/rest/clients/ApiClient;->createClient()V

    .line 47
    sget-object v0, Lcom/startapps/crossx/rest/clients/ApiClient;->retrofit:Lretrofit/Retrofit;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lretrofit/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/rest/clients/ApiClient;->service:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getRetrofit$cp()Lretrofit/Retrofit;
    .locals 1

    .line 15
    sget-object v0, Lcom/startapps/crossx/rest/clients/ApiClient;->retrofit:Lretrofit/Retrofit;

    return-object v0
.end method

.method public static final synthetic access$setRetrofit$cp(Lretrofit/Retrofit;)V
    .locals 0

    .line 15
    sput-object p0, Lcom/startapps/crossx/rest/clients/ApiClient;->retrofit:Lretrofit/Retrofit;

    return-void
.end method

.method private final getApiToken()Ljava/lang/String;
    .locals 2

    .line 37
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getUserToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getUserToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v0, "getInstance().userToken"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method protected final createClient()V
    .locals 10

    .line 20
    new-instance v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;-><init>()V

    .line 21
    sget-object v1, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;->NONE:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->setLevel(Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;)V

    .line 22
    new-instance v1, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v1}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 23
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 24
    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v2

    new-instance v9, Lcom/startapps/crossx/rest/interceptor/ApiRequestInterceptor;

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapps/crossx/model/UserModel;->getEmail()Ljava/lang/String;

    move-result-object v4

    const-string v3, "getInstance().currentUser.email"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/startapps/crossx/rest/clients/ApiClient;->getApiToken()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/startapps/crossx/rest/interceptor/ApiRequestInterceptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v0, Lretrofit/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit/Retrofit$Builder;-><init>()V

    const-string v2, "https://api.appcrossx.com/v3/"

    .line 28
    invoke-virtual {v0, v2}, Lretrofit/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit/Retrofit$Builder;

    move-result-object v0

    .line 29
    invoke-static {}, Lretrofit/GsonConverterFactory;->create()Lretrofit/GsonConverterFactory;

    move-result-object v2

    check-cast v2, Lretrofit/Converter$Factory;

    invoke-virtual {v0, v2}, Lretrofit/Retrofit$Builder;->addConverterFactory(Lretrofit/Converter$Factory;)Lretrofit/Retrofit$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0, v1}, Lretrofit/Retrofit$Builder;->client(Lcom/squareup/okhttp/OkHttpClient;)Lretrofit/Retrofit$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lretrofit/Retrofit$Builder;->build()Lretrofit/Retrofit;

    move-result-object v0

    .line 27
    sput-object v0, Lcom/startapps/crossx/rest/clients/ApiClient;->retrofit:Lretrofit/Retrofit;

    return-void
.end method

.method public final serviceCreate()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/ApiClient;->service:Ljava/lang/Object;

    return-object v0
.end method
