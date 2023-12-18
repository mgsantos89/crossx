.class final Lretrofit/BuiltInConverters;
.super Lretrofit/Converter$Factory;
.source "BuiltInConverters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/BuiltInConverters$OkHttpResponseBodyConverter;,
        Lretrofit/BuiltInConverters$OkHttpRequestBodyConverter;,
        Lretrofit/BuiltInConverters$VoidConverter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lretrofit/Converter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public fromResponseBody(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit/Converter<",
            "Lcom/squareup/okhttp/ResponseBody;",
            "*>;"
        }
    .end annotation

    .line 30
    const-class v0, Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-class p1, Lretrofit/http/Streaming;

    invoke-static {p2, p1}, Lretrofit/Utils;->isAnnotationPresent([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p1

    .line 32
    new-instance p2, Lretrofit/BuiltInConverters$OkHttpResponseBodyConverter;

    invoke-direct {p2, p1}, Lretrofit/BuiltInConverters$OkHttpResponseBodyConverter;-><init>(Z)V

    return-object p2

    .line 34
    :cond_0
    const-class p2, Ljava/lang/Void;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 35
    new-instance p1, Lretrofit/BuiltInConverters$VoidConverter;

    invoke-direct {p1}, Lretrofit/BuiltInConverters$VoidConverter;-><init>()V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public toRequestBody(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit/Converter<",
            "*",
            "Lcom/squareup/okhttp/RequestBody;",
            ">;"
        }
    .end annotation

    .line 41
    instance-of p2, p1, Ljava/lang/Class;

    if-eqz p2, :cond_0

    const-class p2, Lcom/squareup/okhttp/RequestBody;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    new-instance p1, Lretrofit/BuiltInConverters$OkHttpRequestBodyConverter;

    invoke-direct {p1}, Lretrofit/BuiltInConverters$OkHttpRequestBodyConverter;-><init>()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
