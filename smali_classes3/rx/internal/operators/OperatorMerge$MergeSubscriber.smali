.class final Lrx/internal/operators/OperatorMerge$MergeSubscriber;
.super Lrx/Subscriber;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "Lrx/Observable<",
        "+TT;>;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final delayErrors:Z

.field volatile done:Z

.field emitting:Z

.field volatile errors:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final innerGuard:Ljava/lang/Object;

.field volatile innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber<",
            "*>;"
        }
    .end annotation
.end field

.field lastId:J

.field lastIndex:I

.field final maxConcurrent:I

.field missed:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "TT;>;"
        }
    .end annotation
.end field

.field producer:Lrx/internal/operators/OperatorMerge$MergeProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMerge$MergeProducer<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile queue:Lrx/internal/util/RxRingBuffer;

.field volatile subscriptions:Lrx/subscriptions/CompositeSubscription;

.field uniqueId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 176
    sput-object v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->EMPTY:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;ZI)V"
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 179
    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    .line 180
    iput-boolean p2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    .line 181
    iput p3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->maxConcurrent:I

    .line 182
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 183
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerGuard:Ljava/lang/Object;

    .line 184
    sget-object p1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->EMPTY:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 185
    sget p1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long p1, p1

    .line 186
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    return-void
.end method

