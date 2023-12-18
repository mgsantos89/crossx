.class public Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;
.super Ljava/lang/Object;
.source "RequestAddCookies.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP request"

    .line 78
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    .line 79
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONNECT"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-static {p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getCookieStore()Lcz/msebera/android/httpclient/client/CookieStore;

    move-result-object v1

    if-nez v1, :cond_1

    .line 91
    iget-object p1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p2, "Cookie store not specified in HTTP context"

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return-void

    .line 96
    :cond_1
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getCookieSpecRegistry()Lcz/msebera/android/httpclient/config/Lookup;

    move-result-object v2

    if-nez v2, :cond_2

    .line 98
    iget-object p1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p2, "CookieSpec registry not specified in HTTP context"

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return-void

    .line 103
    :cond_2
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v3

    if-nez v3, :cond_3

    .line 105
    iget-object p1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p2, "Target host not set in the context"

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return-void

    .line 110
    :cond_3
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getHttpRoute()Lcz/msebera/android/httpclient/conn/routing/RouteInfo;

    move-result-object v4

    if-nez v4, :cond_4

    .line 112
    iget-object p1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p2, "Connection route not set in the context"

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return-void

    .line 116
    :cond_4
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v5

    .line 117
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getCookieSpec()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v5, "best-match"

    .line 121
    :cond_5
    iget-object v6, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 122
    iget-object v6, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "CookieSpec selected: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 126
    :cond_6
    instance-of v6, p1, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    .line 127
    move-object v6, p1

    check-cast v6, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v6}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v6

    goto :goto_0

    .line 130
    :cond_7
    :try_start_0
    new-instance v6, Ljava/net/URI;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v8

    invoke-interface {v8}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v6, v7

    :goto_0
    if-eqz v6, :cond_8

    .line 134
    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 135
    :cond_8
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    .line 136
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v3

    if-gez v3, :cond_9

    .line 138
    invoke-interface {v4}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v3

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v3

    .line 141
    :cond_9
    new-instance v8, Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    const/4 v9, 0x0

    if-ltz v3, :cond_a

    goto :goto_1

    :cond_a
    move v3, v9

    .line 144
    :goto_1
    invoke-static {v7}, Lcz/msebera/android/httpclient/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    goto :goto_2

    :cond_b
    const-string v7, "/"

    .line 145
    :goto_2
    invoke-interface {v4}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->isSecure()Z

    move-result v4

    invoke-direct {v8, v6, v3, v7, v4}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 148
    invoke-interface {v2, v5}, Lcz/msebera/android/httpclient/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;

    if-eqz v2, :cond_15

    .line 152
    invoke-interface {v2, v0}, Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;->create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;

    move-result-object v0

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 158
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 159
    invoke-interface {v4, v3}, Lcz/msebera/android/httpclient/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v5

    const-string v6, "Cookie "

    if-nez v5, :cond_e

    .line 160
    invoke-interface {v0, v4, v8}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 161
    iget-object v5, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 162
    iget-object v5, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " match "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 164
    :cond_d
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 167
    :cond_e
    iget-object v5, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 168
    iget-object v5, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " expired"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_3

    .line 173
    :cond_f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 174
    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 175
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/Header;

    .line 176
    invoke-interface {p1, v3}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    goto :goto_4

    .line 180
    :cond_10
    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->getVersion()I

    move-result v2

    if-lez v2, :cond_14

    .line 183
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 184
    invoke-interface {v3}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v4

    if-ne v2, v4, :cond_12

    instance-of v3, v3, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-nez v3, :cond_11

    :cond_12
    const/4 v3, 0x1

    move v9, v3

    goto :goto_5

    :cond_13
    if-eqz v9, :cond_14

    .line 190
    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->getVersionHeader()Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 193
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    :cond_14
    const-string p1, "http.cookie-spec"

    .line 200
    invoke-interface {p2, p1, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "http.cookie-origin"

    .line 201
    invoke-interface {p2, p1, v8}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 150
    :cond_15
    new-instance p1, Lcz/msebera/android/httpclient/HttpException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported cookie policy: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
