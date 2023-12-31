.class public Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;
.super Ljava/lang/Object;
.source "SSLContexts.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefault()Ljavax/net/ssl/SSLContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;
        }
    .end annotation

    :try_start_0
    const-string v0, "TLS"

    .line 54
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;

    invoke-virtual {v0}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 58
    new-instance v1, Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createSystemDefault()Ljavax/net/ssl/SSLContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;
        }
    .end annotation

    :try_start_0
    const-string v0, "Default"

    .line 75
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 77
    :catch_0
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->createDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public static custom()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .locals 1

    .line 87
    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;-><init>()V

    return-object v0
.end method
