.class public Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;
.super Ljava/lang/Object;
.source "BackoffStrategyExec.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# instance fields
.field private final backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

.field private final connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

.field private final requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;Lcz/msebera/android/httpclient/client/BackoffManager;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP client request executor"

    .line 59
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connection backoff strategy"

    .line 60
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Backoff manager"

    .line 61
    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .line 63
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    .line 64
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    return-void
.end method


# virtual methods
.method public execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    const-string v0, "HTTP route"

    .line 72
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP request"

    .line 73
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    .line 74
    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    invoke-interface {v0, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    invoke-interface {p3, p2}, Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;->shouldBackoff(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 97
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    invoke-interface {p3, p1}, Lcz/msebera/android/httpclient/client/BackoffManager;->backOff(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    invoke-interface {p3, p1}, Lcz/msebera/android/httpclient/client/BackoffManager;->probe(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    :goto_0
    return-object p2

    :catch_0
    move-exception p2

    .line 82
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    invoke-interface {p3, p2}, Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;->shouldBackoff(Ljava/lang/Throwable;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 83
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    invoke-interface {p3, p1}, Lcz/msebera/android/httpclient/client/BackoffManager;->backOff(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 85
    :cond_1
    instance-of p1, p2, Ljava/lang/RuntimeException;

    if-nez p1, :cond_4

    .line 88
    instance-of p1, p2, Lcz/msebera/android/httpclient/HttpException;

    if-nez p1, :cond_3

    .line 91
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_2

    .line 92
    check-cast p2, Ljava/io/IOException;

    throw p2

    .line 94
    :cond_2
    new-instance p1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {p1, p2}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 89
    :cond_3
    check-cast p2, Lcz/msebera/android/httpclient/HttpException;

    throw p2

    .line 86
    :cond_4
    check-cast p2, Ljava/lang/RuntimeException;

    throw p2
.end method
