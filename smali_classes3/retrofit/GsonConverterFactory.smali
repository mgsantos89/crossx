.class public final Lretrofit/GsonConverterFactory;
.super Lretrofit/Converter$Factory;
.source "GsonConverterFactory.java"


# instance fields
.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method private constructor <init>(Lcom/google/gson/Gson;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lretrofit/Converter$Factory;-><init>()V

    if-eqz p1, :cond_0

    .line 53
    iput-object p1, p0, Lretrofit/GsonConverterFactory;->gson:Lcom/google/gson/Gson;

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "gson == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create()Lretrofit/GsonConverterFactory;
    .locals 1

    .line 38
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v0}, Lretrofit/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit/GsonConverterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/google/gson/Gson;)Lretrofit/GsonConverterFactory;
    .locals 1

    .line 46
    new-instance v0, Lretrofit/GsonConverterFactory;

    invoke-direct {v0, p0}, Lretrofit/GsonConverterFactory;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
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

    .line 58
    new-instance p2, Lretrofit/GsonResponseBodyConverter;

    iget-object v0, p0, Lretrofit/GsonConverterFactory;->gson:Lcom/google/gson/Gson;

    invoke-direct {p2, v0, p1}, Lretrofit/GsonResponseBodyConverter;-><init>(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)V

    return-object p2
.end method

.method public toRequestBody(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;
    .locals 1
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

    .line 62
    new-instance p2, Lretrofit/GsonRequestBodyConverter;

    iget-object v0, p0, Lretrofit/GsonConverterFactory;->gson:Lcom/google/gson/Gson;

    invoke-direct {p2, v0, p1}, Lretrofit/GsonRequestBodyConverter;-><init>(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)V

    return-object p2
.end method
