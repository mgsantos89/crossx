.class public final Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;
.super Ljava/lang/Object;
.source "HttpLogginInterceptor.java"

# interfaces
.implements Lcom/squareup/okhttp/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;,
        Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private volatile level:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

.field private final logger:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 27
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 97
    sget-object v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;->DEFAULT:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;

    invoke-direct {p0, v0}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;-><init>(Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;)V

    return-void
.end method

.method public constructor <init>(Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-object v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;->NONE:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    iput-object v0, p0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->level:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    .line 101
    iput-object p1, p0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->logger:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;

    return-void
.end method

.method private static protocol(Lcom/squareup/okhttp/Protocol;)Ljava/lang/String;
    .locals 1

    .line 202
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v0, :cond_0

    const-string p0, "HTTP/1.0"

    goto :goto_0

    :cond_0
    const-string p0, "HTTP/1.1"

    :goto_0
    return-object p0
.end method

.method private static requestPath(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;
    .locals 2

    .line 206
    invoke-virtual {p0}, Lcom/squareup/okhttp/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lcom/squareup/okhttp/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public intercept(Lcom/squareup/okhttp/Interceptor$Chain;)Lcom/squareup/okhttp/Response;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 114
    iget-object v2, v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->level:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    .line 116
    invoke-interface/range {p1 .. p1}, Lcom/squareup/okhttp/Interceptor$Chain;->request()Lcom/squareup/okhttp/Request;

    move-result-object v3

    .line 117
    sget-object v4, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;->NONE:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    if-ne v2, v4, :cond_0

    .line 118
    invoke-interface {v1, v3}, Lcom/squareup/okhttp/Interceptor$Chain;->proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object v1

    return-object v1

    .line 121
    :cond_0
    sget-object v4, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;->BODY:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    .line 122
    sget-object v7, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;->HEADERS:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    if-ne v2, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v5

    .line 124
    :goto_2
    invoke-virtual {v3}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 127
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/squareup/okhttp/Interceptor$Chain;->connection()Lcom/squareup/okhttp/Connection;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 128
    invoke-virtual {v8}, Lcom/squareup/okhttp/Connection;->getProtocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v8

    goto :goto_4

    :cond_5
    sget-object v8, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    .line 129
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "--> "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v3}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v11

    invoke-static {v11}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->requestPath(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->protocol(Lcom/squareup/okhttp/Protocol;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "-byte body)"

    const-string v11, " ("

    if-nez v2, :cond_6

    if-eqz v5, :cond_6

    .line 132
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/squareup/okhttp/RequestBody;->contentLength()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 134
    :cond_6
    iget-object v12, v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->logger:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;

    invoke-interface {v12, v8}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;->log(Ljava/lang/String;)V

    const-string v8, ": "

    const-string v12, ""

    if-eqz v2, :cond_a

    .line 137
    invoke-virtual {v3}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v13

    .line 138
    invoke-virtual {v13}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_7

    .line 139
    iget-object v6, v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->logger:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v14

    invoke-virtual {v13, v15}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v13, v15}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;->log(Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v16

    const/16 v10, 0x20

    goto :goto_5

    .line 142
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "--> END "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    .line 144
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 145
    invoke-virtual {v7, v5}, Lcom/squareup/okhttp/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 147
    sget-object v10, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 148
    invoke-virtual {v7}, Lcom/squareup/okhttp/RequestBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 150
    invoke-virtual {v13, v10}, Lcom/squareup/okhttp/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 153
    :cond_8
    iget-object v13, v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->logger:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;

    invoke-interface {v13, v12}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 154
    iget-object v13, v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->logger:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;

    invoke-virtual {v5, v10}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v5}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Lcom/squareup/okhttp/RequestBody;->contentLength()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 158
    :cond_9
    iget-object v5, v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->logger:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;

    invoke-interface {v5, v6}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 161
    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 162
    invoke-interface {v1, v3}, Lcom/squareup/okhttp/Interceptor$Chain;->proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object v1

    .line 163
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v5

    invoke-virtual {v3, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 165
    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    .line 166
    iget-object v7, v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->logger:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "<-- "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->protocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v13

    invoke-static {v13}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->protocol(Lcom/squareup/okhttp/Protocol;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v13, 0x20

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 167
    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_b

    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "-byte body"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_b
    move-object v6, v12

    :goto_6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-interface {v7, v5}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_10

    .line 171
    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_c

    .line 173
    iget-object v7, v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->logger:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2, v6}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;->log(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_c
    if-eqz v4, :cond_f

    .line 178
    invoke-virtual {v3}, Lcom/squareup/okhttp/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v2

    const-wide v4, 0x7fffffffffffffffL

    .line 179
    invoke-interface {v2, v4, v5}, Lokio/BufferedSource;->request(J)Z

    .line 180
    invoke-interface {v2}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v2

    .line 182
    sget-object v4, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 183
    invoke-virtual {v3}, Lcom/squareup/okhttp/ResponseBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 185
    invoke-virtual {v5, v4}, Lcom/squareup/okhttp/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v4

    .line 188
    :cond_d
    invoke-virtual {v3}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_e

    .line 189
    iget-object v3, v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->logger:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;

    invoke-interface {v3, v12}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 190
    iget-object v3, v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->logger:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;

    invoke-virtual {v2}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 193
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<-- END HTTP ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_f
    const-string v2, "<-- END HTTP"

    .line 195
    :goto_8
    iget-object v3, v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->logger:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;

    invoke-interface {v3, v2}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;->log(Ljava/lang/String;)V

    :cond_10
    return-object v1
.end method

.method public setLevel(Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;->level:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    return-void
.end method
