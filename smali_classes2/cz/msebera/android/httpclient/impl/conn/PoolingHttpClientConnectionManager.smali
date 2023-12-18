.class public Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;
.super Ljava/lang/Object;
.source "PoolingHttpClientConnectionManager.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
.implements Lcz/msebera/android/httpclient/pool/ConnPoolControl;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;,
        Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;",
        "Lcz/msebera/android/httpclient/pool/ConnPoolControl<",
        "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final configData:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

.field private final connectionOperator:Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;

.field private final isShutDown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final pool:Lcz/msebera/android/httpclient/impl/conn/CPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-static {}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->getDefaultRegistry()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/config/Registry;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 8

    .line 109
    invoke-static {}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->getDefaultRegistry()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/config/Registry;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/conn/SchemePortResolver;Lcz/msebera/android/httpclient/conn/DnsResolver;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/config/Registry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Registry<",
            "Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0, v0}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/config/Registry;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/config/Registry;Lcz/msebera/android/httpclient/conn/DnsResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Registry<",
            "Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lcz/msebera/android/httpclient/conn/DnsResolver;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, v0, p2}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/config/Registry;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/config/Registry;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Registry<",
            "Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lcz/msebera/android/httpclient/conn/HttpConnectionFactory<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/config/Registry;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/config/Registry;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/conn/DnsResolver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Registry<",
            "Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lcz/msebera/android/httpclient/conn/HttpConnectionFactory<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;",
            "Lcz/msebera/android/httpclient/conn/DnsResolver;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v5, -0x1

    .line 138
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/config/Registry;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/conn/SchemePortResolver;Lcz/msebera/android/httpclient/conn/DnsResolver;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/config/Registry;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/conn/SchemePortResolver;Lcz/msebera/android/httpclient/conn/DnsResolver;JLjava/util/concurrent/TimeUnit;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Registry<",
            "Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lcz/msebera/android/httpclient/conn/HttpConnectionFactory<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;",
            "Lcz/msebera/android/httpclient/conn/SchemePortResolver;",
            "Lcz/msebera/android/httpclient/conn/DnsResolver;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v1, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 148
    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;-><init>()V

    iput-object v1, v0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->configData:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    .line 149
    new-instance v9, Lcz/msebera/android/httpclient/impl/conn/CPool;

    new-instance v3, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;

    move-object v2, p2

    invoke-direct {v3, v1, p2}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;-><init>(Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;)V

    const/4 v4, 0x2

    const/16 v5, 0x14

    move-object v2, v9

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Lcz/msebera/android/httpclient/impl/conn/CPool;-><init>(Lcz/msebera/android/httpclient/pool/ConnFactory;IIJLjava/util/concurrent/TimeUnit;)V

    iput-object v9, v0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/CPool;

    .line 151
    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct {v1, p1, p3, p4}, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;-><init>(Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/conn/SchemePortResolver;Lcz/msebera/android/httpclient/conn/DnsResolver;)V

    iput-object v1, v0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->connectionOperator:Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;

    .line 153
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->isShutDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/conn/HttpConnectionFactory<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-static {}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->getDefaultRegistry()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/config/Registry;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/conn/DnsResolver;)V

    return-void
.end method

