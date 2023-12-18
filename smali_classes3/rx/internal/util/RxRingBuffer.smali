.class public Lrx/internal/util/RxRingBuffer;
.super Ljava/lang/Object;
.source "RxRingBuffer.java"

# interfaces
.implements Lrx/Subscription;


# static fields
.field public static final SIZE:I

.field private static SPMC_POOL:Lrx/internal/util/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/ObjectPool<",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static SPSC_POOL:Lrx/internal/util/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/ObjectPool<",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field static _size:I

.field private static final on:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final pool:Lrx/internal/util/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/ObjectPool<",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I

.field public volatile terminalState:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 144
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    sput-object v0, Lrx/internal/util/RxRingBuffer;->on:Lrx/internal/operators/NotificationLite;

    const/16 v0, 0x80

    .line 260
    sput v0, Lrx/internal/util/RxRingBuffer;->_size:I

    .line 263
    invoke-static {}, Lrx/internal/util/PlatformDependent;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    .line 264
    sput v0, Lrx/internal/util/RxRingBuffer;->_size:I

    :cond_0
    const-string v0, "rx.ring-buffer.size"

    .line 268
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 271
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lrx/internal/util/RxRingBuffer;->_size:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 273
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to set \'rx.buffer.size\' with value "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " => "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    :cond_1
    :goto_0
    sget v0, Lrx/internal/util/RxRingBuffer;->_size:I

    sput v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    .line 279
    new-instance v0, Lrx/internal/util/RxRingBuffer$1;

    invoke-direct {v0}, Lrx/internal/util/RxRingBuffer$1;-><init>()V

    sput-object v0, Lrx/internal/util/RxRingBuffer;->SPSC_POOL:Lrx/internal/util/ObjectPool;

    .line 288
    new-instance v0, Lrx/internal/util/RxRingBuffer$2;

    invoke-direct {v0}, Lrx/internal/util/RxRingBuffer$2;-><init>()V

    sput-object v0, Lrx/internal/util/RxRingBuffer;->SPMC_POOL:Lrx/internal/util/ObjectPool;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 325
    new-instance v0, Lrx/internal/util/SynchronizedQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/SynchronizedQueue;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lrx/internal/util/RxRingBuffer;-><init>(Ljava/util/Queue;I)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Queue;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Lrx/internal/util/RxRingBuffer;->pool:Lrx/internal/util/ObjectPool;

    .line 300
    iput p2, p0, Lrx/internal/util/RxRingBuffer;->size:I

    return-void
.end method

.method private constructor <init>(Lrx/internal/util/ObjectPool;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/ObjectPool<",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lrx/internal/util/RxRingBuffer;->pool:Lrx/internal/util/ObjectPool;

    .line 305
    invoke-virtual {p1}, Lrx/internal/util/ObjectPool;->borrowObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    iput-object p1, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 306
    iput p2, p0, Lrx/internal/util/RxRingBuffer;->size:I

    return-void
.end method

.method public static getSpmcInstance()Lrx/internal/util/RxRingBuffer;
    .locals 3

    .line 44
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lrx/internal/util/RxRingBuffer;

    sget-object v1, Lrx/internal/util/RxRingBuffer;->SPMC_POOL:Lrx/internal/util/ObjectPool;

    sget v2, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1, v2}, Lrx/internal/util/RxRingBuffer;-><init>(Lrx/internal/util/ObjectPool;I)V

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lrx/internal/util/RxRingBuffer;

    invoke-direct {v0}, Lrx/internal/util/RxRingBuffer;-><init>()V

    return-object v0
.end method

.method public static getSpscInstance()Lrx/internal/util/RxRingBuffer;
    .locals 3

    .line 36
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lrx/internal/util/RxRingBuffer;

    sget-object v1, Lrx/internal/util/RxRingBuffer;->SPSC_POOL:Lrx/internal/util/ObjectPool;

    sget v2, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1, v2}, Lrx/internal/util/RxRingBuffer;-><init>(Lrx/internal/util/ObjectPool;I)V

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lrx/internal/util/RxRingBuffer;

    invoke-direct {v0}, Lrx/internal/util/RxRingBuffer;-><init>()V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Lrx/Observer;)Z
    .locals 1

    .line 443
    sget-object v0, Lrx/internal/util/RxRingBuffer;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p2, p1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public asError(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    .line 447
    sget-object v0, Lrx/internal/util/RxRingBuffer;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method public available()I
    .locals 2

    .line 369
    iget v0, p0, Lrx/internal/util/RxRingBuffer;->size:I

    invoke-virtual {p0}, Lrx/internal/util/RxRingBuffer;->count()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .locals 1

    .line 373
    iget v0, p0, Lrx/internal/util/RxRingBuffer;->size:I

    return v0
.end method

.method public count()I
    .locals 1

    .line 377
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 381
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 438
    sget-object v0, Lrx/internal/util/RxRingBuffer;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCompleted(Ljava/lang/Object;)Z
    .locals 1

    .line 430
    sget-object v0, Lrx/internal/util/RxRingBuffer;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 385
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 389
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isError(Ljava/lang/Object;)Z
    .locals 1

    .line 434
    sget-object v0, Lrx/internal/util/RxRingBuffer;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 452
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCompleted()V
    .locals 1

    .line 356
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 357
    sget-object v0, Lrx/internal/util/RxRingBuffer;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 364
    sget-object v0, Lrx/internal/util/RxRingBuffer;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrx/exceptions/MissingBackpressureException;
        }
    .end annotation

    .line 337
    monitor-enter p0

    .line 338
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 340
    sget-object v3, Lrx/internal/util/RxRingBuffer;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    move v1, v2

    move v2, p1

    .line 344
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    if-nez v2, :cond_1

    return-void

    .line 350
    :cond_1
    new-instance p1, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {p1}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    throw p1

    .line 347
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This instance has been unsubscribed and the queue is no longer usable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 344
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 3

    .line 414
    monitor-enter p0

    .line 415
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 418
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 420
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    .line 421
    iget-object v2, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 422
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v1, v2

    .line 425
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 4

    .line 394
    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 398
    monitor-exit p0

    return-object v1

    .line 400
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 402
    iget-object v3, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    .line 403
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 406
    iput-object v1, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    move-object v2, v3

    .line 408
    :cond_1
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 3

    monitor-enter p0

    .line 310
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 311
    iget-object v1, p0, Lrx/internal/util/RxRingBuffer;->pool:Lrx/internal/util/ObjectPool;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 313
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v2, 0x0

    .line 314
    iput-object v2, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 315
    invoke-virtual {v1, v0}, Lrx/internal/util/ObjectPool;->returnObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unsubscribe()V
    .locals 0

    .line 321
    invoke-virtual {p0}, Lrx/internal/util/RxRingBuffer;->release()V

    return-void
.end method
