.class public Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
.super Ljava/lang/Object;
.source "HttpClientBuilder.java"


# static fields
.field static final DEFAULT_USER_AGENT:Ljava/lang/String;


# instance fields
.field private authCachingDisabled:Z

.field private authSchemeRegistry:Lcz/msebera/android/httpclient/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private automaticRetriesDisabled:Z

.field private backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

.field private closeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

.field private connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

.field private connectionStateDisabled:Z

.field private contentCompressionDisabled:Z

.field private cookieManagementDisabled:Z

.field private cookieSpecRegistry:Lcz/msebera/android/httpclient/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;",
            ">;"
        }
    .end annotation
.end field

.field private cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

.field private credentialsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

.field private defaultConnectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

.field private defaultHeaders:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation
.end field

.field private defaultRequestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

.field private defaultSocketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

.field private hostnameVerifier:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

.field private httpprocessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field private keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

.field private maxConnPerRoute:I

.field private maxConnTotal:I

.field private proxy:Lcz/msebera/android/httpclient/HttpHost;

.field private proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private redirectHandlingDisabled:Z

.field private redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

.field private requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

.field private requestFirst:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private requestLast:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseFirst:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseLast:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

.field private reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field private routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

.field private schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

.field private serviceUnavailStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

.field private sslSocketFactory:Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

.field private sslcontext:Ljavax/net/ssl/SSLContext;

.field private systemProperties:Z

.field private targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private userAgent:Ljava/lang/String;

.field private userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 204
    const-class v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "cz.msebera.android.httpclient.client"

    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/util/VersionInfo;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcz/msebera/android/httpclient/util/VersionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/VersionInfo;->getRelease()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "UNAVAILABLE"

    .line 208
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Apache-HttpClient/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (java 1.5)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->DEFAULT_USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnTotal:I

    .line 198
    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    return-void
.end method

