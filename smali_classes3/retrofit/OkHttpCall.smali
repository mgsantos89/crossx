.class final Lretrofit/OkHttpCall;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lretrofit/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;,
        Lretrofit/OkHttpCall$NoContentResponseBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit/Call<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final args:[Ljava/lang/Object;

.field private volatile canceled:Z

.field private executed:Z

.field private volatile rawCall:Lcom/squareup/okhttp/Call;

.field private final requestFactory:Lretrofit/RequestFactory;

.field private final responseConverter:Lretrofit/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Converter<",
            "Lcom/squareup/okhttp/ResponseBody;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final retrofit:Lretrofit/Retrofit;


# direct methods
.method constructor <init>(Lretrofit/Retrofit;Lretrofit/RequestFactory;Lretrofit/Converter;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Retrofit;",
            "Lretrofit/RequestFactory;",
            "Lretrofit/Converter<",
            "Lcom/squareup/okhttp/ResponseBody;",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lretrofit/OkHttpCall;->retrofit:Lretrofit/Retrofit;

    .line 42
    iput-object p2, p0, Lretrofit/OkHttpCall;->requestFactory:Lretrofit/RequestFactory;

    .line 43
    iput-object p3, p0, Lretrofit/OkHttpCall;->responseConverter:Lretrofit/Converter;

    .line 44
    iput-object p4, p0, Lretrofit/OkHttpCall;->args:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lretrofit/OkHttpCall;)Lretrofit/Retrofit;
    .locals 0

    .line 29
    iget-object p0, p0, Lretrofit/OkHttpCall;->retrofit:Lretrofit/Retrofit;

    return-object p0
.end method

.method static synthetic access$100(Lretrofit/OkHttpCall;Lcom/squareup/okhttp/Response;)Lretrofit/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lretrofit/OkHttpCall;->parseResponse(Lcom/squareup/okhttp/Response;)Lretrofit/Response;

    move-result-object p0

    return-object p0
.end method

.method private createRawCall()Lcom/squareup/okhttp/Call;
    .locals 3

    .line 120
    iget-object v0, p0, Lretrofit/OkHttpCall;->retrofit:Lretrofit/Retrofit;

    invoke-virtual {v0}, Lretrofit/Retrofit;->client()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    iget-object v1, p0, Lretrofit/OkHttpCall;->requestFactory:Lretrofit/RequestFactory;

    iget-object v2, p0, Lretrofit/OkHttpCall;->args:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lretrofit/RequestFactory;->create([Ljava/lang/Object;)Lcom/squareup/okhttp/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    return-object v0
.end method

.method private parseResponse(Lcom/squareup/okhttp/Response;)Lretrofit/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/Response;",
            ")",
            "Lretrofit/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object p1

    new-instance v1, Lretrofit/OkHttpCall$NoContentResponseBody;

    .line 128
    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lretrofit/OkHttpCall$NoContentResponseBody;-><init>(Lcom/squareup/okhttp/MediaType;J)V

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_3

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    new-instance v1, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;

    invoke-direct {v1, v0}, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;-><init>(Lcom/squareup/okhttp/ResponseBody;)V

    .line 148
    :try_start_0
    iget-object v0, p0, Lretrofit/OkHttpCall;->responseConverter:Lretrofit/Converter;

    invoke-interface {v0, v1}, Lretrofit/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    invoke-static {v0, p1}, Lretrofit/Response;->success(Ljava/lang/Object;Lcom/squareup/okhttp/Response;)Lretrofit/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {v1}, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->throwIfCaught()V

    .line 154
    throw p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 143
    invoke-static {v0, p1}, Lretrofit/Response;->success(Ljava/lang/Object;Lcom/squareup/okhttp/Response;)Lretrofit/Response;

    move-result-object p1

    return-object p1

    .line 135
    :cond_3
    :goto_1
    :try_start_1
    invoke-static {v0}, Lretrofit/Utils;->readBodyToBytesIfNecessary(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/ResponseBody;

    move-result-object v1

    .line 136
    invoke-static {v1, p1}, Lretrofit/Response;->error(Lcom/squareup/okhttp/ResponseBody;Lcom/squareup/okhttp/Response;)Lretrofit/Response;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    invoke-static {v0}, Lretrofit/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lretrofit/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lretrofit/OkHttpCall;->canceled:Z

    .line 160
    iget-object v0, p0, Lretrofit/OkHttpCall;->rawCall:Lcom/squareup/okhttp/Call;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lretrofit/OkHttpCall;->clone()Lretrofit/OkHttpCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lretrofit/Call;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lretrofit/OkHttpCall;->clone()Lretrofit/OkHttpCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lretrofit/OkHttpCall;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/OkHttpCall<",
            "TT;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lretrofit/OkHttpCall;

    iget-object v1, p0, Lretrofit/OkHttpCall;->retrofit:Lretrofit/Retrofit;

    iget-object v2, p0, Lretrofit/OkHttpCall;->requestFactory:Lretrofit/RequestFactory;

    iget-object v3, p0, Lretrofit/OkHttpCall;->responseConverter:Lretrofit/Converter;

    iget-object v4, p0, Lretrofit/OkHttpCall;->args:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lretrofit/OkHttpCall;-><init>(Lretrofit/Retrofit;Lretrofit/RequestFactory;Lretrofit/Converter;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public enqueue(Lretrofit/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-boolean v0, p0, Lretrofit/OkHttpCall;->executed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lretrofit/OkHttpCall;->executed:Z

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    :try_start_1
    invoke-direct {p0}, Lretrofit/OkHttpCall;->createRawCall()Lcom/squareup/okhttp/Call;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    iget-boolean v1, p0, Lretrofit/OkHttpCall;->canceled:Z

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    .line 68
    :cond_0
    iput-object v0, p0, Lretrofit/OkHttpCall;->rawCall:Lcom/squareup/okhttp/Call;

    .line 70
    new-instance v1, Lretrofit/OkHttpCall$1;

    invoke-direct {v1, p0, p1}, Lretrofit/OkHttpCall$1;-><init>(Lretrofit/OkHttpCall;Lretrofit/Callback;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Call;->enqueue(Lcom/squareup/okhttp/Callback;)V

    return-void

    :catchall_0
    move-exception v0

    .line 62
    invoke-interface {p1, v0}, Lretrofit/Callback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    .line 54
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 56
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public execute()Lretrofit/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-boolean v0, p0, Lretrofit/OkHttpCall;->executed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lretrofit/OkHttpCall;->executed:Z

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-direct {p0}, Lretrofit/OkHttpCall;->createRawCall()Lcom/squareup/okhttp/Call;

    move-result-object v0

    .line 111
    iget-boolean v1, p0, Lretrofit/OkHttpCall;->canceled:Z

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    .line 114
    :cond_0
    iput-object v0, p0, Lretrofit/OkHttpCall;->rawCall:Lcom/squareup/okhttp/Call;

    .line 116
    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lretrofit/OkHttpCall;->parseResponse(Lcom/squareup/okhttp/Response;)Lretrofit/Response;

    move-result-object v0

    return-object v0

    .line 106
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 108
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
