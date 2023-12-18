.class public Lcom/startapps/crossx/rest/error/util/ErrorUtils;
.super Ljava/lang/Object;
.source "ErrorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/rest/error/util/ErrorUtils$ErrorResponse;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseError(Ljava/lang/Throwable;)Lcom/startapps/crossx/rest/error/CrossXError;
    .locals 3

    .line 71
    new-instance v0, Lcom/startapps/crossx/rest/error/CrossXError;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/error/CrossXError;-><init>()V

    .line 73
    instance-of v1, p0, Lcz/msebera/android/httpclient/HttpException;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 74
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/rest/error/CrossXError;->setCodeStatus(I)V

    .line 75
    invoke-static {}, Lcom/startapps/crossx/view/CrossXApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120193

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/rest/error/CrossXError;->setTitle(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/startapps/crossx/view/CrossXApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120192

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/rest/error/CrossXError;->setMessage(Ljava/lang/String;)V

    .line 78
    :cond_0
    instance-of p0, p0, Ljava/io/IOException;

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 79
    invoke-virtual {v0, p0}, Lcom/startapps/crossx/rest/error/CrossXError;->setCodeStatus(I)V

    .line 80
    invoke-static {}, Lcom/startapps/crossx/view/CrossXApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f120196

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/startapps/crossx/rest/error/CrossXError;->setTitle(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/startapps/crossx/view/CrossXApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f120195

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/startapps/crossx/rest/error/CrossXError;->setMessage(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static parseError(Lretrofit/Response;Lretrofit/Retrofit;)Lcom/startapps/crossx/rest/error/ResponseError;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "*>;",
            "Lretrofit/Retrofit;",
            ")",
            "Lcom/startapps/crossx/rest/error/ResponseError;"
        }
    .end annotation

    .line 27
    const-class v0, Lcom/startapps/crossx/rest/error/ResponseError;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    invoke-virtual {p1, v0, v1}, Lretrofit/Retrofit;->responseConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;

    move-result-object p1

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lretrofit/Response;->errorBody()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    invoke-interface {p1, v0}, Lretrofit/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/rest/error/ResponseError;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    new-instance p1, Lcom/startapps/crossx/rest/error/ResponseError;

    invoke-direct {p1}, Lcom/startapps/crossx/rest/error/ResponseError;-><init>()V

    const-string v0, ""

    .line 33
    invoke-virtual {p1, v0}, Lcom/startapps/crossx/rest/error/ResponseError;->setError(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lretrofit/Response;->code()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/startapps/crossx/rest/error/ResponseError;->setCode(I)V

    :goto_0
    return-object p1
.end method

.method public static parseErrorBySimpleCallback(Lretrofit/Response;Lretrofit/Retrofit;)Lcom/startapps/crossx/rest/error/CrossXError;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "*>;",
            "Lretrofit/Retrofit;",
            ")",
            "Lcom/startapps/crossx/rest/error/CrossXError;"
        }
    .end annotation

    .line 40
    const-class v0, Lcom/startapps/crossx/rest/error/util/ErrorUtils$ErrorResponse;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    invoke-virtual {p1, v0, v1}, Lretrofit/Retrofit;->responseConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;

    move-result-object p1

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lretrofit/Response;->errorBody()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    invoke-interface {p1, v0}, Lretrofit/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/rest/error/util/ErrorUtils$ErrorResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    const-string v0, ""

    if-eqz p1, :cond_0

    .line 50
    iget-object v1, p1, Lcom/startapps/crossx/rest/error/util/ErrorUtils$ErrorResponse;->erros:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 51
    iget-object p1, p1, Lcom/startapps/crossx/rest/error/util/ErrorUtils$ErrorResponse;->erros:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 56
    :cond_0
    new-instance p1, Lcom/startapps/crossx/rest/error/CrossXError;

    invoke-direct {p1}, Lcom/startapps/crossx/rest/error/CrossXError;-><init>()V

    .line 57
    invoke-virtual {p0}, Lretrofit/Response;->code()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/startapps/crossx/rest/error/CrossXError;->setCodeStatus(I)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    .line 59
    invoke-virtual {p1, p0}, Lcom/startapps/crossx/rest/error/CrossXError;->setCodeStatus(I)V

    .line 60
    invoke-static {}, Lcom/startapps/crossx/view/CrossXApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f120193

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/startapps/crossx/rest/error/CrossXError;->setTitle(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/startapps/crossx/view/CrossXApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f120192

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/startapps/crossx/rest/error/CrossXError;->setMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 63
    :cond_1
    invoke-static {}, Lcom/startapps/crossx/view/CrossXApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1201e5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/startapps/crossx/rest/error/CrossXError;->setTitle(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, v0}, Lcom/startapps/crossx/rest/error/CrossXError;->setMessage(Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method