.method public static create()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 212
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;-><init>()V

    return-object v0
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 686
    invoke-static {p0}, Lcz/msebera/android/httpclient/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, " *, *"

    .line 689
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected addCloseable(Ljava/io/Closeable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 679
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    if-nez v0, :cond_1

    .line 680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    .line 682
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addInterceptorFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 449
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 450
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    .line 452
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final addInterceptorFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 415
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 416
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    .line 418
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final addInterceptorLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 466
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 467
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    .line 469
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final addInterceptorLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 432
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 433
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    .line 435
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public build()Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;
    .locals 22

    move-object/from16 v0, p0

    .line 694
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    if-nez v1, :cond_0

    .line 696
    new-instance v1, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;-><init>()V

    :cond_0
    move-object v3, v1

    .line 698
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    const/4 v10, 0x2

    const-string v2, "http.keepAlive"

    const/4 v11, 0x0

    const-string/jumbo v4, "true"

    if-nez v1, :cond_c

    .line 700
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslSocketFactory:Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

    if-nez v1, :cond_6

    .line 702
    iget-boolean v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v1, :cond_1

    const-string v1, "https.protocols"

    .line 703
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 702
    invoke-static {v1}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v11

    .line 704
    :goto_0
    iget-boolean v5, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v5, :cond_2

    const-string v5, "https.cipherSuites"

    .line 705
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 704
    invoke-static {v5}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v11

    .line 706
    :goto_1
    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->hostnameVerifier:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    if-nez v6, :cond_3

    .line 708
    sget-object v6, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    .line 710
    :cond_3
    iget-object v7, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslcontext:Ljavax/net/ssl/SSLContext;

    if-eqz v7, :cond_4

    .line 711
    new-instance v7, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;

    iget-object v8, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslcontext:Ljavax/net/ssl/SSLContext;

    invoke-direct {v7, v8, v1, v5, v6}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    :goto_2
    move-object v1, v7

    goto :goto_3

    .line 714
    :cond_4
    iget-boolean v7, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v7, :cond_5

    .line 715
    new-instance v7, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;

    .line 716
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v8

    check-cast v8, Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v7, v8, v1, v5, v6}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    goto :goto_2

    .line 719
    :cond_5
    new-instance v1, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;

    .line 720
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->createDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v5

    invoke-direct {v1, v5, v6}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    .line 726
    :cond_6
    :goto_3
    new-instance v5, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;

    .line 727
    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "http"

    .line 728
    invoke-static {}, Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "https"

    .line 729
    invoke-virtual {v6, v7, v1}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v1

    .line 730
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v1

    invoke-direct {v5, v1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/config/Registry;)V

    .line 731
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultSocketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    if-eqz v1, :cond_7

    .line 732
    invoke-virtual {v5, v1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultSocketConfig(Lcz/msebera/android/httpclient/config/SocketConfig;)V

    .line 734
    :cond_7
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultConnectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    if-eqz v1, :cond_8

    .line 735
    invoke-virtual {v5, v1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultConnectionConfig(Lcz/msebera/android/httpclient/config/ConnectionConfig;)V

    .line 737
    :cond_8
    iget-boolean v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v1, :cond_9

    .line 738
    invoke-static {v2, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 739
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "http.maxConnections"

    const-string v6, "5"

    .line 740
    invoke-static {v1, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 741
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 742
    invoke-virtual {v5, v1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultMaxPerRoute(I)V

    mul-int/2addr v1, v10

    .line 743
    invoke-virtual {v5, v1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setMaxTotal(I)V

    .line 746
    :cond_9
    iget v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnTotal:I

    if-lez v1, :cond_a

    .line 747
    invoke-virtual {v5, v1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setMaxTotal(I)V

    .line 749
    :cond_a
    iget v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    if-lez v1, :cond_b

    .line 750
    invoke-virtual {v5, v1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultMaxPerRoute(I)V

    :cond_b
    move-object v14, v5

    goto :goto_4

    :cond_c
    move-object v14, v1

    .line 754
    :goto_4
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    if-nez v1, :cond_f

    .line 756
    iget-boolean v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v1, :cond_e

    .line 757
    invoke-static {v2, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 758
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 759
    sget-object v1, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    goto :goto_5

    .line 761
    :cond_d
    sget-object v1, Lcz/msebera/android/httpclient/impl/NoConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/NoConnectionReuseStrategy;

    goto :goto_5

    .line 764
    :cond_e
    sget-object v1, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    :cond_f
    :goto_5
    move-object v5, v1

    .line 767
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    if-nez v1, :cond_10

    .line 769
    sget-object v1, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;

    :cond_10
    move-object v6, v1

    .line 771
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    if-nez v1, :cond_11

    .line 773
    sget-object v1, Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;

    :cond_11
    move-object v7, v1

    .line 775
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    if-nez v1, :cond_12

    .line 777
    sget-object v1, Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;

    :cond_12
    move-object v8, v1

    .line 779
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    if-nez v1, :cond_14

    .line 781
    iget-boolean v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionStateDisabled:Z

    if-nez v1, :cond_13

    .line 782
    sget-object v1, Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;

    goto :goto_6

    .line 784
    :cond_13
    sget-object v1, Lcz/msebera/android/httpclient/impl/client/NoopUserTokenHandler;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/NoopUserTokenHandler;

    :cond_14
    :goto_6
    move-object v9, v1

    .line 787
    new-instance v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;

    move-object v2, v1

    move-object v4, v14

    invoke-direct/range {v2 .. v9}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;-><init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)V

    .line 796
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->decorateMainExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-result-object v1

    .line 798
    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->httpprocessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    if-nez v2, :cond_20

    .line 801
    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userAgent:Ljava/lang/String;

    if-nez v2, :cond_16

    .line 803
    iget-boolean v3, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v3, :cond_15

    const-string v2, "http.agent"

    .line 804
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_15
    if-nez v2, :cond_16

    .line 807
    sget-object v2, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 811
    :cond_16
    invoke-static {}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->create()Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object v3

    .line 812
    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    if-eqz v4, :cond_17

    .line 813
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 814
    invoke-virtual {v3, v5}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_7

    .line 817
    :cond_17
    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    if-eqz v4, :cond_18

    .line 818
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 819
    invoke-virtual {v3, v5}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_8

    :cond_18
    const/4 v4, 0x6

    new-array v4, v4, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 822
    new-instance v5, Lcz/msebera/android/httpclient/client/protocol/RequestDefaultHeaders;

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultHeaders:Ljava/util/Collection;

    invoke-direct {v5, v6}, Lcz/msebera/android/httpclient/client/protocol/RequestDefaultHeaders;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lcz/msebera/android/httpclient/protocol/RequestContent;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/protocol/RequestContent;-><init>()V

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-instance v5, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;-><init>()V

    aput-object v5, v4, v10

    new-instance v5, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;-><init>()V

    const/4 v6, 0x3

    aput-object v5, v4, v6

    new-instance v5, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;

    invoke-direct {v5, v2}, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v5, v4, v2

    new-instance v2, Lcz/msebera/android/httpclient/client/protocol/RequestExpectContinue;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/client/protocol/RequestExpectContinue;-><init>()V

    const/4 v5, 0x5

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addAll([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 829
    iget-boolean v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    if-nez v2, :cond_19

    .line 830
    new-instance v2, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;-><init>()V

    invoke-virtual {v3, v2}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 832
    :cond_19
    iget-boolean v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    if-nez v2, :cond_1a

    .line 833
    new-instance v2, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;-><init>()V

    invoke-virtual {v3, v2}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 835
    :cond_1a
    iget-boolean v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authCachingDisabled:Z

    if-nez v2, :cond_1b

    .line 836
    new-instance v2, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;-><init>()V

    invoke-virtual {v3, v2}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 838
    :cond_1b
    iget-boolean v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    if-nez v2, :cond_1c

    .line 839
    new-instance v2, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;-><init>()V

    invoke-virtual {v3, v2}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 841
    :cond_1c
    iget-boolean v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    if-nez v2, :cond_1d

    .line 842
    new-instance v2, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;-><init>()V

    invoke-virtual {v3, v2}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 844
    :cond_1d
    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    if-eqz v2, :cond_1e

    .line 845
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 846
    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_9

    .line 849
    :cond_1e
    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    if-eqz v2, :cond_1f

    .line 850
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 851
    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_a

    .line 854
    :cond_1f
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->build()Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-result-object v2

    .line 856
    :cond_20
    new-instance v3, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;

    invoke-direct {v3, v1, v2}, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/protocol/HttpProcessor;)V

    .line 858
    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->decorateProtocolExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-result-object v1

    .line 861
    iget-boolean v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->automaticRetriesDisabled:Z

    if-nez v2, :cond_22

    .line 862
    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    if-nez v2, :cond_21

    .line 864
    sget-object v2, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;

    .line 866
    :cond_21
    new-instance v3, Lcz/msebera/android/httpclient/impl/execchain/RetryExec;

    invoke-direct {v3, v1, v2}, Lcz/msebera/android/httpclient/impl/execchain/RetryExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;)V

    move-object v1, v3

    .line 869
    :cond_22
    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    if-nez v2, :cond_26

    .line 871
    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    if-nez v2, :cond_23

    .line 873
    sget-object v2, Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;->INSTANCE:Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;

    .line 875
    :cond_23
    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    if-eqz v3, :cond_24

    .line 876
    new-instance v3, Lcz/msebera/android/httpclient/impl/conn/DefaultProxyRoutePlanner;

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    invoke-direct {v3, v4, v2}, Lcz/msebera/android/httpclient/impl/conn/DefaultProxyRoutePlanner;-><init>(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V

    :goto_b
    move-object v15, v3

    goto :goto_c

    .line 877
    :cond_24
    iget-boolean v3, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v3, :cond_25

    .line 878
    new-instance v3, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultRoutePlanner;

    .line 879
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultRoutePlanner;-><init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;Ljava/net/ProxySelector;)V

    goto :goto_b

    .line 881
    :cond_25
    new-instance v3, Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;

    invoke-direct {v3, v2}, Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;-><init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V

    goto :goto_b

    :cond_26
    move-object v15, v2

    .line 885
    :goto_c
    iget-boolean v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectHandlingDisabled:Z

    if-nez v2, :cond_28

    .line 886
    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    if-nez v2, :cond_27

    .line 888
    sget-object v2, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;

    .line 890
    :cond_27
    new-instance v3, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;

    invoke-direct {v3, v1, v15, v2}, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/client/RedirectStrategy;)V

    move-object v1, v3

    .line 894
    :cond_28
    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->serviceUnavailStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    if-eqz v2, :cond_29

    .line 896
    new-instance v3, Lcz/msebera/android/httpclient/impl/execchain/ServiceUnavailableRetryExec;

    invoke-direct {v3, v1, v2}, Lcz/msebera/android/httpclient/impl/execchain/ServiceUnavailableRetryExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)V

    move-object v1, v3

    .line 899
    :cond_29
    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    .line 900
    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    if-eqz v2, :cond_2a

    if-eqz v3, :cond_2a

    .line 902
    new-instance v4, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;

    invoke-direct {v4, v1, v3, v2}, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;Lcz/msebera/android/httpclient/client/BackoffManager;)V

    move-object v13, v4

    goto :goto_d

    :cond_2a
    move-object v13, v1

    .line 905
    :goto_d
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authSchemeRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    if-nez v1, :cond_2b

    .line 907
    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v1

    new-instance v2, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;-><init>()V

    const-string v3, "Basic"

    .line 908
    invoke-virtual {v1, v3, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v1

    new-instance v2, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;-><init>()V

    const-string v3, "Digest"

    .line 909
    invoke-virtual {v1, v3, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v1

    new-instance v2, Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;-><init>()V

    const-string v3, "NTLM"

    .line 910
    invoke-virtual {v1, v3, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v1

    .line 913
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v1

    :cond_2b
    move-object/from16 v17, v1

    .line 915
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieSpecRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    if-nez v1, :cond_2c

    .line 917
    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v1

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;-><init>()V

    const-string v3, "best-match"

    .line 918
    invoke-virtual {v1, v3, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v1

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecFactory;-><init>()V

    const-string v3, "standard"

    .line 919
    invoke-virtual {v1, v3, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v1

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory;-><init>()V

    const-string v3, "compatibility"

    .line 920
    invoke-virtual {v1, v3, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v1

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecFactory;-><init>()V

    const-string v3, "netscape"

    .line 921
    invoke-virtual {v1, v3, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v1

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpecFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpecFactory;-><init>()V

    const-string v3, "ignoreCookies"

    .line 922
    invoke-virtual {v1, v3, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v1

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2109SpecFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109SpecFactory;-><init>()V

    const-string v3, "rfc2109"

    .line 923
    invoke-virtual {v1, v3, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v1

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecFactory;-><init>()V

    const-string v3, "rfc2965"

    .line 924
    invoke-virtual {v1, v3, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v1

    .line 925
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v1

    :cond_2c
    move-object/from16 v16, v1

    .line 928
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

    if-nez v1, :cond_2d

    .line 930
    new-instance v1, Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;-><init>()V

    :cond_2d
    move-object/from16 v18, v1

    .line 933
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->credentialsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

    if-nez v1, :cond_2f

    .line 935
    iget-boolean v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v1, :cond_2e

    .line 936
    new-instance v1, Lcz/msebera/android/httpclient/impl/client/SystemDefaultCredentialsProvider;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/client/SystemDefaultCredentialsProvider;-><init>()V

    goto :goto_e

    .line 938
    :cond_2e
    new-instance v1, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;-><init>()V

    :cond_2f
    :goto_e
    move-object/from16 v19, v1

    .line 942
    new-instance v1, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;

    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultRequestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    if-eqz v2, :cond_30

    goto :goto_f

    :cond_30
    sget-object v2, Lcz/msebera/android/httpclient/client/config/RequestConfig;->DEFAULT:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    :goto_f
    move-object/from16 v20, v2

    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    if-eqz v2, :cond_31

    new-instance v11, Ljava/util/ArrayList;

    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_31
    move-object/from16 v21, v11

    move-object v12, v1

    invoke-direct/range {v12 .. v21}, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/client/CookieStore;Lcz/msebera/android/httpclient/client/CredentialsProvider;Lcz/msebera/android/httpclient/client/config/RequestConfig;Ljava/util/List;)V

    return-object v1
.end method

.method protected decorateMainExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .locals 0

    return-object p1
.end method

.method protected decorateProtocolExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .locals 0

    return-object p1
.end method

.method public final disableAuthCaching()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 502
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authCachingDisabled:Z

    return-object p0
.end method

.method public final disableAutomaticRetries()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 529
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->automaticRetriesDisabled:Z

    return-object p0
.end method

.method public final disableConnectionState()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 370
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionStateDisabled:Z

    return-object p0
.end method

.method public final disableContentCompression()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 491
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    return-object p0
.end method

.method public final disableCookieManagement()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 480
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    return-object p0
.end method

.method public final disableRedirectHandling()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 567
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectHandlingDisabled:Z

    return-object p0
.end method

.method public final setBackoffManager(Lcz/msebera/android/httpclient/client/BackoffManager;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 584
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    return-object p0
.end method

.method public final setConnectionBackoffStrategy(Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 576
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    return-object p0
.end method

.method public final setConnectionManager(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 313
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    return-object p0
.end method

.method public final setConnectionReuseStrategy(Lcz/msebera/android/httpclient/ConnectionReuseStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 322
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    return-object p0
.end method

.method public final setDefaultAuthSchemeRegistry(Lcz/msebera/android/httpclient/config/Lookup;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .line 624
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authSchemeRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    return-object p0
.end method

.method public final setDefaultConnectionConfig(Lcz/msebera/android/httpclient/config/ConnectionConfig;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 304
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultConnectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    return-object p0
.end method

.method public final setDefaultCookieSpecRegistry(Lcz/msebera/android/httpclient/config/Lookup;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .line 635
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieSpecRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    return-object p0
.end method

.method public final setDefaultCookieStore(Lcz/msebera/android/httpclient/client/CookieStore;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 602
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

    return-object p0
.end method

.method public final setDefaultCredentialsProvider(Lcz/msebera/android/httpclient/client/CredentialsProvider;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 613
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->credentialsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

    return-object p0
.end method

.method public final setDefaultHeaders(Ljava/util/Collection;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcz/msebera/android/httpclient/Header;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .line 401
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultHeaders:Ljava/util/Collection;

    return-object p0
.end method

.method public final setDefaultRequestConfig(Lcz/msebera/android/httpclient/client/config/RequestConfig;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 645
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultRequestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    return-object p0
.end method

.method public final setDefaultSocketConfig(Lcz/msebera/android/httpclient/config/SocketConfig;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 293
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultSocketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    return-object p0
.end method

.method public final setHostnameVerifier(Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 235
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->hostnameVerifier:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    return-object p0
.end method

.method public final setHttpProcessor(Lcz/msebera/android/httpclient/protocol/HttpProcessor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 510
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->httpprocessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    return-object p0
.end method

.method public final setKeepAliveStrategy(Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 331
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    return-object p0
.end method

.method public final setMaxConnPerRoute(I)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 282
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    return-object p0
.end method

.method public final setMaxConnTotal(I)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 271
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnTotal:I

    return-object p0
.end method

.method public final setProxy(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 540
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    return-object p0
.end method

.method public final setProxyAuthenticationStrategy(Lcz/msebera/android/httpclient/client/AuthenticationStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 351
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    return-object p0
.end method

.method public final setRedirectStrategy(Lcz/msebera/android/httpclient/client/RedirectStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 559
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    return-object p0
.end method

.method public final setRequestExecutor(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 223
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    return-object p0
.end method

.method public final setRetryHandler(Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 521
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    return-object p0
.end method

.method public final setRoutePlanner(Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 548
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    return-object p0
.end method

.method public final setSSLSocketFactory(Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 260
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslSocketFactory:Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

    return-object p0
.end method

.method public final setSchemePortResolver(Lcz/msebera/android/httpclient/conn/SchemePortResolver;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 379
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    return-object p0
.end method

.method public final setServiceUnavailableRetryStrategy(Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 593
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->serviceUnavailStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    return-object p0
.end method

.method public final setSslcontext(Ljavax/net/ssl/SSLContext;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 248
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslcontext:Ljavax/net/ssl/SSLContext;

    return-object p0
.end method

.method public final setTargetAuthenticationStrategy(Lcz/msebera/android/httpclient/client/AuthenticationStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 341
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    return-object p0
.end method

.method public final setUserAgent(Ljava/lang/String;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 390
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public final setUserTokenHandler(Lcz/msebera/android/httpclient/client/UserTokenHandler;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    .line 362
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    return-object p0
.end method

.method public final useSystemProperties()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 654
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    return-object p0
.end method
