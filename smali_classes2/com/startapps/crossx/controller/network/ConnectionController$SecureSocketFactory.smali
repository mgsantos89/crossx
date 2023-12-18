.class public Lcom/startapps/crossx/controller/network/ConnectionController$SecureSocketFactory;
.super Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;
.source "ConnectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/controller/network/ConnectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SecureSocketFactory"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SecureSocketFactory"


# instance fields
.field private final acceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private final sslCtx:Ljavax/net/ssl/SSLContext;

.field final synthetic this$0:Lcom/startapps/crossx/controller/network/ConnectionController;


# direct methods
.method static bridge synthetic -$$Nest$fgetacceptedIssuers(Lcom/startapps/crossx/controller/network/ConnectionController$SecureSocketFactory;)[Ljava/security/cert/X509Certificate;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/controller/network/ConnectionController$SecureSocketFactory;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public constructor <init>(Lcom/startapps/crossx/controller/network/ConnectionController;Ljava/security/KeyStore;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/startapps/crossx/controller/network/ConnectionController$SecureSocketFactory;->this$0:Lcom/startapps/crossx/controller/network/ConnectionController;

    .line 176
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 179
    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p2

    .line 182
    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v0, "X.509"

    .line 183
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 184
    invoke-static {p3}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    const/4 p3, 0x1

    new-array v1, p3, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 194
    iput-object v1, p0, Lcom/startapps/crossx/controller/network/ConnectionController$SecureSocketFactory;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    const-string v0, "TLS"

    .line 196
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/controller/network/ConnectionController$SecureSocketFactory;->sslCtx:Ljavax/net/ssl/SSLContext;

    new-array p3, p3, [Ljavax/net/ssl/TrustManager;

    .line 197
    new-instance v1, Lcom/startapps/crossx/controller/network/ConnectionController$SecureSocketFactory$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/startapps/crossx/controller/network/ConnectionController$SecureSocketFactory$1;-><init>(Lcom/startapps/crossx/controller/network/ConnectionController$SecureSocketFactory;Lcom/startapps/crossx/controller/network/ConnectionController;Ljava/security/cert/Certificate;)V

    aput-object v1, p3, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p3, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 258
    sget-object p1, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/controller/network/ConnectionController$SecureSocketFactory;->setHostnameVerifier(Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-void

    .line 187
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Embedded SSL certificate has expired."

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private injectHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 2

    .line 288
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 289
    const-class v0, Ljava/net/InetAddress;

    const-string v1, "hostName"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 291
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/ConnectionController$SecureSocketFactory;->sslCtx:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/controller/network/ConnectionController$SecureSocketFactory;->injectHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/ConnectionController$SecureSocketFactory;->sslCtx:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    .line 269
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/network/ConnectionController$SecureSocketFactory;->getHostnameVerifier()Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    move-result-object p3

    move-object p4, p1

    check-cast p4, Ljavax/net/ssl/SSLSocket;

    invoke-interface {p3, p2, p4}, Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    return-object p1
.end method
