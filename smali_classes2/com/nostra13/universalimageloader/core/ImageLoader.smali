.class public Lcom/nostra13/universalimageloader/core/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;
    }
.end annotation


# static fields
.field private static final ERROR_INIT_CONFIG_WITH_NULL:Ljava/lang/String; = "ImageLoader configuration can not be initialized with null"

.field private static final ERROR_NOT_INIT:Ljava/lang/String; = "ImageLoader must be init with configuration before using"

.field private static final ERROR_WRONG_ARGUMENTS:Ljava/lang/String; = "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

.field static final LOG_DESTROY:Ljava/lang/String; = "Destroy ImageLoader"

.field static final LOG_INIT_CONFIG:Ljava/lang/String; = "Initialize ImageLoader with configuration"

.field static final LOG_LOAD_IMAGE_FROM_MEMORY_CACHE:Ljava/lang/String; = "Load image from memory cache [%s]"

.field public static final TAG:Ljava/lang/String; = "ImageLoader"

.field private static final WARNING_RE_INIT_CONFIG:Ljava/lang/String; = "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

.field private static volatile instance:Lcom/nostra13/universalimageloader/core/ImageLoader;


# instance fields
.field private configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field private final emptyListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field private engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->emptyListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    return-void
.end method

.method private checkConfiguration()V
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-eqz v0, :cond_0

    return-void

    .line 568
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be init with configuration before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static defineHandler(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;
    .locals 2

    .line 735
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 736
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 738
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p0, v1, :cond_1

    .line 739
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 2

    .line 70
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-nez v0, :cond_1

    .line 71
    const-class v0, Lcom/nostra13/universalimageloader/core/ImageLoader;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;-><init>()V

    sput-object v1, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 75
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 77
    :cond_1
    :goto_0
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method


# virtual methods
.method public cancelDisplayTask(Landroid/widget/ImageView;)V
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    new-instance v1, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    return-void
.end method

.method public cancelDisplayTask(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    return-void
.end method

.method public clearDiscCache()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 621
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearDiskCache()V

    return-void
.end method

.method public clearDiskCache()V
    .locals 1

    .line 630
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 631
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->clear()V

    return-void
.end method

.method public clearMemoryCache()V
    .locals 1

    .line 588
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 589
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->clear()V

    return-void
.end method

.method public denyNetworkDownloads(Z)V
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->denyNetworkDownloads(Z)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 727
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Destroy ImageLoader"

    invoke-static {v1, v0}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 728
    :cond_0
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->stop()V

    .line 729
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->close()V

    const/4 v0, 0x0

    .line 730
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 731
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6

    .line 286
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 6

    .line 303
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 340
    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 6

    .line 365
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6

    .line 320
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 125
    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 161
    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 182
    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 10

    .line 208
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    if-eqz p2, :cond_a

    if-nez p4, :cond_0

    .line 213
    iget-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->emptyListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    :cond_0
    move-object v6, p4

    if-nez p3, :cond_1

    .line 216
    iget-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p3, p3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 219
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    .line 220
    iget-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {p4, p2}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 221
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object p4

    invoke-interface {v6, p1, p4}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    .line 222
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldShowImageForEmptyUri()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 223
    iget-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p4, p4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    invoke-virtual {p3, p4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageForEmptyUri(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_0

    .line 225
    :cond_2
    invoke-interface {p2, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 227
    :goto_0
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object p2

    invoke-interface {v6, p1, p2, v0}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void

    .line 231
    :cond_3
    iget-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    invoke-virtual {p4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->getMaxImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->defineTargetSizeForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v3

    .line 232
    invoke-static {p1, v3}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->generateKey(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Ljava/lang/String;

    move-result-object v4

    .line 233
    iget-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {p4, p2, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->prepareDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Ljava/lang/String;)V

    .line 235
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object p4

    invoke-interface {v6, p1, p4}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    .line 237
    iget-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p4, p4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {p4, v4}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Bitmap;

    if-eqz p4, :cond_6

    .line 238
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v0, "Load image from memory cache [%s]"

    .line 239
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldPostProcess()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 242
    new-instance v9, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 244
    new-instance p1, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;

    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-static {p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->defineHandler(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;

    move-result-object p5

    invoke-direct {p1, p2, p4, v9, p5}, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V

    .line 246
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 247
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;->run()V

    goto :goto_2

    .line 249
    :cond_4
    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {p2, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->submit(Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;)V

    goto :goto_2

    .line 252
    :cond_5
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object p3

    sget-object p5, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-interface {p3, p4, p2, p5}, Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    .line 253
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object p2

    invoke-interface {v6, p1, p2, p4}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 256
    :cond_6
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldShowImageOnLoading()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 257
    iget-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p4, p4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    invoke-virtual {p3, p4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageOnLoading(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-interface {p2, p4}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_1

    .line 258
    :cond_7
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isResetViewBeforeLoading()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 259
    invoke-interface {p2, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 262
    :cond_8
    :goto_1
    new-instance p4, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 264
    new-instance p1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-static {p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->defineHandler(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;

    move-result-object p5

    invoke-direct {p1, p2, p4, p5}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V

    .line 266
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 267
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->run()V

    goto :goto_2

    .line 269
    :cond_9
    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {p2, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->submit(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V

    :goto_2
    return-void

    .line 210
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 143
    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public getDiscCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 600
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v0

    return-object v0
.end method

.method public getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
    .locals 1

    .line 609
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 610
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    return-object v0
.end method

.method public getLoadingUriForView(Landroid/widget/ImageView;)Ljava/lang/String;
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    new-instance v1, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getLoadingUriForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLoadingUriForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getLoadingUriForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
    .locals 1

    .line 578
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 579
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    return-object v0
.end method

.method public handleSlowNetwork(Z)V
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->handleSlowNetwork(Z)V

    return-void
.end method

.method public declared-synchronized init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Initialize ImageLoader with configuration"

    new-array v1, v1, [Ljava/lang/Object;

    .line 96
    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 98
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    goto :goto_0

    :cond_0
    const-string p1, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    new-array v0, v1, [Ljava/lang/Object;

    .line 100
    invoke-static {p1, v0}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 93
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageLoader configuration can not be initialized with null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public isInited()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 419
    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 444
    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 6

    .line 474
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    if-nez p2, :cond_0

    .line 476
    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->getMaxImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object p2

    :cond_0
    if-nez p3, :cond_1

    .line 479
    iget-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p3, p3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    :cond_1
    move-object v3, p3

    .line 482
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;

    sget-object p3, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-direct {v2, p1, p2, p3}, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    .line 483
    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 400
    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 380
    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 498
    invoke-virtual {p0, p1, v0, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 514
    invoke-virtual {p0, p1, v0, p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 532
    invoke-virtual {p0, p1, p2, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p3, :cond_0

    .line 552
    iget-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p3, p3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 554
    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->syncLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object p3

    .line 556
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoader$1;)V

    .line 557
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 558
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;->getLoadedBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public pause()V
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->resume()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->stop()V

    return-void
.end method
