.class Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;
.super Ljava/lang/Object;
.source "BasicHttpCache.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;


# static fields
.field private static final safeRequestMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cacheEntryUpdater:Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;

.field private final cacheInvalidator:Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final maxObjectSizeBytes:J

.field private final resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

.field private final responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

.field private final storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

.field private final uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 59
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "OPTIONS"

    const-string v2, "TRACE"

    const-string v3, "HEAD"

    const-string v4, "GET"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->safeRequestMethods:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 110
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->DEFAULT:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V
    .locals 1

    .line 102
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;-><init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;)V
    .locals 6

    .line 94
    new-instance v5, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;

    invoke-direct {v5, p4, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;-><init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 80
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

    .line 81
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    .line 82
    new-instance p4, Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;

    invoke-direct {p4, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;-><init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;)V

    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->cacheEntryUpdater:Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;

    .line 83
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getMaxObjectSize()J

    move-result-wide p3

    iput-wide p3, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->maxObjectSizeBytes:J

    .line 84
    new-instance p1, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    .line 85
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    .line 86
    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->cacheInvalidator:Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V
    .locals 2

    .line 106
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/HeapResourceFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/HeapResourceFactory;-><init>()V

    new-instance v1, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCacheStorage;

    invoke-direct {v1, p1}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCacheStorage;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    invoke-direct {p0, v0, v1, p1}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;-><init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    return-void
.end method

.method static synthetic access$000(Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;)Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;
    .locals 0

    .line 58
    iget-object p0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    return-object p0
.end method

.method private addVariantWithEtag(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/impl/client/cache/Variant;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    invoke-interface {v0, p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "ETag"

    .line 369
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 373
    :cond_1
    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcz/msebera/android/httpclient/impl/client/cache/Variant;

    invoke-direct {v2, p1, p2, v0}, Lcz/msebera/android/httpclient/impl/client/cache/Variant;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cacheAndReturnResponse(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    invoke-static {p3}, Lcz/msebera/android/httpclient/impl/client/cache/Proxies;->enhanceResponse(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 279
    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->cacheAndReturnResponse(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;Ljava/util/Date;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public cacheAndReturnResponse(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;Ljava/util/Date;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->getResponseReader(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;)Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;

    move-result-object v0

    const/4 v1, 0x1

    .line 294
    :try_start_0
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->readResponse()V

    .line 296
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->isLimitReached()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 298
    :try_start_1
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->getReconstructedResponse()Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const/4 v1, 0x0

    goto :goto_0

    .line 301
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->getResource()Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object v7

    .line 302
    invoke-virtual {p0, p3, v7}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->isIncompleteResponse(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/cache/Resource;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {p0, p3, v7}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->generateIncompleteResponseError(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/cache/Resource;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 316
    invoke-interface {p3}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    return-object p1

    .line 306
    :cond_1
    :try_start_3
    new-instance v0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .line 309
    invoke-interface {p3}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v5

    .line 310
    invoke-interface {p3}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v6

    move-object v2, v0

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v2 .. v7}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/StatusLine;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/client/cache/Resource;)V

    .line 312
    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storeInCache(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V

    .line 313
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 316
    invoke-interface {p3}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    return-object p1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {p3}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    :cond_2
    throw p1
.end method

.method doGetUpdatedParentEntry(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    move-object p2, p3

    .line 236
    :cond_0
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResource()Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 237
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResource()Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Lcz/msebera/android/httpclient/client/cache/ResourceFactory;->copy(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/Resource;)Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move-object v5, p1

    .line 239
    new-instance v6, Ljava/util/HashMap;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 240
    invoke-interface {v6, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance p1, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .line 242
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getRequestDate()Ljava/util/Date;

    move-result-object v1

    .line 243
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v2

    .line 244
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v3

    .line 245
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/StatusLine;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/client/cache/Resource;Ljava/util/Map;)V

    return-object p1
.end method

.method public flushCacheEntriesFor(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->safeRequestMethods:Ljava/util/Set;

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getURI(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;

    move-result-object p1

    .line 117
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    invoke-interface {p2, p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->removeEntry(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public flushInvalidatedCacheEntriesFor(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->cacheInvalidator:Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;->flushInvalidatedCacheEntries(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)V

    return-void
.end method

.method public flushInvalidatedCacheEntriesFor(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 2

    .line 122
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->safeRequestMethods:Ljava/util/Set;

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->cacheInvalidator:Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;

    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;->flushInvalidatedCacheEntries(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)V

    :cond_0
    return-void
.end method

.method generateIncompleteResponseError(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/cache/Resource;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 5

    const-string v0, "Content-Length"

    .line 211
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 212
    new-instance v1, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    sget-object v2, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    const/16 v3, 0x1f6

    const-string v4, "Bad Gateway"

    invoke-direct {v1, v2, v3, v4}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    const-string v2, "Content-Type"

    const-string/jumbo v3, "text/plain;charset=UTF-8"

    .line 214
    invoke-interface {v1, v2, v3}, Lcz/msebera/android/httpclient/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2}, Lcz/msebera/android/httpclient/client/cache/Resource;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Received incomplete response with Content-Length %d but actual body length %d"

    .line 215
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 219
    array-length p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Lcz/msebera/android/httpclient/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance p2, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;

    invoke-direct {p2, p1}, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;-><init>([B)V

    invoke-interface {v1, p2}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 221
    invoke-static {v1}, Lcz/msebera/android/httpclient/impl/client/cache/Proxies;->enhanceResponse(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public getCacheEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v1, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getURI(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 332
    :cond_0
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->hasVariants()Z

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    .line 335
    :cond_1
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v2, p2, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getVariantKey(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    return-object v0

    .line 339
    :cond_2
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    invoke-interface {p2, p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object p1

    return-object p1
.end method

.method getResponseReader(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;)Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;
    .locals 7

    .line 323
    new-instance v6, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->maxObjectSizeBytes:J

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;-><init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;JLcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;)V

    return-object v6
.end method

.method public getVariantCacheEntriesWithEtags(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/impl/client/cache/Variant;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 350
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v2, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getURI(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 351
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->hasVariants()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 354
    :cond_0
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 355
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 356
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 357
    invoke-direct {p0, v1, p2, v0}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->addVariantWithEtag(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method isIncompleteResponse(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/cache/Resource;)Z
    .locals 3

    .line 191
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0xce

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const-string v0, "Content-Length"

    .line 196
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    .line 202
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    invoke-interface {p2}, Lcz/msebera/android/httpclient/client/cache/Resource;->length()J

    move-result-wide v0

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-gez p1, :cond_2

    const/4 v2, 0x1

    :catch_0
    :cond_2
    return v2
.end method

.method public reuseVariantEntryFor(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/impl/client/cache/Variant;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getURI(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/impl/client/cache/Variant;->getEntry()Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object v3

    .line 172
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p2, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getVariantKey(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/impl/client/cache/Variant;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    .line 175
    new-instance p3, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache$2;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache$2;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :try_start_0
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    invoke-interface {p2, p1, p3}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->updateEntry(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheUpdateCallback;)V
    :try_end_0
    .catch Lcz/msebera/android/httpclient/client/cache/HttpCacheUpdateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 186
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not update key ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method storeInCache(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->hasVariants()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storeVariantEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storeNonVariantEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V

    :goto_0
    return-void
.end method

.method storeNonVariantEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getURI(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    invoke-interface {p2, p1, p3}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->putEntry(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V

    return-void
.end method

.method storeVariantEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getURI(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v1, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getVariantURI(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object p1

    .line 148
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    invoke-interface {v1, p1, p3}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->putEntry(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V

    .line 150
    new-instance v1, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache$1;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;)V

    .line 162
    :try_start_0
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->updateEntry(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheUpdateCallback;)V
    :try_end_0
    .catch Lcz/msebera/android/httpclient/client/cache/HttpCacheUpdateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 164
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Could not update key ["

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public updateCacheEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->cacheEntryUpdater:Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;

    .line 254
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    move-object v2, p3

    move-object v3, p5

    move-object v4, p6

    move-object v5, p4

    .line 253
    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;->updateCacheEntry(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object p3

    .line 259
    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storeInCache(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V

    return-object p3
.end method

.method public updateVariantCacheEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpResponse;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->cacheEntryUpdater:Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;

    .line 267
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    move-object v2, p3

    move-object v3, p5

    move-object v4, p6

    move-object v5, p4

    .line 266
    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;->updateCacheEntry(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object p1

    .line 272
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    invoke-interface {p2, p7, p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->putEntry(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V

    return-object p1
.end method
