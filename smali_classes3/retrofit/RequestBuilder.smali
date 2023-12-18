.class final Lretrofit/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/RequestBuilder$ContentTypeOverridingRequestBody;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field private static final PATH_SEGMENT_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|/\\?#"


# instance fields
.field private final baseUrl:Lcom/squareup/okhttp/HttpUrl;

.field private body:Lcom/squareup/okhttp/RequestBody;

.field private contentType:Lcom/squareup/okhttp/MediaType;

.field private formEncodingBuilder:Lcom/squareup/okhttp/FormEncodingBuilder;

.field private final hasBody:Z

.field private final method:Ljava/lang/String;

.field private multipartBuilder:Lcom/squareup/okhttp/MultipartBuilder;

.field private relativeUrl:Ljava/lang/String;

.field private final requestBuilder:Lcom/squareup/okhttp/Request$Builder;

.field private urlBuilder:Lcom/squareup/okhttp/HttpUrl$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 30
    fill-array-data v0, :array_0

    sput-object v0, Lretrofit/RequestBuilder;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lcom/squareup/okhttp/HttpUrl;Ljava/lang/String;Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/MediaType;ZZZ)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lretrofit/RequestBuilder;->method:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lretrofit/RequestBuilder;->baseUrl:Lcom/squareup/okhttp/HttpUrl;

    .line 52
    iput-object p3, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 53
    new-instance p1, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {p1}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    iput-object p1, p0, Lretrofit/RequestBuilder;->requestBuilder:Lcom/squareup/okhttp/Request$Builder;

    .line 54
    iput-object p5, p0, Lretrofit/RequestBuilder;->contentType:Lcom/squareup/okhttp/MediaType;

    .line 55
    iput-boolean p6, p0, Lretrofit/RequestBuilder;->hasBody:Z

    if-eqz p4, :cond_0

    .line 58
    invoke-virtual {p1, p4}, Lcom/squareup/okhttp/Request$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Request$Builder;

    :cond_0
    if-eqz p7, :cond_1

    .line 63
    new-instance p1, Lcom/squareup/okhttp/FormEncodingBuilder;

    invoke-direct {p1}, Lcom/squareup/okhttp/FormEncodingBuilder;-><init>()V

    iput-object p1, p0, Lretrofit/RequestBuilder;->formEncodingBuilder:Lcom/squareup/okhttp/FormEncodingBuilder;

    goto :goto_0

    :cond_1
    if-eqz p8, :cond_2

    .line 66
    new-instance p1, Lcom/squareup/okhttp/MultipartBuilder;

    invoke-direct {p1}, Lcom/squareup/okhttp/MultipartBuilder;-><init>()V

    iput-object p1, p0, Lretrofit/RequestBuilder;->multipartBuilder:Lcom/squareup/okhttp/MultipartBuilder;

    .line 67
    sget-object p2, Lcom/squareup/okhttp/MultipartBuilder;->FORM:Lcom/squareup/okhttp/MediaType;

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/MultipartBuilder;->type(Lcom/squareup/okhttp/MediaType;)Lcom/squareup/okhttp/MultipartBuilder;

    :cond_2
    :goto_0
    return-void
.end method

