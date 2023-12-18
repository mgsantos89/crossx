.class final Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;
.super Lrx/Subscriber;
.source "OperatorObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObserveOnSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field static final REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final action:Lrx/functions/Action0;

.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field volatile counter:J

.field volatile error:Ljava/lang/Throwable;

.field volatile finished:Z

.field final on:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final recursiveScheduler:Lrx/Scheduler$Worker;

.field volatile requested:J

.field final scheduledUnsubscribe:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "requested"

    .line 86
    const-class v1, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "counter"

    .line 92
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Scheduler;Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 75
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->on:Lrx/internal/operators/NotificationLite;

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->requested:J

    .line 166
    new-instance v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$2;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$2;-><init>(Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->action:Lrx/functions/Action0;

    .line 99
    iput-object p2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    .line 100
    invoke-virtual {p1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    .line 101
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 102
    new-instance p2, Lrx/internal/util/unsafe/SpscArrayQueue;

    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {p2, v0}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    iput-object p2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    goto :goto_0

    .line 104
    :cond_0
    new-instance p2, Lrx/internal/util/SynchronizedQueue;

    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {p2, v0}, Lrx/internal/util/SynchronizedQueue;-><init>(I)V

    iput-object p2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    .line 106
    :goto_0
    new-instance p2, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    invoke-direct {p2, p1}, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;-><init>(Lrx/Scheduler$Worker;)V

    iput-object p2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->scheduledUnsubscribe:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    return-void
.end method


# virtual methods
.method init()V
    .locals 2

    .line 112
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->scheduledUnsubscribe:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 113
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;-><init>(Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 122
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 123
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 146
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    .line 150
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 155
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iput-object p1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->error:Ljava/lang/Throwable;

    .line 160
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->unsubscribe()V

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    .line 163
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 138
    new-instance p1, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {p1}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 141
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 129
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->request(J)V

    return-void
.end method

.method pollQueue()V
    .locals 12

    const/4 v0, 0x0

    :cond_0
    const-wide/16 v1, 0x1

    .line 185
    iput-wide v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->counter:J

    .line 187
    iget-wide v3, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->requested:J

    const-wide/16 v5, 0x0

    move-wide v7, v5

    .line 189
    :goto_0
    iget-object v9, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v9}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_1

    return-void

    .line 192
    :cond_1
    iget-boolean v9, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    if-eqz v9, :cond_3

    .line 193
    iget-object v9, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->error:Ljava/lang/Throwable;

    if-eqz v9, :cond_2

    .line 196
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 197
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, v9}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 200
    :cond_2
    iget-object v9, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 201
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    return-void

    :cond_3
    cmp-long v9, v3, v5

    if-lez v9, :cond_4

    .line 206
    iget-object v9, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 208
    iget-object v10, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    iget-object v11, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v11, v9}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v9}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    sub-long/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    add-long/2addr v7, v1

    goto :goto_0

    :cond_4
    cmp-long v1, v7, v5

    if-lez v1, :cond_5

    .line 219
    iget-wide v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->requested:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    .line 220
    sget-object v1, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    neg-long v2, v7

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 222
    :cond_5
    sget-object v1, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-gtz v1, :cond_0

    if-lez v0, :cond_6

    int-to-long v0, v0

    .line 224
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->request(J)V

    :cond_6
    return-void
.end method

.method protected schedule()V
    .locals 4

    .line 176
    sget-object v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->action:Lrx/functions/Action0;

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    :cond_0
    return-void
.end method