.method private reportError()V
    .locals 3

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 238
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 239
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 241
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method addInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateComposite()Lrx/subscriptions/CompositeSubscription;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 259
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 261
    array-length v2, v1

    add-int/lit8 v3, v2, 0x1

    .line 262
    new-array v3, v3, [Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    const/4 v4, 0x0

    .line 263
    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    aput-object p1, v3, v2

    .line 265
    iput-object v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 266
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method checkTerminate()Z
    .locals 3

    .line 768
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 771
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 772
    iget-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 774
    :try_start_0
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->reportError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    return v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method emit()V
    .locals 2

    .line 514
    monitor-enter p0

    .line 515
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 516
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 517
    monitor-exit p0

    return-void

    .line 519
    :cond_0
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 520
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    return-void

    :catchall_0
    move-exception v0

    .line 520
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method emitLoop()V
    .locals 22

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 529
    :try_start_0
    iget-object v3, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    .line 532
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 536
    :cond_0
    iget-object v4, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    .line 538
    iget-object v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v0, v5, v7

    if-nez v0, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    move v10, v2

    :goto_1
    const-wide/16 v11, 0x1

    const-wide/16 v14, 0x0

    if-eqz v4, :cond_9

    move v0, v2

    :goto_2
    move-wide/from16 v16, v5

    move v5, v0

    move v6, v2

    const/4 v0, 0x0

    :goto_3
    cmp-long v18, v16, v14

    if-lez v18, :cond_5

    .line 550
    invoke-virtual {v4}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    move-result-object v7

    .line 552
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-nez v7, :cond_3

    move-object v0, v7

    goto :goto_5

    .line 559
    :cond_3
    iget-object v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, v7}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 562
    :try_start_1
    invoke-virtual {v3, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v8, v0

    .line 564
    :try_start_2
    iget-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-nez v0, :cond_4

    .line 565
    invoke-static {v8}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 567
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    .line 568
    invoke-virtual {v3, v8}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    const/4 v9, 0x1

    goto/16 :goto_14

    .line 571
    :cond_4
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    sub-long v16, v16, v11

    move-object v0, v7

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_3

    :cond_5
    :goto_5
    if-lez v6, :cond_7

    if-eqz v10, :cond_6

    const-wide v16, 0x7fffffffffffffffL

    goto :goto_6

    .line 581
    :cond_6
    iget-object v7, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v7, v6}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    move-result-wide v6

    move-wide/from16 v16, v6

    :cond_7
    :goto_6
    cmp-long v6, v16, v14

    if-eqz v6, :cond_a

    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    move v0, v5

    move-wide/from16 v5, v16

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_2

    :cond_9
    move-wide/from16 v16, v5

    move v5, v2

    .line 596
    :cond_a
    :goto_7
    iget-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->done:Z

    .line 599
    iget-object v4, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    .line 601
    iget-object v6, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 602
    array-length v7, v6

    if-eqz v0, :cond_f

    if-eqz v4, :cond_b

    .line 606
    invoke-virtual {v4}, Lrx/internal/util/RxRingBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_b
    if-nez v7, :cond_f

    .line 607
    iget-object v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_d

    .line 608
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_8

    .line 611
    :cond_c
    invoke-direct/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->reportError()V

    goto :goto_9

    .line 609
    :cond_d
    :goto_8
    invoke-virtual {v3}, Lrx/Subscriber;->onCompleted()V

    :goto_9
    if-eqz v4, :cond_e

    .line 614
    invoke-virtual {v4}, Lrx/internal/util/RxRingBuffer;->release()V

    :cond_e
    return-void

    :cond_f
    if-lez v7, :cond_25

    move v8, v10

    .line 623
    iget-wide v9, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastId:J

    .line 624
    iget v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastIndex:I

    if-le v7, v0, :cond_10

    .line 628
    aget-object v4, v6, v0

    iget-wide v11, v4, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    cmp-long v4, v11, v9

    if-eqz v4, :cond_15

    :cond_10
    if-gt v7, v0, :cond_11

    move v0, v2

    :cond_11
    move v4, v2

    :goto_a
    if-ge v4, v7, :cond_14

    .line 635
    aget-object v11, v6, v0

    iget-wide v11, v11, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    cmp-long v11, v11, v9

    if-nez v11, :cond_12

    goto :goto_b

    :cond_12
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v7, :cond_13

    move v0, v2

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 647
    :cond_14
    :goto_b
    iput v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastIndex:I

    .line 648
    aget-object v4, v6, v0

    iget-wide v9, v4, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    iput-wide v9, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastId:J

    :cond_15
    move v4, v2

    move v9, v4

    :goto_c
    if-ge v4, v7, :cond_24

    .line 655
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z

    move-result v10

    if-eqz v10, :cond_16

    return-void

    .line 660
    :cond_16
    aget-object v10, v6, v0

    const/4 v11, 0x0

    :cond_17
    move v12, v2

    :goto_d
    cmp-long v21, v16, v14

    if-lez v21, :cond_1a

    .line 667
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z

    move-result v21

    if-eqz v21, :cond_18

    return-void

    .line 671
    :cond_18
    iget-object v13, v10, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    if-nez v13, :cond_19

    goto :goto_e

    .line 675
    :cond_19
    invoke-virtual {v13}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_1b

    :cond_1a
    :goto_e
    const-wide/16 v19, 0x1

    goto :goto_f

    .line 679
    :cond_1b
    iget-object v13, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v13, v11}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 682
    :try_start_5
    invoke-virtual {v3, v13}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-wide/16 v19, 0x1

    sub-long v16, v16, v19

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v4, v0

    .line 685
    :try_start_6
    invoke-static {v4}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 687
    :try_start_7
    invoke-virtual {v3, v4}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 689
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    return-void

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_f
    if-lez v12, :cond_1d

    if-nez v8, :cond_1c

    .line 698
    :try_start_9
    iget-object v13, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v13, v12}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    move-result-wide v16

    goto :goto_10

    :cond_1c
    const-wide v16, 0x7fffffffffffffffL

    :goto_10
    int-to-long v12, v12

    .line 702
    invoke-virtual {v10, v12, v13}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->requestMore(J)V

    :cond_1d
    cmp-long v12, v16, v14

    if-eqz v12, :cond_1e

    if-nez v11, :cond_17

    .line 709
    :cond_1e
    iget-boolean v11, v10, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->done:Z

    .line 710
    iget-object v13, v10, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    if-eqz v11, :cond_21

    if-eqz v13, :cond_1f

    .line 711
    invoke-virtual {v13}, Lrx/internal/util/RxRingBuffer;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_21

    .line 712
    :cond_1f
    invoke-virtual {v1, v10}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->removeInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V

    .line 713
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z

    move-result v9

    if-eqz v9, :cond_20

    return-void

    :cond_20
    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x1

    :cond_21
    if-nez v12, :cond_22

    goto :goto_11

    :cond_22
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v7, :cond_23

    move v0, v2

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    .line 732
    :cond_24
    :goto_11
    iput v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastIndex:I

    .line 733
    aget-object v0, v6, v0

    iget-wide v6, v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    iput-wide v6, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastId:J

    goto :goto_12

    :cond_25
    move v9, v2

    :goto_12
    if-lez v5, :cond_26

    int-to-long v4, v5

    .line 737
    invoke-virtual {v1, v4, v5}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    :cond_26
    if-eqz v9, :cond_27

    goto/16 :goto_0

    .line 744
    :cond_27
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 745
    :try_start_a
    iget-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-nez v0, :cond_28

    .line 747
    :try_start_b
    iput-boolean v2, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 748
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    return-void

    :catchall_4
    move-exception v0

    const/4 v9, 0x1

    goto :goto_13

    .line 750
    :cond_28
    :try_start_c
    iput-boolean v2, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 751
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    move v9, v2

    :goto_13
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_14

    :catchall_7
    move-exception v0

    goto :goto_13

    :catchall_8
    move-exception v0

    move v9, v2

    :goto_14
    if-nez v9, :cond_29

    .line 755
    monitor-enter p0

    .line 756
    :try_start_f
    iput-boolean v2, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 757
    monitor-exit p0

    goto :goto_15

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    throw v0

    :cond_29
    :goto_15
    throw v0
