.class final Lcom/squareup/okhttp/internal/framed/Http2$Reader;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

.field final hpackReader:Lcom/squareup/okhttp/internal/framed/Hpack$Reader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;IZ)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    .line 97
    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->client:Z

    .line 98
    new-instance p3, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    invoke-direct {p3, p1}, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    iput-object p3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    .line 99
    new-instance p1, Lcom/squareup/okhttp/internal/framed/Hpack$Reader;

    invoke-direct {p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/Hpack$Reader;-><init>(ILokio/Source;)V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/framed/Hpack$Reader;

    return-void
.end method

.method private readData(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-nez v2, :cond_3

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_2

    .line 225
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    .line 226
    :cond_2
    invoke-static {p2, p3, v1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 228
    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v0, p4, p3, p2}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    .line 229
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    int-to-long p2, v1

    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    return-void

    :cond_3
    const-string p1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array p2, v1, [Ljava/lang/Object;

    .line 222
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readGoAway(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p3, 0x8

    if-lt p2, p3, :cond_3

    if-nez p4, :cond_2

    .line 336
    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p4}, Lokio/BufferedSource;->readInt()I

    move-result p4

    .line 337
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    sub-int/2addr p2, p3

    .line 339
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 343
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-lez p2, :cond_0

    .line 345
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 347
    :cond_0
    invoke-interface {p1, p4, p3, v0}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V

    return-void

    .line 341
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    .line 335
    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 334
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "TYPE_GOAWAY length < 8: %s"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    iput p1, v0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    iput p1, v0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->length:I

    .line 206
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    iput-short p2, p1, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->padding:S

    .line 207
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    iput-byte p3, p1, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->flags:B

    .line 208
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    iput p4, p1, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    .line 212
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/Hpack$Reader;->readHeaders()V

    .line 213
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private readHeaders(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_2

    .line 192
    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readPriority(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;I)V

    add-int/lit8 p2, p2, -0x5

    .line 196
    :cond_2
    invoke-static {p2, p3, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 198
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 200
    sget-object v8, Lcom/squareup/okhttp/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lcom/squareup/okhttp/internal/framed/HeadersMode;

    move-object v2, p1

    move v5, p4

    invoke-interface/range {v2 .. v8}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    return-void

    :cond_3
    const-string p1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    .line 185
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readPing(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    if-nez p4, :cond_1

    .line 326
    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p4}, Lokio/BufferedSource;->readInt()I

    move-result p4

    .line 327
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr p3, v1

    if-eqz p3, :cond_0

    move p2, v1

    .line 329
    :cond_0
    invoke-interface {p1, p2, p4, v0}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->ping(ZII)V

    return-void

    :cond_1
    const-string p1, "TYPE_PING streamId != 0"

    new-array p2, p2, [Ljava/lang/Object;

    .line 325
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 324
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "TYPE_PING length != 8: %s"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readPriority(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    .line 243
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    .line 244
    invoke-interface {p1, p2, v0, v3, v1}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->priority(IIIZ)V

    return-void
.end method

.method private readPriority(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x5

    if-ne p2, p3, :cond_1

    if-eqz p4, :cond_0

    .line 236
    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readPriority(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "TYPE_PRIORITY streamId == 0"

    .line 235
    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 234
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "TYPE_PRIORITY length: %d != 5"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readPushPromise(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    .line 317
    invoke-static {p2, p3, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 318
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object p2

    .line 319
    invoke-interface {p1, p4, v1, p2}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    return-void

    :cond_1
    const-string p1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    .line 312
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readRstStream(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x4

    if-ne p2, p3, :cond_2

    if-eqz p4, :cond_1

    .line 251
    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    .line 252
    invoke-static {p2}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 256
    invoke-interface {p1, p4, p3}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void

    .line 254
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "TYPE_RST_STREAM streamId == 0"

    .line 250
    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 249
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readSettings(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_9

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    .line 264
    invoke-interface {p1}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->ackSettings()V

    return-void

    :cond_0
    const-string p1, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array p2, v0, [Ljava/lang/Object;

    .line 263
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 268
    :cond_1
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_8

    .line 269
    new-instance p3, Lcom/squareup/okhttp/internal/framed/Settings;

    invoke-direct {p3}, Lcom/squareup/okhttp/internal/framed/Settings;-><init>()V

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_6

    .line 271
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readShort()S

    move-result v2

    .line 272
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    packed-switch v2, :pswitch_data_0

    .line 299
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "PROTOCOL_ERROR invalid settings id: %s"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_0
    const/16 v4, 0x4000

    if-lt v3, v4, :cond_2

    const v4, 0xffffff

    if-gt v3, v4, :cond_2

    goto :goto_1

    .line 293
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_1
    if-ltz v3, :cond_3

    const/4 v2, 0x7

    goto :goto_1

    :cond_3
    const-string p1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array p2, v0, [Ljava/lang/Object;

    .line 288
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_2
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_3
    if-eqz v3, :cond_5

    if-ne v3, p4, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array p2, v0, [Ljava/lang/Object;

    .line 279
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 301
    :cond_5
    :goto_1
    :pswitch_4
    invoke-virtual {p3, v2, v0, v3}, Lcom/squareup/okhttp/internal/framed/Settings;->set(III)Lcom/squareup/okhttp/internal/framed/Settings;

    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 303
    :cond_6
    invoke-interface {p1, v0, p3}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->settings(ZLcom/squareup/okhttp/internal/framed/Settings;)V

    .line 304
    invoke-virtual {p3}, Lcom/squareup/okhttp/internal/framed/Settings;->getHeaderTableSize()I

    move-result p1

    if-ltz p1, :cond_7

    .line 305
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {p3}, Lcom/squareup/okhttp/internal/framed/Settings;->getHeaderTableSize()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/internal/framed/Hpack$Reader;->headerTableSizeSetting(I)V

    :cond_7
    return-void

    .line 268
    :cond_8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_9
    const-string p1, "TYPE_SETTINGS streamId != 0"

    new-array p2, v0, [Ljava/lang/Object;

    .line 261
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private readWindowUpdate(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x4

    if-ne p2, p3, :cond_1

    .line 353
    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    int-to-long p2, p2

    const-wide/32 v0, 0x7fffffff

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 355
    invoke-interface {p1, p4, p2, p3}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    return-void

    .line 354
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "windowSizeIncrement was 0"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 352
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    return-void
.end method

.method public nextFrame(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    const-wide/16 v1, 0x9

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$300(Lokio/BufferedSource;)I

    move-result v0

    if-ltz v0, :cond_1

    const/16 v1, 0x4000

    if-gt v0, v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 135
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 136
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    .line 137
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v4

    invoke-static {v5, v3, v0, v1, v2}, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 178
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 173
    :pswitch_0
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readWindowUpdate(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 169
    :pswitch_1
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readGoAway(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 165
    :pswitch_2
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readPing(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 161
    :pswitch_3
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readPushPromise(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 157
    :pswitch_4
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readSettings(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 153
    :pswitch_5
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readRstStream(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 149
    :pswitch_6
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readPriority(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 145
    :pswitch_7
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readHeaders(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 141
    :pswitch_8
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readData(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    :goto_0
    return v5

    .line 132
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "FRAME_SIZE_ERROR: %s"

    invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->client:Z

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "<< CONNECTION %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    :cond_1
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 107
    :cond_2
    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Expected a connection header but was %s"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
