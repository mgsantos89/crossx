.class final Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;
.super Lcom/squareup/okhttp/ResponseBody;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExceptionCatchingRequestBody"
.end annotation


# instance fields
.field private final delegate:Lcom/squareup/okhttp/ResponseBody;

.field private thrownException:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/ResponseBody;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;-><init>()V

    .line 193
    iput-object p1, p0, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lcom/squareup/okhttp/ResponseBody;

    return-void
.end method

.method static synthetic access$202(Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 188
    iput-object p1, p0, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->thrownException:Ljava/io/IOException;

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->close()V

    return-void
.end method

.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    :try_start_0
    iget-object v0, p0, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 204
    iput-object v0, p0, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->thrownException:Ljava/io/IOException;

    .line 205
    throw v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .line 197
    iget-object v0, p0, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    :try_start_0
    iget-object v0, p0, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    new-instance v1, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody$1;

    invoke-direct {v1, p0, v0}, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody$1;-><init>(Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;Lokio/Source;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 214
    iput-object v0, p0, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->thrownException:Ljava/io/IOException;

    .line 215
    throw v0
.end method

.method throwIfCaught()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->thrownException:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    throw v0
.end method
