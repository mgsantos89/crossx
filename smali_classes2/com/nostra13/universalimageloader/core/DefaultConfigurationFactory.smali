.class public Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;
.super Ljava/lang/Object;
.source "DefaultConfigurationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBitmapDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
    .locals 1

    .line 129
    new-instance v0, Lcom/nostra13/universalimageloader/core/display/SimpleBitmapDisplayer;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/display/SimpleBitmapDisplayer;-><init>()V

    return-object v0
.end method

.method public static createDiskCache(Landroid/content/Context;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;JI)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
    .locals 9

    .line 81
    invoke-static {p0}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createReserveDiskCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    if-lez p4, :cond_1

    .line 83
    :cond_0
    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 85
    :try_start_0
    new-instance v8, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;

    move-object v0, v8

    move-object v2, v7

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;-><init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception p2

    .line 88
    invoke-static {p2}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 92
    :cond_1
    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 93
    new-instance p2, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;

    invoke-direct {p2, p0, v7, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;-><init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V

    return-object p2
.end method

.method public static createExecutor(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;
    .locals 8

    .line 59
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 60
    new-instance p2, Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;

    invoke-direct {p2}, Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;-><init>()V

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    :goto_1
    move-object v6, p2

    check-cast v6, Ljava/util/concurrent/BlockingQueue;

    .line 62
    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string/jumbo v0, "uil-pool-"

    invoke-static {p1, v0}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createThreadFactory(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, p2

    move v1, p0

    move v2, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object p2
.end method

.method public static createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
    .locals 1

    .line 73
    new-instance v0, Lcom/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator;-><init>()V

    return-object v0
.end method

.method public static createImageDecoder(Z)Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
    .locals 1

    .line 124
    new-instance v0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;-><init>(Z)V

    return-object v0
.end method

.method public static createImageDownloader(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 1

    .line 119
    new-instance v0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createMemoryCache(I)Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
    .locals 4

    if-nez p0, :cond_0

    .line 112
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int p0, v0

    .line 114
    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;-><init>(I)V

    return-object v0
.end method

.method private static createReserveDiskCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    .line 98
    invoke-static {p0, v0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object p0

    .line 99
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "uil-images"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static createTaskDistributor()Ljava/util/concurrent/Executor;
    .locals 2

    const/4 v0, 0x5

    const-string/jumbo v1, "uil-pool-d-"

    .line 68
    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createThreadFactory(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static createThreadFactory(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 134
    new-instance v0, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;

    invoke-direct {v0, p0, p1}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
