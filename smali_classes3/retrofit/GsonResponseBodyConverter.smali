.class final Lretrofit/GsonResponseBodyConverter;
.super Ljava/lang/Object;
.source "GsonResponseBodyConverter.java"

# interfaces
.implements Lretrofit/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit/Converter<",
        "Lcom/squareup/okhttp/ResponseBody;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lretrofit/GsonResponseBodyConverter;->gson:Lcom/google/gson/Gson;

    .line 30
    iput-object p2, p0, Lretrofit/GsonResponseBodyConverter;->type:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public convert(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/ResponseBody;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object p1

    .line 36
    :try_start_0
    iget-object v0, p0, Lretrofit/GsonResponseBodyConverter;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lretrofit/GsonResponseBodyConverter;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {p1}, Lretrofit/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lretrofit/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {p0, p1}, Lretrofit/GsonResponseBodyConverter;->convert(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
