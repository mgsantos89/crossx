.class public final Lcom/squareup/okhttp/internal/http/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSource;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final ON_IDLE_CLOSE:I = 0x2

.field private static final ON_IDLE_HOLD:I = 0x0

.field private static final ON_IDLE_POOL:I = 0x1

.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field private final connection:Lcom/squareup/okhttp/Connection;

.field private onIdle:I

.field private final pool:Lcom/squareup/okhttp/ConnectionPool;

.field private final sink:Lokio/BufferedSink;

.field private final socket:Ljava/net/Socket;

.field private final source:Lokio/BufferedSource;

.field private state:I


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 83
    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 87
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    .line 88
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    .line 89
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    .line 90
    invoke-static {p3}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    .line 91
    invoke-static {p3}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    return-void
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lokio/BufferedSink;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    return-object p0
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/internal/http/HttpConnection;Lokio/ForwardingTimeout;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/HttpConnection;->detachTimeout(Lokio/ForwardingTimeout;)V

    return-void
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/internal/http/HttpConnection;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    return p0
.end method

.method static synthetic access$502(Lcom/squareup/okhttp/internal/http/HttpConnection;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    return p1
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lokio/BufferedSource;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    return-object p0
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/http/HttpConnection;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    return p0
.end method

.method static synthetic access$702(Lcom/squareup/okhttp/internal/http/HttpConnection;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    return p1
.end method

.method static synthetic access$800(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lcom/squareup/okhttp/ConnectionPool;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    return-object p0
.end method

.method static synthetic access$900(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lcom/squareup/okhttp/Connection;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    return-object p0
.end method

.method private detachTimeout(Lokio/ForwardingTimeout;)V
    .locals 2

    .line 275
    invoke-virtual {p1}, Lokio/ForwardingTimeout;->delegate()Lokio/Timeout;

    move-result-object v0

    .line 276
    sget-object v1, Lokio/Timeout;->NONE:Lokio/Timeout;

    invoke-virtual {p1, v1}, Lokio/ForwardingTimeout;->setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;

    .line 277
    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 278
    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public bufferSize()J
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public closeIfOwnedBy(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/Internal;->closeIfOwnedBy(Lcom/squareup/okhttp/Connection;Ljava/lang/Object;)V

    return-void
.end method

.method public closeOnIdle()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 122
    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 125
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x6

    .line 126
    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 127
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public isClosed()Z
    .locals 2

    .line 133
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadable()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 152
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I

    move-result v2
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :try_start_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 155
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->exhausted()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 160
    :try_start_2
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    return v0

    :cond_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v3
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v0

    :catch_1
    return v1
.end method

.method public newChunkedSink()Lokio/Sink;
    .locals 3

    .line 226
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 227
    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 228
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Lcom/squareup/okhttp/internal/http/HttpConnection$1;)V

    return-object v0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newChunkedSource(Lcom/squareup/okhttp/internal/http/HttpEngine;)Lokio/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 251
    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 252
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSource;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Lcom/squareup/okhttp/internal/http/HttpEngine;)V

    return-object v0

    .line 250
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newFixedLengthSink(J)Lokio/Sink;
    .locals 2

    .line 232
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 233
    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 234
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSink;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;JLcom/squareup/okhttp/internal/http/HttpConnection$1;)V

    return-object v0

    .line 232
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newFixedLengthSource(J)Lokio/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 245
    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 246
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;J)V

    return-object v0

    .line 244
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newUnknownLengthSource()Lokio/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 257
    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 258
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Lcom/squareup/okhttp/internal/http/HttpConnection$1;)V

    return-object v0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public poolOnIdle()V
    .locals 3

    const/4 v0, 0x1

    .line 108
    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 111
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 113
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/Internal;->recycle(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;)V

    :cond_0
    return-void
.end method

.method public rawSink()Lokio/BufferedSink;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    return-object v0
.end method

.method public rawSource()Lokio/BufferedSource;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    return-object v0
.end method

.method public readHeaders(Lcom/squareup/okhttp/Headers$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    sget-object v1, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    invoke-virtual {v1, p1, v0}, Lcom/squareup/okhttp/internal/Internal;->addLenient(Lcom/squareup/okhttp/Headers$Builder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readResponse()Lcom/squareup/okhttp/Response$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/StatusLine;

    move-result-object v0

    .line 193
    new-instance v1, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    iget-object v2, v0, Lcom/squareup/okhttp/internal/http/StatusLine;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 194
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget v2, v0, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    .line 195
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/squareup/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 196
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    .line 198
    new-instance v2, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v2}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 199
    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/http/HttpConnection;->readHeaders(Lcom/squareup/okhttp/Headers$Builder;)V

    .line 200
    sget-object v3, Lcom/squareup/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    iget-object v4, v0, Lcom/squareup/okhttp/internal/http/StatusLine;->protocol:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v4}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 201
    invoke-virtual {v2}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    .line 203
    iget v0, v0, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_1

    const/4 v0, 0x4

    .line 204
    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 210
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unexpected end of stream on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (recycle count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    .line 211
    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/Internal;->recycleCount(Lcom/squareup/okhttp/Connection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 213
    throw v1
.end method

.method public setTimeouts(II)V
    .locals 3

    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    :cond_0
    if-eqz p2, :cond_1

    .line 99
    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object p1

    int-to-long v0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    :cond_1
    return-void
.end method

.method public writeRequest(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 173
    invoke-virtual {p1}, Lcom/squareup/okhttp/Headers;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v3, ": "

    .line 175
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 176
    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 177
    invoke-interface {v2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const/4 p1, 0x1

    .line 180
    iput p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    return-void

    .line 171
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeRequestBody(Lcom/squareup/okhttp/internal/http/RetryableSink;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 239
    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 240
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/RetryableSink;->writeToSocket(Lokio/Sink;)V

    return-void

    .line 238
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
