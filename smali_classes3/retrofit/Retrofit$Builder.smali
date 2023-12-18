.class public final Lretrofit/Retrofit$Builder;
.super Ljava/lang/Object;
.source "Retrofit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/Retrofit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adapterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lretrofit/CallAdapter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private baseUrl:Lretrofit/BaseUrl;

.field private callbackExecutor:Ljava/util/concurrent/Executor;

.field private client:Lcom/squareup/okhttp/OkHttpClient;

.field private converterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lretrofit/Converter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private validateEagerly:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit/Retrofit$Builder;->converterFactories:Ljava/util/List;

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    .line 290
    iget-object v0, p0, Lretrofit/Retrofit$Builder;->converterFactories:Ljava/util/List;

    new-instance v1, Lretrofit/BuiltInConverters;

    invoke-direct {v1}, Lretrofit/BuiltInConverters;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addCallAdapterFactory(Lretrofit/CallAdapter$Factory;)Lretrofit/Retrofit$Builder;
    .locals 2

    .line 335
    iget-object v0, p0, Lretrofit/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addConverterFactory(Lretrofit/Converter$Factory;)Lretrofit/Retrofit$Builder;
    .locals 2

    .line 327
    iget-object v0, p0, Lretrofit/Retrofit$Builder;->converterFactories:Ljava/util/List;

    const-string v1, "converterFactory == null"

    invoke-static {p1, v1}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public baseUrl(Lcom/squareup/okhttp/HttpUrl;)Lretrofit/Retrofit$Builder;
    .locals 1

    const-string v0, "baseUrl == null"

    .line 311
    invoke-static {p1, v0}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    new-instance v0, Lretrofit/Retrofit$Builder$1;

    invoke-direct {v0, p0, p1}, Lretrofit/Retrofit$Builder$1;-><init>(Lretrofit/Retrofit$Builder;Lcom/squareup/okhttp/HttpUrl;)V

    invoke-virtual {p0, v0}, Lretrofit/Retrofit$Builder;->baseUrl(Lretrofit/BaseUrl;)Lretrofit/Retrofit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public baseUrl(Ljava/lang/String;)Lretrofit/Retrofit$Builder;
    .locals 3

    const-string v0, "baseUrl == null"

    .line 301
    invoke-static {p1, v0}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    invoke-static {p1}, Lcom/squareup/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0, v0}, Lretrofit/Retrofit$Builder;->baseUrl(Lcom/squareup/okhttp/HttpUrl;)Lretrofit/Retrofit$Builder;

    move-result-object p1

    return-object p1

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public baseUrl(Lretrofit/BaseUrl;)Lretrofit/Retrofit$Builder;
    .locals 1

    const-string v0, "baseUrl == null"

    .line 321
    invoke-static {p1, v0}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lretrofit/BaseUrl;

    iput-object p1, p0, Lretrofit/Retrofit$Builder;->baseUrl:Lretrofit/BaseUrl;

    return-object p0
.end method

.method public build()Lretrofit/Retrofit;
    .locals 9

    .line 359
    iget-object v0, p0, Lretrofit/Retrofit$Builder;->baseUrl:Lretrofit/BaseUrl;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lretrofit/Retrofit$Builder;->client:Lcom/squareup/okhttp/OkHttpClient;

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    :cond_0
    move-object v2, v0

    .line 369
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lretrofit/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 370
    invoke-static {}, Lretrofit/Platform;->get()Lretrofit/Platform;

    move-result-object v0

    iget-object v1, p0, Lretrofit/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lretrofit/Platform;->defaultCallAdapterFactory(Ljava/util/concurrent/Executor;)Lretrofit/CallAdapter$Factory;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lretrofit/Retrofit$Builder;->converterFactories:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 375
    new-instance v0, Lretrofit/Retrofit;

    iget-object v3, p0, Lretrofit/Retrofit$Builder;->baseUrl:Lretrofit/BaseUrl;

    iget-object v6, p0, Lretrofit/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-boolean v7, p0, Lretrofit/Retrofit$Builder;->validateEagerly:Z

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lretrofit/Retrofit;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lretrofit/BaseUrl;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;ZLretrofit/Retrofit$1;)V

    return-object v0

    .line 360
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base URL required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callbackExecutor(Ljava/util/concurrent/Executor;)Lretrofit/Retrofit$Builder;
    .locals 1

    const-string v0, "callbackExecutor == null"

    .line 344
    invoke-static {p1, v0}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lretrofit/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public client(Lcom/squareup/okhttp/OkHttpClient;)Lretrofit/Retrofit$Builder;
    .locals 1

    const-string v0, "client == null"

    .line 295
    invoke-static {p1, v0}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/okhttp/OkHttpClient;

    iput-object p1, p0, Lretrofit/Retrofit$Builder;->client:Lcom/squareup/okhttp/OkHttpClient;

    return-object p0
.end method

.method public validateEagerly()Lretrofit/Retrofit$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 353
    iput-boolean v0, p0, Lretrofit/Retrofit$Builder;->validateEagerly:Z

    return-object p0
.end method