.method constructor <init>(Lcz/msebera/android/httpclient/impl/conn/CPool;Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/conn/SchemePortResolver;Lcz/msebera/android/httpclient/conn/DnsResolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/impl/conn/CPool;",
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lcz/msebera/android/httpclient/conn/SchemePortResolver;",
            "Lcz/msebera/android/httpclient/conn/DnsResolver;",
            ")V"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 162
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->configData:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    .line 163
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/CPool;

    .line 164
    new-instance p1, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;

    invoke-direct {p1, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;-><init>(Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/conn/SchemePortResolver;Lcz/msebera/android/httpclient/conn/DnsResolver;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->connectionOperator:Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;

    .line 166
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->isShutDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private format(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[route: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p1, "[state: "

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private format(Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;)Ljava/lang/String;
    .locals 3

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->getState()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "[state: "

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatStats(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Ljava/lang/String;
    .locals 4

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[total kept alive: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/CPool;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/CPool;->getTotalStats()Lcz/msebera/android/httpclient/pool/PoolStats;

    move-result-object v1

    .line 194
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/CPool;

    invoke-virtual {v2, p1}, Lcz/msebera/android/httpclient/impl/conn/CPool;->getStats(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolStats;

    move-result-object p1

    .line 195
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolStats;->getAvailable()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; route allocated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/pool/PoolStats;->getLeased()I

    move-result v2

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/pool/PoolStats;->getAvailable()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/pool/PoolStats;->getMax()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "; total allocated: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolStats;->getLeased()I

    move-result p1

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolStats;->getAvailable()I

    move-result v3

    add-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolStats;->getMax()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getDefaultRegistry()Lcz/msebera/android/httpclient/config/Registry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcz/msebera/android/httpclient/config/Registry<",
            "Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v0

    const-string v1, "http"

    .line 99
    invoke-static {}, Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v0

    const-string v1, "https"

    .line 100
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 179
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->shutdown()V

    return-void
.end method

.method public closeExpiredConnections()V
    .locals 2

    .line 369
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Closing expired connections"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/CPool;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/CPool;->closeExpired()V

    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 362
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Closing connections idle longer than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/CPool;

    invoke-virtual {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/conn/CPool;->closeIdle(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public connect(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Managed Connection"

    .line 298
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP route"

    .line 299
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 301
    monitor-enter p1

    .line 302
    :try_start_0
    invoke-static {p1}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getPoolEntry(Lcz/msebera/android/httpclient/HttpClientConnection;)Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    .line 304
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object p1

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object p1

    :goto_0
    move-object v3, p1

    .line 311
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    .line 312
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->configData:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getSocketConfig(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/config/SocketConfig;

    move-result-object p1

    if-nez p1, :cond_1

    .line 314
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->configData:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getDefaultSocketConfig()Lcz/msebera/android/httpclient/config/SocketConfig;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    .line 317
    sget-object p1, Lcz/msebera/android/httpclient/config/SocketConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/SocketConfig;

    :cond_2
    move-object v6, p1

    .line 319
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->connectionOperator:Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;

    move v5, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;->connect(Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetSocketAddress;ILcz/msebera/android/httpclient/config/SocketConfig;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-void

    :catchall_0
    move-exception p2

    .line 304
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 172
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getConnectionConfig(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/config/ConnectionConfig;
    .locals 1

    .line 430
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->configData:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getConnectionConfig(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/config/ConnectionConfig;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultConnectionConfig()Lcz/msebera/android/httpclient/config/ConnectionConfig;
    .locals 1

    .line 414
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->configData:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getDefaultConnectionConfig()Lcz/msebera/android/httpclient/config/ConnectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaxPerRoute()I
    .locals 1

    .line 382
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/CPool;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/CPool;->getDefaultMaxPerRoute()I

    move-result v0

    return v0
.end method

.method public getDefaultSocketConfig()Lcz/msebera/android/httpclient/config/SocketConfig;
    .locals 1

    .line 406
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->configData:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getDefaultSocketConfig()Lcz/msebera/android/httpclient/config/SocketConfig;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPerRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I
    .locals 1

    .line 390
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/CPool;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/CPool;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getMaxPerRoute(Ljava/lang/Object;)I
    .locals 0

    .line 86
    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->getMaxPerRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I

    move-result p1

    return p1
.end method

.method public getMaxTotal()I
    .locals 1

    .line 374
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/CPool;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/CPool;->getMaxTotal()I

    move-result v0

    return v0
.end method

.method public getSocketConfig(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/config/SocketConfig;
    .locals 1

    .line 422
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->configData:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getSocketConfig(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/config/SocketConfig;

    move-result-object p1

    return-object p1
.end method

.method public getStats(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Lcz/msebera/android/httpclient/pool/PoolStats;
    .locals 1

    .line 402
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/CPool;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/CPool;->getStats(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolStats;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getStats(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolStats;
    .locals 0

    .line 86
    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->getStats(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Lcz/msebera/android/httpclient/pool/PoolStats;

    move-result-object p1

    return-object p1
.end method

.method public getTotalStats()Lcz/msebera/android/httpclient/pool/PoolStats;
    .locals 1

    .line 398
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/CPool;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/CPool;->getTotalStats()Lcz/msebera/android/httpclient/pool/PoolStats;

    move-result-object v0

    return-object v0
.end method

.method protected leaseConnection(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/HttpClientConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcz/msebera/android/httpclient/HttpClientConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Lcz/msebera/android/httpclient/conn/ConnectionPoolTimeoutException;
        }
    .end annotation

    const-string v0, "Connection leased: "

    .line 244
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    if-eqz p2, :cond_2

    .line 245
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 248
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p3, "Pool entry with no connection"

    invoke-static {p1, p3}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 250
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->format(Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-direct {p0, p4}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->formatStats(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 252
    :cond_1
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->newProxy(Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;)Lcz/msebera/android/httpclient/HttpClientConnection;

    move-result-object p1

    return-object p1

    .line 246
    :cond_2
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :catch_0
    new-instance p1, Lcz/msebera/android/httpclient/conn/ConnectionPoolTimeoutException;

    const-string p2, "Timeout waiting for connection from pool"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/conn/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public releaseConnection(Lcz/msebera/android/httpclient/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    .locals 10

    const-string v0, "Connection "

    const-string v1, "Connection released: "

    const-string v2, "Connection released: "

    const-string v3, "for "

    const-string v4, "Managed connection"

    .line 262
    invoke-static {p1, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    monitor-enter p1

    .line 264
    :try_start_0
    invoke-static {p1}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->detach(Lcz/msebera/android/httpclient/HttpClientConnection;)Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    move-result-object v4

    if-nez v4, :cond_0

    .line 266
    monitor-exit p1

    return-void

    .line 268
    :cond_0
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 270
    :try_start_1
    invoke-interface {v5}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz p5, :cond_1

    goto :goto_0

    .line 271
    :cond_1
    sget-object p5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 272
    :goto_0
    invoke-virtual {v4, p2}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->setState(Ljava/lang/Object;)V

    .line 273
    invoke-virtual {v4, p3, p4, p5}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->updateExpiry(JLjava/util/concurrent/TimeUnit;)V

    .line 274
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    const-wide/16 v8, 0x0

    cmp-long p2, p3, v8

    if-lez p2, :cond_2

    .line 277
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    long-to-double p3, p3

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr p3, v8

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " seconds"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const-string p2, "indefinitely"

    .line 281
    :goto_1
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->format(Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " can be kept alive "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :cond_3
    :try_start_2
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/CPool;

    invoke-interface {v5}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->isOpen()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->isRouteComplete()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    move v6, v7

    :goto_2
    invoke-virtual {p2, v4, v6}, Lcz/msebera/android/httpclient/impl/conn/CPool;->release(Lcz/msebera/android/httpclient/pool/PoolEntry;Z)V

    .line 286
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 287
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->format(Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-direct {p0, p4}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->formatStats(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 290
    :cond_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    .line 285
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/CPool;

    invoke-interface {v5}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->isOpen()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->isRouteComplete()Z

    move-result p4

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    move v6, v7

    :goto_3
    invoke-virtual {p3, v4, v6}, Lcz/msebera/android/httpclient/impl/conn/CPool;->release(Lcz/msebera/android/httpclient/pool/PoolEntry;Z)V

    .line 286
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 287
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->format(Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-direct {p0, p5}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->formatStats(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_7
    throw p2

    :catchall_1
    move-exception p2

    .line 290
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2
.end method

.method public requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    .locals 3

    const-string v0, "HTTP route"

    .line 217
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->format(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->formatStats(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/CPool;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcz/msebera/android/httpclient/impl/conn/CPool;->lease(Ljava/lang/Object;Ljava/lang/Object;Lcz/msebera/android/httpclient/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 222
    new-instance p2, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$1;

    invoke-direct {p2, p0, p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$1;-><init>(Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;Ljava/util/concurrent/Future;)V

    return-object p2
.end method

.method public routeComplete(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p3, "Managed Connection"

    .line 341
    invoke-static {p1, p3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "HTTP route"

    .line 342
    invoke-static {p2, p3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 343
    monitor-enter p1

    .line 344
    :try_start_0
    invoke-static {p1}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getPoolEntry(Lcz/msebera/android/httpclient/HttpClientConnection;)Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    move-result-object p2

    .line 345
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->markRouteComplete()V

    .line 346
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public setConnectionConfig(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/config/ConnectionConfig;)V
    .locals 1

    .line 434
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->configData:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->setConnectionConfig(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/config/ConnectionConfig;)V

    return-void
.end method

.method public setDefaultConnectionConfig(Lcz/msebera/android/httpclient/config/ConnectionConfig;)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->configData:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->setDefaultConnectionConfig(Lcz/msebera/android/httpclient/config/ConnectionConfig;)V

    return-void
.end method

.method public setDefaultMaxPerRoute(I)V
    .locals 1

    .line 386
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/CPool;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/CPool;->setDefaultMaxPerRoute(I)V

    return-void
.end method

.method public setDefaultSocketConfig(Lcz/msebera/android/httpclient/config/SocketConfig;)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->configData:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->setDefaultSocketConfig(Lcz/msebera/android/httpclient/config/SocketConfig;)V

    return-void
.end method

.method public setMaxPerRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;I)V
    .locals 1

    .line 394
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/CPool;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/CPool;->setMaxPerRoute(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic setMaxPerRoute(Ljava/lang/Object;I)V
    .locals 0

    .line 86
    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setMaxPerRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;I)V

    return-void
.end method

.method public setMaxTotal(I)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/CPool;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/CPool;->setMaxTotal(I)V

    return-void
.end method

.method public setSocketConfig(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/config/SocketConfig;)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->configData:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->setSocketConfig(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/config/SocketConfig;)V

    return-void
.end method

.method public shutdown()V
    .locals 3

    .line 350
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->isShutDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Connection manager is shutting down"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 353
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/CPool;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/CPool;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 355
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "I/O exception shutting down connection manager"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 357
    :goto_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Connection manager shut down"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public upgrade(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Managed Connection"

    .line 327
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP route"

    .line 328
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 330
    monitor-enter p1

    .line 331
    :try_start_0
    invoke-static {p1}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getPoolEntry(Lcz/msebera/android/httpclient/HttpClientConnection;)Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    .line 333
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->connectionOperator:Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p3}, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;->upgrade(Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-void

    :catchall_0
    move-exception p2

    .line 333
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
