.class public final Lcom/startapps/crossx/rest/error/CrossXApiError$Companion;
.super Ljava/lang/Object;
.source "CrossXApiError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/rest/error/CrossXApiError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u001a\u0010\n\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u000bJ\"\u0010\u000c\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u00072\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/error/CrossXApiError$Companion;",
        "",
        "()V",
        "getErrorMessage",
        "",
        "M",
        "response",
        "Lretrofit/Response;",
        "retrofit",
        "Lretrofit/Retrofit;",
        "getErrorMessage2",
        "Lretrofit2/Response;",
        "getOldErrorMessage",
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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/rest/error/CrossXApiError$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit/Response<",
            "TM;>;",
            "Lretrofit/Retrofit;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "Erro interno do servidor"

    const-string v1, "response"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "retrofit"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    :try_start_0
    const-class v1, Lcom/startapps/crossx/model/ErrorResponse;

    check-cast v1, Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/annotation/Annotation;

    invoke-virtual {p2, v1, v3}, Lretrofit/Retrofit;->responseConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;

    move-result-object p2

    const-string v1, "retrofit.responseConvert\u2026ss.java, arrayOfNulls(0))"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lretrofit/Response;->errorBody()Lcom/squareup/okhttp/ResponseBody;

    move-result-object p1

    invoke-interface {p2, p1}, Lretrofit/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/ErrorResponse;

    .line 20
    invoke-virtual {p1}, Lcom/startapps/crossx/model/ErrorResponse;->getErrors()Ljava/util/HashMap;

    move-result-object p2

    .line 21
    move-object v1, p2

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 22
    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "value[0]"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    return-object v0

    .line 26
    :cond_3
    invoke-virtual {p1}, Lcom/startapps/crossx/model/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public final getErrorMessage2(Lretrofit2/Response;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Response<",
            "TM;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "Erro interno do servidor"

    const-string v1, "response"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    :try_start_0
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    .line 37
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x193

    const-string v3, "Gson().fromJson(response\u2026rrorResponse::class.java)"

    if-eq v1, v2, :cond_7

    const/16 v2, 0x194

    if-eq v1, v2, :cond_6

    const/16 v2, 0x19d

    if-eq v1, v2, :cond_5

    const/16 v2, 0x1a6

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 39
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object p1

    const-class v2, Lcom/startapps/crossx/model/ErrorResponse;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/startapps/crossx/model/ErrorResponse;

    .line 40
    invoke-virtual {p1}, Lcom/startapps/crossx/model/ErrorResponse;->getErrors()Ljava/util/HashMap;

    move-result-object v1

    .line 41
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    .line 42
    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v1, "value[0]"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_3
    :goto_2
    return-object v0

    .line 46
    :cond_4
    invoke-virtual {p1}, Lcom/startapps/crossx/model/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p1, "O tamanho da imagem \u00e9 maior que o esperado."

    return-object p1

    :cond_6
    const-string p1, "P\u00e1gina n\u00e3o encontrada."

    return-object p1

    .line 50
    :cond_7
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object p1

    const-class v2, Lcom/startapps/crossx/model/ErrorResponse;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/startapps/crossx/model/ErrorResponse;

    .line 51
    invoke-virtual {p1}, Lcom/startapps/crossx/model/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    return-object v0
.end method

.method public final getOldErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit/Response<",
            "TM;>;",
            "Lretrofit/Retrofit;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retrofit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const-class v0, Lcom/startapps/crossx/model/ErrorResponseOld;

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/annotation/Annotation;

    invoke-virtual {p2, v0, v2}, Lretrofit/Retrofit;->responseConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;

    move-result-object p2

    const-string v0, "retrofit.responseConvert\u2026ss.java, arrayOfNulls(0))"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lretrofit/Response;->errorBody()Lcom/squareup/okhttp/ResponseBody;

    move-result-object p1

    invoke-interface {p2, p1}, Lretrofit/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/ErrorResponseOld;

    .line 69
    invoke-virtual {p1}, Lcom/startapps/crossx/model/ErrorResponseOld;->getErrors()Ljava/util/ArrayList;

    move-result-object p2

    .line 70
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_3

    .line 71
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/ErrorOld;

    .line 72
    invoke-virtual {p1}, Lcom/startapps/crossx/model/ErrorOld;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1

    .line 75
    :cond_3
    invoke-virtual {p1}, Lcom/startapps/crossx/model/ErrorResponseOld;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
