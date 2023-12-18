.class public Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;
.super Ljava/lang/Object;
.source "SSLConnectionSocketFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;


# static fields
.field public static final ALLOW_ALL_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

.field public static final BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

.field public static final SSL:Ljava/lang/String; = "SSL"

.field public static final SSLV2:Ljava/lang/String; = "SSLv2"

.field public static final STRICT_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

.field public static final TLS:Ljava/lang/String; = "TLS"


# instance fields
.field private final hostnameVerifier:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

.field private final socketfactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final supportedCipherSuites:[Ljava/lang/String;

.field private final supportedProtocols:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 126
    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    .line 129
    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    .line 132
    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/ssl/StrictHostnameVerifier;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    .line 178
    sget-object v0, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .locals 1

    const-string v0, "SSL context"

    .line 183
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLContext;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .locals 1

    const-string v0, "SSL context"

    .line 192
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLContext;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .locals 1

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p1, v0, v0, p2}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .locals 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSL socket factory"

    .line 207
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocketFactory;

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 208
    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->supportedProtocols:[Ljava/lang/String;

    .line 209
    iput-object p3, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->supportedCipherSuites:[Ljava/lang/String;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    sget-object p4, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    :goto_0
    iput-object p4, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->hostnameVerifier:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    return-void
.end method

.method public static getSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;
        }
    .end annotation

    .line 143
    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;

    .line 144
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->createDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    sget-object v2, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-object v0
.end method

.method public static getSystemSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;
        }
    .end annotation

    .line 165
    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;

    .line 166
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocketFactory;

    const-string v2, "https.protocols"

    .line 167
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "https.cipherSuites"

    .line 168
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    invoke-direct {v0, v1, v2, v3, v4}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-object v0
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 149
    invoke-static {p0}, Lcz/msebera/android/httpclient/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, " *, *"

    .line 152
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private verifyHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->hostnameVerifier:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    invoke-interface {v0, p2, p1}, Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 305
    :try_start_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    :catch_1
    throw p2
.end method


# virtual methods
.method public connectSocket(ILjava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP host"

    .line 234
    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Remote address"

    .line 235
    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0, p6}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->createSocket(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object p2

    :goto_0
    if-eqz p5, :cond_1

    .line 238
    invoke-virtual {p2, p5}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_1
    if-lez p1, :cond_2

    .line 241
    :try_start_0
    invoke-virtual {p2}, Ljava/net/Socket;->getSoTimeout()I

    move-result p5

    if-nez p5, :cond_2

    .line 242
    invoke-virtual {p2, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 244
    :cond_2
    invoke-virtual {p2, p4, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    instance-of p1, p2, Ljavax/net/ssl/SSLSocket;

    if-eqz p1, :cond_3

    .line 254
    move-object p1, p2

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 255
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 256
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->verifyHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    return-object p2

    .line 259
    :cond_3
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p3

    invoke-virtual {p0, p2, p1, p3, p6}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 247
    :try_start_1
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :catch_1
    throw p1
.end method

.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    iget-object p4, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v0, 0x1

    invoke-virtual {p4, p1, p2, p3, v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 273
    iget-object p3, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->supportedProtocols:[Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 274
    invoke-virtual {p1, p3}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_1

    .line 277
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object p3

    .line 278
    new-instance p4, Ljava/util/ArrayList;

    array-length v0, p3

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    const-string v3, "SSL"

    .line 280
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 281
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p4, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 286
    :goto_1
    iget-object p3, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->supportedCipherSuites:[Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 287
    invoke-virtual {p1, p3}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 289
    :cond_3
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->prepareSocket(Ljavax/net/ssl/SSLSocket;)V

    .line 290
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 291
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->verifyHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    return-object p1
.end method

.method public createSocket(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method getHostnameVerifier()Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;
    .locals 1

    .line 296
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->hostnameVerifier:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    return-object v0
.end method

.method protected prepareSocket(Ljavax/net/ssl/SSLSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
