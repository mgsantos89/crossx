.class final Lrx/subjects/ReplaySubject$UnboundedReplayState;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/subjects/ReplaySubject$ReplayState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnboundedReplayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/subjects/ReplaySubject$ReplayState<",
        "TT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field static final INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lrx/subjects/ReplaySubject$UnboundedReplayState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile index:I

.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile terminated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 451
    const-class v0, Lrx/subjects/ReplaySubject$UnboundedReplayState;

    const-string v1, "index"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public accept(Lrx/Observer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    return-void
.end method

.method public complete()V
    .locals 2

    .line 471
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->terminated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 472
    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->terminated:Z

    .line 473
    iget-object v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    sget-object v0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 479
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->terminated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 480
    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->terminated:Z

    .line 481
    iget-object v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    sget-object p1, Lrx/subjects/ReplaySubject$UnboundedReplayState;->INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 540
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public latest()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 564
    iget v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->index:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 566
    iget-object v2, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 567
    iget-object v3, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v2}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v2}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    iget-object v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, v2}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 569
    iget-object v1, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v2, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public next(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 459
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->terminated:Z

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    sget-object p1, Lrx/subjects/ReplaySubject$UnboundedReplayState;->INDEX_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    :cond_0
    return-void
.end method

.method public replayObserver(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 494
    monitor-enter p1

    const/4 v0, 0x0

    .line 495
    :try_start_0
    iput-boolean v0, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 496
    iget-boolean v1, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    if-eqz v1, :cond_0

    .line 497
    monitor-exit p1

    return v0

    .line 499
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    invoke-virtual {p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {p0, v0, p1}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->replayObserverFromIndex(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 504
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 507
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to find lastEmittedLink for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 499
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public replayObserverFromIndex(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<",
            "-TT;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 513
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 514
    :goto_0
    iget v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->index:I

    if-ge p1, v0, :cond_0

    .line 515
    invoke-virtual {p0, p2, p1}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->accept(Lrx/Observer;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 519
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replayObserverFromIndex(Ljava/lang/Object;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Object;
    .locals 0

    .line 442
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->replayObserverFromIndex(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public replayObserverFromIndexTest(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;J)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<",
            "-TT;>;J)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 524
    invoke-virtual {p0, p1, p2}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->replayObserverFromIndex(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replayObserverFromIndexTest(Ljava/lang/Object;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;J)Ljava/lang/Object;
    .locals 0

    .line 442
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->replayObserverFromIndexTest(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;J)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 4

    .line 529
    iget v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->index:I

    if-lez v0, :cond_1

    .line 531
    iget-object v1, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 532
    iget-object v3, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v2

    :cond_1
    return v0
.end method

.method public terminated()Z
    .locals 1

    .line 488
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->terminated:Z

    return v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 545
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_2

    .line 547
    array-length v3, p1

    if-le v0, v3, :cond_0

    .line 548
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    .line 551
    iget-object v3, p0, Lrx/subjects/ReplaySubject$UnboundedReplayState;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 553
    :cond_1
    array-length v2, p1

    if-le v2, v0, :cond_3

    .line 554
    aput-object v1, p1, v0

    goto :goto_1

    .line 557
    :cond_2
    array-length v0, p1

    if-lez v0, :cond_3

    .line 558
    aput-object v1, p1, v2

    :cond_3
    :goto_1
    return-object p1
.end method