.method static canonicalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 94
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1

    const-string v4, " \"<>^`{}|/\\?#"

    .line 96
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/16 v4, 0x25

    if-ne v3, v4, :cond_0

    if-nez p1, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 99
    :cond_1
    :goto_1
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 100
    invoke-virtual {v3, p0, v1, v2}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    .line 101
    invoke-static {v3, p0, v2, v0, p1}, Lretrofit/RequestBuilder;->canonicalize(Lokio/Buffer;Ljava/lang/String;IIZ)V

    .line 102
    invoke-virtual {v3}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method static canonicalize(Lokio/Buffer;Ljava/lang/String;IIZ)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_5

    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-eqz p4, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    goto :goto_3

    :cond_0
    const/16 v2, 0x20

    const/16 v3, 0x25

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_2

    const-string v2, " \"<>^`{}|/\\?#"

    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    if-ne v1, v3, :cond_1

    if-nez p4, :cond_1

    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {p0, v1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 124
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 126
    :cond_3
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 127
    :goto_2
    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 128
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 129
    invoke-virtual {p0, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 130
    sget-object v4, Lretrofit/RequestBuilder;->HEX_DIGITS:[C

    shr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    invoke-virtual {p0, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/lit8 v2, v2, 0xf

    .line 131
    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_2

    .line 113
    :cond_4
    :goto_3
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method addFormField(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 156
    iget-object p3, p0, Lretrofit/RequestBuilder;->formEncodingBuilder:Lcom/squareup/okhttp/FormEncodingBuilder;

    invoke-virtual {p3, p1, p2}, Lcom/squareup/okhttp/FormEncodingBuilder;->addEncoded(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/FormEncodingBuilder;

    goto :goto_0

    .line 158
    :cond_0
    iget-object p3, p0, Lretrofit/RequestBuilder;->formEncodingBuilder:Lcom/squareup/okhttp/FormEncodingBuilder;

    invoke-virtual {p3, p1, p2}, Lcom/squareup/okhttp/FormEncodingBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/FormEncodingBuilder;

    :goto_0
    return-void
.end method

.method addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Content-Type"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p2}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object p1

    iput-object p1, p0, Lretrofit/RequestBuilder;->contentType:Lcom/squareup/okhttp/MediaType;

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lretrofit/RequestBuilder;->requestBuilder:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    :goto_0
    return-void
.end method

.method addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lretrofit/RequestBuilder;->multipartBuilder:Lcom/squareup/okhttp/MultipartBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    return-void
.end method

.method addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 84
    iget-object v0, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Lretrofit/RequestBuilder;->canonicalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 141
    iget-object v0, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lretrofit/RequestBuilder;->baseUrl:Lcom/squareup/okhttp/HttpUrl;

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/HttpUrl;->resolve(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpUrl;->newBuilder()Lcom/squareup/okhttp/HttpUrl$Builder;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RequestBuilder;->urlBuilder:Lcom/squareup/okhttp/HttpUrl$Builder;

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    :cond_0
    if-eqz p3, :cond_1

    .line 148
    iget-object p3, p0, Lretrofit/RequestBuilder;->urlBuilder:Lcom/squareup/okhttp/HttpUrl$Builder;

    invoke-virtual {p3, p1, p2}, Lcom/squareup/okhttp/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    goto :goto_0

    .line 150
    :cond_1
    iget-object p3, p0, Lretrofit/RequestBuilder;->urlBuilder:Lcom/squareup/okhttp/HttpUrl$Builder;

    invoke-virtual {p3, p1, p2}, Lcom/squareup/okhttp/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    :goto_0
    return-void
.end method

.method build()Lcom/squareup/okhttp/Request;
    .locals 5

    .line 172
    iget-object v0, p0, Lretrofit/RequestBuilder;->urlBuilder:Lcom/squareup/okhttp/HttpUrl$Builder;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpUrl$Builder;->build()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lretrofit/RequestBuilder;->baseUrl:Lcom/squareup/okhttp/HttpUrl;

    iget-object v1, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/HttpUrl;->resolve(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl;

    move-result-object v0

    .line 180
    :goto_0
    iget-object v1, p0, Lretrofit/RequestBuilder;->body:Lcom/squareup/okhttp/RequestBody;

    if-nez v1, :cond_3

    .line 183
    iget-object v2, p0, Lretrofit/RequestBuilder;->formEncodingBuilder:Lcom/squareup/okhttp/FormEncodingBuilder;

    if-eqz v2, :cond_1

    .line 184
    invoke-virtual {v2}, Lcom/squareup/okhttp/FormEncodingBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object v1

    goto :goto_1

    .line 185
    :cond_1
    iget-object v2, p0, Lretrofit/RequestBuilder;->multipartBuilder:Lcom/squareup/okhttp/MultipartBuilder;

    if-eqz v2, :cond_2

    .line 186
    invoke-virtual {v2}, Lcom/squareup/okhttp/MultipartBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object v1

    goto :goto_1

    .line 187
    :cond_2
    iget-boolean v2, p0, Lretrofit/RequestBuilder;->hasBody:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 189
    invoke-static {v2, v1}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v1

    .line 193
    :cond_3
    :goto_1
    iget-object v2, p0, Lretrofit/RequestBuilder;->contentType:Lcom/squareup/okhttp/MediaType;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 196
    new-instance v3, Lretrofit/RequestBuilder$ContentTypeOverridingRequestBody;

    invoke-direct {v3, v1, v2}, Lretrofit/RequestBuilder$ContentTypeOverridingRequestBody;-><init>(Lcom/squareup/okhttp/RequestBody;Lcom/squareup/okhttp/MediaType;)V

    move-object v1, v3

    goto :goto_2

    .line 198
    :cond_4
    iget-object v3, p0, Lretrofit/RequestBuilder;->requestBuilder:Lcom/squareup/okhttp/Request$Builder;

    const-string v4, "Content-Type"

    invoke-virtual {v2}, Lcom/squareup/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 202
    :cond_5
    :goto_2
    iget-object v2, p0, Lretrofit/RequestBuilder;->requestBuilder:Lcom/squareup/okhttp/Request$Builder;

    .line 203
    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/Request$Builder;->url(Lcom/squareup/okhttp/HttpUrl;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    iget-object v2, p0, Lretrofit/RequestBuilder;->method:Ljava/lang/String;

    .line 204
    invoke-virtual {v0, v2, v1}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    return-object v0
.end method

.method setBody(Lcom/squareup/okhttp/RequestBody;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lretrofit/RequestBuilder;->body:Lcom/squareup/okhttp/RequestBody;

    return-void
.end method

.method setRelativeUrl(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    return-void
.end method
