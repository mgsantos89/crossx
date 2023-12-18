.class public Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalEntityEclosingRequest;,
        Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalRequest;
    }
.end annotation


# instance fields
.field private config:Lcz/msebera/android/httpclient/client/config/RequestConfig;

.field private entity:Lcz/msebera/android/httpclient/HttpEntity;

.field private headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

.field private method:Ljava/lang/String;

.field private parameters:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Ljava/net/URI;

.field private version:Lcz/msebera/android/httpclient/ProtocolVersion;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->method:Ljava/lang/String;

    return-void
.end method

.method public static copy(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 1

    const-string v0, "HTTP request"

    .line 118
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>()V

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->doCopy(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 1

    const-string v0, "HTTP method"

    .line 85
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 86
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static delete()Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    .line 106
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "DELETE"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private doCopy(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 126
    :cond_0
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->method:Ljava/lang/String;

    .line 127
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->version:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 128
    instance-of v0, p1, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    if-eqz v0, :cond_1

    .line 129
    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    goto :goto_0

    .line 131
    :cond_1
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    .line 133
    :goto_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-nez v0, :cond_2

    .line 134
    new-instance v0, Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    .line 136
    :cond_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;->clear()V

    .line 137
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 138
    instance-of v0, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 139
    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    goto :goto_1

    .line 141
    :cond_3
    iput-object v1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    .line 143
    :goto_1
    instance-of v0, p1, Lcz/msebera/android/httpclient/client/methods/Configurable;

    if-eqz v0, :cond_4

    .line 144
    check-cast p1, Lcz/msebera/android/httpclient/client/methods/Configurable;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/client/methods/Configurable;->getConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->config:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    goto :goto_2

    .line 146
    :cond_4
    iput-object v1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->config:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    .line 148
    :goto_2
    iput-object v1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static get()Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    .line 90
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "GET"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static head()Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    .line 94
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "HEAD"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static options()Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    .line 114
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "OPTIONS"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static post()Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    .line 98
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static put()Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    .line 102
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "PUT"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static trace()Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    .line 110
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "TRACE"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addHeader(Lcz/msebera/android/httpclient/Header;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 1

    .line 192
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    .line 195
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    return-object p0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    .line 200
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    .line 203
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    new-instance v1, Lcz/msebera/android/httpclient/message/BasicHeader;

    invoke-direct {v1, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    return-object p0
.end method

.method public addParameter(Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 1

    const-string v0, "Name value pair"

    .line 259
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/LinkedList;

    .line 263
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 1

    .line 268
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->addParameter(Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addParameters([Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 3

    .line 272
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 273
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->addParameter(Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public build()Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
    .locals 4

    .line 289
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "/"

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 290
    :goto_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    .line 291
    iget-object v2, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/LinkedList;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    const-string v2, "POST"

    .line 292
    iget-object v3, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "PUT"

    iget-object v3, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->method:Ljava/lang/String;

    .line 293
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    :cond_1
    new-instance v1, Lcz/msebera/android/httpclient/client/entity/UrlEncodedFormEntity;

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/LinkedList;

    sget-object v3, Lcz/msebera/android/httpclient/protocol/HTTP;->DEF_CONTENT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lcz/msebera/android/httpclient/client/entity/UrlEncodedFormEntity;-><init>(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)V

    goto :goto_1

    .line 297
    :cond_2
    :try_start_0
    new-instance v2, Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    invoke-direct {v2, v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;-><init>(Ljava/net/URI;)V

    iget-object v3, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->addParameters(Ljava/util/List;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->build()Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 304
    new-instance v1, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalRequest;

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->method:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalRequest;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 306
    :cond_4
    new-instance v2, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalEntityEclosingRequest;

    iget-object v3, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->method:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalEntityEclosingRequest;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v2, v1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalEntityEclosingRequest;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    move-object v1, v2

    .line 310
    :goto_2
    iget-object v2, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->version:Lcz/msebera/android/httpclient/ProtocolVersion;

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->setProtocolVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)V

    .line 311
    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 312
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-eqz v0, :cond_5

    .line 313
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 315
    :cond_5
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->config:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->setConfig(Lcz/msebera/android/httpclient/client/config/RequestConfig;)V

    return-object v1
.end method

.method public getConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .locals 1

    .line 279
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->config:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    return-object v0
.end method

.method public getEntity()Lcz/msebera/android/httpclient/HttpEntity;
    .locals 1

    .line 245
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;
    .locals 1

    .line 180
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;
    .locals 1

    .line 188
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getLastHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;
    .locals 1

    .line 184
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->getLastHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .line 166
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public getVersion()Lcz/msebera/android/httpclient/ProtocolVersion;
    .locals 1

    .line 157
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->version:Lcz/msebera/android/httpclient/ProtocolVersion;

    return-object v0
.end method

.method public removeHeader(Lcz/msebera/android/httpclient/Header;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 1

    .line 208
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    .line 211
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->removeHeader(Lcz/msebera/android/httpclient/Header;)V

    return-object p0
.end method

.method public removeHeaders(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    if-eqz p1, :cond_2

    .line 216
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-nez v0, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;->iterator()Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderIterator;->nextHeader()Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    .line 221
    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderIterator;->remove()V

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public setConfig(Lcz/msebera/android/httpclient/client/config/RequestConfig;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 0

    .line 283
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->config:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    return-object p0
.end method

.method public setEntity(Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 0

    .line 249
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    return-object p0
.end method

.method public setHeader(Lcz/msebera/android/httpclient/Header;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 1

    .line 229
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    .line 232
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->updateHeader(Lcz/msebera/android/httpclient/Header;)V

    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    .line 237
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    .line 240
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    new-instance v1, Lcz/msebera/android/httpclient/message/BasicHeader;

    invoke-direct {v1, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->updateHeader(Lcz/msebera/android/httpclient/Header;)V

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 0

    if-eqz p1, :cond_0

    .line 175
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    return-object p0
.end method

.method public setUri(Ljava/net/URI;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 0

    .line 170
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    return-object p0
.end method

.method public setVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 0

    .line 161
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->version:Lcz/msebera/android/httpclient/ProtocolVersion;

    return-object p0
.end method
