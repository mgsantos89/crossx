.class public Lcom/startapps/crossx/rest/clients/BaseClient;
.super Ljava/lang/Object;
.source "BaseClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static retrofit:Lretrofit/Retrofit;


# instance fields
.field protected service:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/startapps/crossx/rest/clients/BaseClient;->createClient()V

    .line 35
    sget-object v0, Lcom/startapps/crossx/rest/clients/BaseClient;->retrofit:Lretrofit/Retrofit;

    invoke-virtual {v0, p1}, Lretrofit/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/rest/clients/BaseClient;->service:Ljava/lang/Object;

    return-void
.end method

.method private getApiToken()Ljava/lang/String;
    .locals 2

    .line 73
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

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getUserToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method protected createClient()V
    .locals 6

    .line 40
    new-instance v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;-><init>()V

    .line 41
    sget-object v1, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;->NONE:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->setLevel(Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;)V

    .line 43
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v2, Ljava/util/List;

    new-instance v3, Lcom/startapps/crossx/rest/serializer/DataSerializer;

    invoke-direct {v3}, Lcom/startapps/crossx/rest/serializer/DataSerializer;-><init>()V

    .line 44
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    const-class v2, Lcom/startapps/crossx/model/CommentModel;

    new-instance v3, Lcom/startapps/crossx/rest/serializer/DataSerializer;

    invoke-direct {v3}, Lcom/startapps/crossx/rest/serializer/DataSerializer;-><init>()V

    .line 45
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    const-class v2, Lcom/startapps/crossx/model/BoxModel;

    new-instance v3, Lcom/startapps/crossx/rest/serializer/DataSerializer;

    invoke-direct {v3}, Lcom/startapps/crossx/rest/serializer/DataSerializer;-><init>()V

    .line 46
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    const-class v2, Lcom/startapps/crossx/model/UserModel;

    new-instance v3, Lcom/startapps/crossx/rest/serializer/DataSerializer;

    invoke-direct {v3}, Lcom/startapps/crossx/rest/serializer/DataSerializer;-><init>()V

    .line 47
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    const-class v2, Lcom/startapps/crossx/model/UserCreditCard;

    new-instance v3, Lcom/startapps/crossx/rest/serializer/DataSerializer;

    invoke-direct {v3}, Lcom/startapps/crossx/rest/serializer/DataSerializer;-><init>()V

    .line 48
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    const-class v2, Lcom/startapps/crossx/model/UserMembership;

    new-instance v3, Lcom/startapps/crossx/rest/serializer/DataSerializer;

    invoke-direct {v3}, Lcom/startapps/crossx/rest/serializer/DataSerializer;-><init>()V

    .line 49
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    const-class v2, Lcom/startapps/crossx/model/Box;

    new-instance v3, Lcom/startapps/crossx/rest/serializer/DataSerializer;

    invoke-direct {v3}, Lcom/startapps/crossx/rest/serializer/DataSerializer;-><init>()V

    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    const-class v2, Lcom/startapps/crossx/model/Membership;

    new-instance v3, Lcom/startapps/crossx/rest/serializer/DataSerializer;

    invoke-direct {v3}, Lcom/startapps/crossx/rest/serializer/DataSerializer;-><init>()V

    .line 51
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    const-class v2, Lcom/startapps/crossx/model/UserMembershipRecurrence;

    new-instance v3, Lcom/startapps/crossx/rest/serializer/DataSerializer;

    invoke-direct {v3}, Lcom/startapps/crossx/rest/serializer/DataSerializer;-><init>()V

    .line 52
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    const-class v2, Lcom/startapps/crossx/model/Payment;

    new-instance v3, Lcom/startapps/crossx/rest/serializer/DataSerializer;

    invoke-direct {v3}, Lcom/startapps/crossx/rest/serializer/DataSerializer;-><init>()V

    .line 53
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    const-class v2, Lcom/startapps/crossx/model/Checkin;

    new-instance v3, Lcom/startapps/crossx/rest/serializer/DataSerializer;

    invoke-direct {v3}, Lcom/startapps/crossx/rest/serializer/DataSerializer;-><init>()V

    .line 54
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    const-class v2, Lcom/startapps/crossx/model/WorkoutVideoModel;

    new-instance v3, Lcom/startapps/crossx/rest/serializer/DataSerializer;

    invoke-direct {v3}, Lcom/startapps/crossx/rest/serializer/DataSerializer;-><init>()V

    .line 55
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 58
    new-instance v2, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v2}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 59
    invoke-virtual {v2}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/startapps/crossx/rest/interceptor/SessionRequestInterceptor;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/clients/BaseClient;->getApiToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/startapps/crossx/rest/interceptor/SessionRequestInterceptor;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v2}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v3, v4, v0}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 62
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v0}, Lcom/squareup/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 64
    new-instance v0, Lretrofit/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit/Retrofit$Builder;-><init>()V

    const-string v3, "https://api.appcrossx.com"

    .line 65
    invoke-virtual {v0, v3}, Lretrofit/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit/Retrofit$Builder;

    move-result-object v0

    .line 66
    invoke-static {v1}, Lretrofit/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit/Retrofit$Builder;->addConverterFactory(Lretrofit/Converter$Factory;)Lretrofit/Retrofit$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v2}, Lretrofit/Retrofit$Builder;->client(Lcom/squareup/okhttp/OkHttpClient;)Lretrofit/Retrofit$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lretrofit/Retrofit$Builder;->build()Lretrofit/Retrofit;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/rest/clients/BaseClient;->retrofit:Lretrofit/Retrofit;

    return-void
.end method
