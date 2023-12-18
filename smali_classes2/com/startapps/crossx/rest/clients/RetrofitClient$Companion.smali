.class public final Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;
.super Ljava/lang/Object;
.source "RetrofitClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/rest/clients/RetrofitClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRetrofitClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetrofitClient.kt\ncom/startapps/crossx/rest/clients/RetrofitClient$Companion\n+ 2 OkHttpClient.kt\nokhttp3/OkHttpClient$Builder\n*L\n1#1,59:1\n563#2:60\n*S KotlinDebug\n*F\n+ 1 RetrofitClient.kt\ncom/startapps/crossx/rest/clients/RetrofitClient$Companion\n*L\n19#1:60\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0005\u001a\u0002H\u0006\"\u0004\u0008\u0000\u0010\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;",
        "",
        "()V",
        "retrofit",
        "Lretrofit2/Retrofit;",
        "createService",
        "S",
        "serviceClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Ljava/lang/Object;",
        "getRetrofitInstance",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;-><init>()V

    return-void
.end method

.method private final getRetrofitInstance()Lretrofit2/Retrofit;
    .locals 3

    .line 17
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 60
    new-instance v1, Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion$getRetrofitInstance$$inlined$-addInterceptor$1;

    invoke-direct {v1}, Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion$getRetrofitInstance$$inlined$-addInterceptor$1;-><init>()V

    check-cast v1, Lokhttp3/Interceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 43
    invoke-static {}, Lcom/startapps/crossx/rest/clients/RetrofitClient;->access$getRetrofit$cp()Lretrofit2/Retrofit;

    move-result-object v1

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v2, "https://api-v2.appcrossx.com/api/1.0/app/"

    .line 45
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 46
    invoke-static {}, Lretrofit2/converter/scalars/ScalarsConverterFactory;->create()Lretrofit2/converter/scalars/ScalarsConverterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/Converter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 47
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/Converter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 48
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "Builder()\n              \u2026                 .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {v0}, Lcom/startapps/crossx/rest/clients/RetrofitClient;->access$setRetrofit$cp(Lretrofit2/Retrofit;)V

    .line 52
    :cond_0
    invoke-static {}, Lcom/startapps/crossx/rest/clients/RetrofitClient;->access$getRetrofit$cp()Lretrofit2/Retrofit;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "retrofit"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final createService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    const-string v0, "serviceClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;->getRetrofitInstance()Lretrofit2/Retrofit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