.end method

.method protected emitScalar(Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 472
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 474
    :try_start_1
    iget-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-nez v2, :cond_0

    .line 475
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 477
    :try_start_2
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    .line 478
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 481
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_0
    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, p2, v2

    if-eqz p1, :cond_1

    .line 484
    iget-object p1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {p1, v0}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    :cond_1
    const-wide/16 p1, 0x1

    .line 486
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->requestMore(J)V

    .line 488
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 490
    :try_start_4
    iget-boolean p1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    if-nez p1, :cond_2

    .line 491
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 492
    monitor-exit p0

    return-void

    .line 494
    :cond_2
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 495
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 510
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    return-void

    :catchall_2
    move-exception p1

    .line 495
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_3
    move-exception p1

    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    .line 498
    monitor-enter p0

    .line 499
    :try_start_7
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 500
    monitor-exit p0

    goto :goto_2

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1

    :cond_3
    :goto_2
    throw p1
.end method

.method protected emitScalar(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber<",
            "TT;>;TT;J)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 364
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, p2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 366
    :try_start_1
    iget-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-nez v2, :cond_0

    .line 367
    invoke-static {p2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 369
    :try_start_2
    invoke-virtual {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->unsubscribe()V

    .line 370
    invoke-virtual {p1, p2}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 373
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_0
    const-wide v2, 0x7fffffffffffffffL

    cmp-long p2, p3, v2

    if-eqz p2, :cond_1

    .line 376
    iget-object p2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {p2, v0}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    :cond_1
    const-wide/16 p2, 0x1

    .line 378
    invoke-virtual {p1, p2, p3}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->requestMore(J)V

    .line 380
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 382
    :try_start_4
    iget-boolean p1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    if-nez p1, :cond_2

    .line 383
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 384
    monitor-exit p0

    return-void

    .line 386
    :cond_2
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 387
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 402
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    return-void

    :catchall_2
    move-exception p1

    .line 387
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_3
    move-exception p1

    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    .line 390
    monitor-enter p0

    .line 391
    :try_start_7
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 392
    monitor-exit p0

    goto :goto_2

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1

    :cond_3
    :goto_2
    throw p1
.end method

.method getOrCreateComposite()Lrx/subscriptions/CompositeSubscription;
    .locals 2

    .line 203
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    if-nez v0, :cond_1

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 210
    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 213
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->add(Lrx/Subscription;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 213
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-object v0
.end method

.method getOrCreateErrorQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_1

    .line 192
    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 196
    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 198
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public onCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->done:Z

    .line 254
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 247
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 248
    iput-boolean p1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->done:Z

    .line 249
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 140
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 226
    :cond_0
    instance-of v0, p1, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v0, :cond_1

    .line 227
    check-cast p1, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-virtual {p1}, Lrx/internal/util/ScalarSynchronousObservable;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->tryEmit(Ljava/lang/Object;)V

    goto :goto_0

    .line 229
    :cond_1
    new-instance v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    iget-wide v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->uniqueId:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->uniqueId:J

    invoke-direct {v0, p0, v1, v2}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;-><init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;J)V

    .line 230
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->addInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V

    .line 231
    invoke-virtual {p1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 232
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    :goto_0
    return-void
.end method

.method protected queueScalar(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    if-nez v0, :cond_0

    .line 448
    invoke-static {}, Lrx/internal/util/RxRingBuffer;->getSpscInstance()Lrx/internal/util/RxRingBuffer;

    move-result-object v0

    .line 449
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->add(Lrx/Subscription;)V

    .line 450
    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    .line 453
    :cond_0
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    return-void

    :catch_0
    move-exception p1

    .line 459
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 460
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    .line 461
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catch_1
    move-exception p1

    .line 455
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    .line 456
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected queueScalar(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 338
    iget-object v0, p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    if-nez v0, :cond_0

    .line 340
    invoke-static {}, Lrx/internal/util/RxRingBuffer;->getSpscInstance()Lrx/internal/util/RxRingBuffer;

    move-result-object v0

    .line 341
    invoke-virtual {p1, v0}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->add(Lrx/Subscription;)V

    .line 342
    iput-object v0, p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    .line 345
    :cond_0
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p2}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Lrx/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    return-void

    :catch_0
    move-exception p2

    .line 351
    invoke-virtual {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    invoke-virtual {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->unsubscribe()V

    .line 353
    invoke-virtual {p1, p2}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catch_1
    move-exception p2

    .line 347
    invoke-virtual {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->unsubscribe()V

    .line 348
    invoke-virtual {p1, p2}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method removeInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 269
    iget-object v0, p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lrx/internal/util/RxRingBuffer;->release()V

    .line 275
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 276
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 278
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 282
    aget-object v5, v1, v4

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_1
    if-gez v4, :cond_3

    .line 288
    monitor-exit v0

    return-void

    :cond_3
    const/4 p1, 0x1

    if-ne v2, p1, :cond_4

    .line 291
    sget-object p1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->EMPTY:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 292
    monitor-exit v0

    return-void

    :cond_4
    add-int/lit8 v5, v2, -0x1

    .line 294
    new-array v5, v5, [Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 295
    invoke-static {v1, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v4, 0x1

    sub-int/2addr v2, v4

    sub-int/2addr v2, p1

    .line 296
    invoke-static {v1, v3, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    iput-object v5, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 298
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestMore(J)V
    .locals 0

    .line 406
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    return-void
.end method

.method tryEmit(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 424
    monitor-enter p0

    .line 426
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    .line 427
    iget-boolean v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    if-nez v4, :cond_0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 428
    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    move v5, v2

    .line 431
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    .line 434
    invoke-virtual {p0, p1, v0, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitScalar(Ljava/lang/Object;J)V

    goto :goto_1

    .line 436
    :cond_2
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queueScalar(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method tryEmit(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 316
    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    .line 319
    iget-boolean v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    if-nez v4, :cond_0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 320
    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    move v5, v2

    .line 323
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    .line 326
    invoke-virtual {p0, p1, p2, v0, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitScalar(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;J)V

    goto :goto_1

    .line 328
    :cond_2
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queueScalar(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
