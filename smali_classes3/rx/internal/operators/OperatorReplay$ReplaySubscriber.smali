.class final Lrx/internal/operators/OperatorReplay$ReplaySubscriber;
.super Lrx/Subscriber;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

.field static final TERMINATED:[Lrx/internal/operators/OperatorReplay$InnerProducer;


# instance fields
.field final buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field emitting:Z

.field maxChildRequested:J

.field maxUpstreamRequested:J

.field missed:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile producer:Lrx/Producer;

.field final producers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lrx/internal/operators/OperatorReplay$InnerProducer;",
            ">;"
        }
    .end annotation
.end field

.field final shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 299
    sput-object v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    new-array v0, v0, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 301
    sput-object v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->TERMINATED:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lrx/internal/operators/OperatorReplay$ReplayBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<",
            "TT;>;>;",
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer<",
            "TT;>;)V"
        }
    .end annotation

    .line 325
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 326
    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    .line 328
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 329
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 330
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 p1, 0x0

    .line 333
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->request(J)V

    return-void
.end method


# virtual methods
.method add(Lrx/internal/operators/OperatorReplay$InnerProducer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer<",
            "TT;>;)Z"
        }
    .end annotation

    .line 357
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 365
    sget-object v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->TERMINATED:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 369
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 370
    new-array v3, v3, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 371
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    aput-object p1, v3, v1

    .line 374
    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v3}, Lcom/facebook/internal/FetchedAppSettingsManager$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method init()V
    .locals 1

    .line 337
    new-instance v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;-><init>(Lrx/internal/operators/OperatorReplay$ReplaySubscriber;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->add(Lrx/Subscription;)V

    return-void
.end method

.method manageRequests()V
    .locals 12

    .line 484
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 487
    :cond_0
    monitor-enter p0

    .line 488
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->emitting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 489
    iput-boolean v1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->missed:Z

    .line 490
    monitor-exit p0

    return-void

    .line 492
    :cond_1
    iput-boolean v1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->emitting:Z

    .line 493
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 496
    :goto_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 501
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 503
    iget-wide v1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxChildRequested:J

    .line 506
    array-length v3, v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move v7, v4

    move-wide v8, v5

    :goto_1
    if-ge v7, v3, :cond_3

    aget-object v10, v0, v7

    .line 507
    iget-object v10, v10, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 510
    :cond_3
    iget-wide v10, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    .line 511
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producer:Lrx/Producer;

    sub-long v1, v8, v1

    cmp-long v3, v1, v5

    if-eqz v3, :cond_7

    .line 515
    iput-wide v8, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxChildRequested:J

    if-eqz v0, :cond_5

    cmp-long v3, v10, v5

    if-eqz v3, :cond_4

    .line 518
    iput-wide v5, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    add-long/2addr v10, v1

    .line 519
    invoke-interface {v0, v10, v11}, Lrx/Producer;->request(J)V

    goto :goto_2

    .line 521
    :cond_4
    invoke-interface {v0, v1, v2}, Lrx/Producer;->request(J)V

    goto :goto_2

    :cond_5
    add-long/2addr v10, v1

    cmp-long v0, v10, v5

    if-gez v0, :cond_6

    const-wide v10, 0x7fffffffffffffffL

    .line 529
    :cond_6
    iput-wide v10, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    goto :goto_2

    :cond_7
    cmp-long v1, v10, v5

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 534
    iput-wide v5, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    .line 536
    invoke-interface {v0, v10, v11}, Lrx/Producer;->request(J)V

    .line 539
    :cond_8
    :goto_2
    monitor-enter p0

    .line 540
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->missed:Z

    if-nez v0, :cond_9

    .line 541
    iput-boolean v4, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->emitting:Z

    .line 542
    monitor-exit p0

    return-void

    .line 544
    :cond_9
    iput-boolean v4, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->missed:Z

    .line 545
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 493
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onCompleted()V
    .locals 1

    .line 468
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 469
    iput-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    .line 471
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v0}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->complete()V

    .line 472
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 454
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 455
    iput-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    .line 457
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v0, p1}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->error(Ljava/lang/Throwable;)V

    .line 458
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 445
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v0, p1}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->next(Ljava/lang/Object;)V

    .line 447
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V

    :cond_0
    return-void
.end method

.method remove(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer<",
            "TT;>;)V"
        }
    .end annotation

    .line 390
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 392
    sget-object v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    if-eq v0, v1, :cond_6

    sget-object v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->TERMINATED:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    if-ne v0, v1, :cond_1

    goto :goto_3

    .line 398
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 400
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :goto_1
    if-gez v3, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 414
    sget-object v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 417
    new-array v5, v5, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 419
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    .line 421
    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 424
    :goto_2
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Lcom/facebook/internal/FetchedAppSettingsManager$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    :goto_3
    return-void
.end method

.method replay()V
    .locals 5

    .line 554
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 555
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 556
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v4, v3}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1

    .line 434
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producer:Lrx/Producer;

    if-nez v0, :cond_0

    .line 438
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producer:Lrx/Producer;

    .line 439
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->manageRequests()V

    .line 440
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V

    return-void

    .line 436
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Only a single producer can be set on a Subscriber."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
