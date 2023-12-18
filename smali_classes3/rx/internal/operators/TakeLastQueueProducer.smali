.class final Lrx/internal/operators/TakeLastQueueProducer;
.super Ljava/lang/Object;
.source "TakeLastQueueProducer.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/operators/TakeLastQueueProducer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final deque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile emittingStarted:Z

.field private final notification:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile requested:J

.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-class v0, Lrx/internal/operators/TakeLastQueueProducer;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/TakeLastQueueProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/internal/operators/NotificationLite;Ljava/util/Deque;Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/NotificationLite<",
            "TT;>;",
            "Ljava/util/Deque<",
            "Ljava/lang/Object;",
            ">;",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    .line 33
    iput-object p1, p0, Lrx/internal/operators/TakeLastQueueProducer;->notification:Lrx/internal/operators/NotificationLite;

    .line 34
    iput-object p2, p0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    .line 35
    iput-object p3, p0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    return-void
.end method


# virtual methods
.method emit(J)V
    .locals 12

    .line 68
    iget-wide v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    const-wide/16 v4, 0x0

    if-nez v0, :cond_2

    cmp-long p1, p1, v4

    if-nez p1, :cond_8

    .line 72
    :try_start_0
    iget-object p1, p0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 73
    iget-object v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 80
    iget-object p1, p0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->clear()V

    return-void

    .line 75
    :cond_0
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->notification:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, v1, p2}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 78
    :try_start_2
    iget-object p2, p0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {p2, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    :cond_1
    iget-object p1, p0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->clear()V

    goto :goto_3

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->clear()V

    throw p1

    :cond_2
    cmp-long p1, p1, v4

    if-nez p1, :cond_8

    .line 93
    :cond_3
    :goto_1
    iget-wide p1, p0, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    const/4 v0, 0x0

    :goto_2
    const-wide/16 v6, 0x1

    sub-long/2addr p1, v6

    cmp-long v1, p1, v4

    if-ltz v1, :cond_6

    .line 96
    iget-object v1, p0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 97
    iget-object v6, p0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v6}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v6

    if-eqz v6, :cond_4

    return-void

    .line 100
    :cond_4
    iget-object v6, p0, Lrx/internal/operators/TakeLastQueueProducer;->notification:Lrx/internal/operators/NotificationLite;

    iget-object v7, p0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v6, v7, v1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 108
    :cond_6
    iget-wide v8, p0, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    int-to-long p1, v0

    sub-long p1, v8, p1

    cmp-long v1, v8, v2

    if-nez v1, :cond_7

    goto :goto_1

    .line 115
    :cond_7
    sget-object v6, Lrx/internal/operators/TakeLastQueueProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v7, p0

    move-wide v10, p1

    invoke-virtual/range {v6 .. v11}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_6

    cmp-long p1, p1, v4

    if-nez p1, :cond_3

    :cond_8
    :goto_3
    return-void
.end method

.method public request(J)V
    .locals 4

    .line 51
    iget-wide v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 56
    sget-object p1, Lrx/internal/operators/TakeLastQueueProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {p1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndSet(Ljava/lang/Object;J)J

    move-result-wide p1

    goto :goto_0

    .line 58
    :cond_1
    sget-object v0, Lrx/internal/operators/TakeLastQueueProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-static {v0, p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Ljava/lang/Object;J)J

    move-result-wide p1

    .line 60
    :goto_0
    iget-boolean v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    if-nez v0, :cond_2

    return-void

    .line 64
    :cond_2
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/TakeLastQueueProducer;->emit(J)V

    return-void
.end method

.method startEmitting()V
    .locals 2

    .line 43
    iget-boolean v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    const-wide/16 v0, 0x0

    .line 45
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/TakeLastQueueProducer;->emit(J)V

    :cond_0
    return-void
.end method
