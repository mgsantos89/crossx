.class Lcz/msebera/android/httpclient/impl/client/cache/InternalURIUtils;
.super Ljava/lang/Object;
.source "InternalURIUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rewriteURIForRoute(Ljava/net/URI;Lcz/msebera/android/httpclient/conn/routing/RouteInfo;)Ljava/net/URI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 44
    :cond_0
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 46
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object p1

    .line 48
    invoke-static {p0, p1, v2}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object p0

    return-object p0

    .line 50
    :cond_1
    invoke-static {p0}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    .line 54
    :cond_2
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 55
    invoke-static {p0, v0, v2}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object p0

    return-object p0

    .line 57
    :cond_3
    invoke-static {p0}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method
