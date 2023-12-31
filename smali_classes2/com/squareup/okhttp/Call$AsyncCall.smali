.class final Lcom/squareup/okhttp/Call$AsyncCall;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsyncCall"
.end annotation


# instance fields
.field private final forWebSocket:Z

.field private final responseCallback:Lcom/squareup/okhttp/Callback;

.field final synthetic this$0:Lcom/squareup/okhttp/Call;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/Call;Lcom/squareup/okhttp/Callback;Z)V
    .locals 1

    .line 133
    iput-object p1, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    .line 134
    iget-object p1, p1, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "OkHttp %s"

    invoke-direct {p0, v0, p1}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iput-object p2, p0, Lcom/squareup/okhttp/Call$AsyncCall;->responseCallback:Lcom/squareup/okhttp/Callback;

    .line 136
    iput-boolean p3, p0, Lcom/squareup/okhttp/Call$AsyncCall;->forWebSocket:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/Call;Lcom/squareup/okhttp/Callback;ZLcom/squareup/okhttp/Call$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/Call$AsyncCall;-><init>(Lcom/squareup/okhttp/Call;Lcom/squareup/okhttp/Callback;Z)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    return-void
.end method

.method protected execute()V
    .locals 6

    const-string v0, "Callback failure for "

    const/4 v1, 0x0

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    iget-boolean v3, p0, Lcom/squareup/okhttp/Call$AsyncCall;->forWebSocket:Z

    invoke-static {v2, v3}, Lcom/squareup/okhttp/Call;->access$100(Lcom/squareup/okhttp/Call;Z)Lcom/squareup/okhttp/Response;

    move-result-object v2

    .line 163
    iget-object v3, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    iget-boolean v1, v3, Lcom/squareup/okhttp/Call;->canceled:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 165
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/Call$AsyncCall;->responseCallback:Lcom/squareup/okhttp/Callback;

    iget-object v2, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    iget-object v2, v2, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Canceled"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v4}, Lcom/squareup/okhttp/Callback;->onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V

    goto :goto_1

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/Call$AsyncCall;->responseCallback:Lcom/squareup/okhttp/Callback;

    invoke-interface {v1, v2}, Lcom/squareup/okhttp/Callback;->onResponse(Lcom/squareup/okhttp/Response;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    move v3, v1

    move-object v1, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 173
    :try_start_2
    sget-object v2, Lcom/squareup/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    invoke-static {v0}, Lcom/squareup/okhttp/Call;->access$200(Lcom/squareup/okhttp/Call;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/Call$AsyncCall;->responseCallback:Lcom/squareup/okhttp/Callback;

    iget-object v2, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    iget-object v2, v2, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequest()Lcom/squareup/okhttp/Request;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/squareup/okhttp/Callback;->onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    invoke-static {v0}, Lcom/squareup/okhttp/Call;->access$300(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/Dispatcher;->finished(Lcom/squareup/okhttp/Call$AsyncCall;)V

    return-void

    :goto_2
    iget-object v1, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    invoke-static {v1}, Lcom/squareup/okhttp/Call;->access$300(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/Dispatcher;->finished(Lcom/squareup/okhttp/Call$AsyncCall;)V

    throw v0
.end method

.method get()Lcom/squareup/okhttp/Call;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    return-object v0
.end method

.method host()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    iget-object v0, v0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method request()Lcom/squareup/okhttp/Request;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    iget-object v0, v0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    return-object v0
.end method

.method tag()Ljava/lang/Object;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    iget-object v0, v0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
