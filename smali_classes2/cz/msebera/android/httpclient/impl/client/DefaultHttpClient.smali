.class public Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;
.super Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
.source "DefaultHttpClient.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, v0, v0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method

.method public static setDefaultHttpParams(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 1

    .line 179
    sget-object v0, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->setVersion(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    .line 180
    sget-object v0, Lcz/msebera/android/httpclient/protocol/HTTP;->DEF_CONTENT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->setContentCharset(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 181
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setTcpNoDelay(Lcz/msebera/android/httpclient/params/HttpParams;Z)V

    const/16 v0, 0x2000

    .line 182
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setSocketBufferSize(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 183
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->DEFAULT_USER_AGENT:Ljava/lang/String;

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->setUserAgent(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createHttpParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .locals 1

    .line 157
    new-instance v0, Lcz/msebera/android/httpclient/params/SyncBasicHttpParams;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/params/SyncBasicHttpParams;-><init>()V

    .line 158
    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->setDefaultHttpParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-object v0
.end method

.method protected createHttpProcessor()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;
    .locals 2

    .line 206
    new-instance v0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;-><init>()V

    .line 207
    new-instance v1, Lcz/msebera/android/httpclient/client/protocol/RequestDefaultHeaders;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/client/protocol/RequestDefaultHeaders;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 209
    new-instance v1, Lcz/msebera/android/httpclient/protocol/RequestContent;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/RequestContent;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 210
    new-instance v1, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 212
    new-instance v1, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 213
    new-instance v1, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 214
    new-instance v1, Lcz/msebera/android/httpclient/protocol/RequestExpectContinue;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/RequestExpectContinue;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 216
    new-instance v1, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 217
    new-instance v1, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addInterceptor(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V

    .line 219
    new-instance v1, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 220
    new-instance v1, Lcz/msebera/android/httpclient/client/protocol/RequestTargetAuthentication;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/client/protocol/RequestTargetAuthentication;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 221
    new-instance v1, Lcz/msebera/android/httpclient/client/protocol/RequestProxyAuthentication;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/client/protocol/RequestProxyAuthentication;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    return-object v0
.end method
