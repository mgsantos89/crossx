.class final Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;
.super Lrx/Subscriber;
.source "OperatorTimeoutBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorTimeoutBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutSubscriber"
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
.field static final ACTUAL_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field static final TERMINATED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile actual:J

.field private final gate:Ljava/lang/Object;

.field private final inner:Lrx/Scheduler$Worker;

.field private final other:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final serial:Lrx/subscriptions/SerialSubscription;

.field private final serializedSubscriber:Lrx/observers/SerializedSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observers/SerializedSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile terminated:I

.field private final timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "terminated"

    .line 97
    const-class v1, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->TERMINATED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "actual"

    .line 100
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->ACTUAL_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method private constructor <init>(Lrx/observers/SerializedSubscriber;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/subscriptions/SerialSubscription;Lrx/Observable;Lrx/Scheduler$Worker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observers/SerializedSubscriber<",
            "TT;>;",
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub<",
            "TT;>;",
            "Lrx/subscriptions/SerialSubscription;",
            "Lrx/Observable<",
            "+TT;>;",
            "Lrx/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->gate:Ljava/lang/Object;

    .line 109
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    .line 110
    iput-object p2, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;

    .line 111
    iput-object p3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    .line 112
    iput-object p4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->other:Lrx/Observable;

    .line 113
    iput-object p5, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->inner:Lrx/Scheduler$Worker;

    return-void
.end method

.method synthetic constructor <init>(Lrx/observers/SerializedSubscriber;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/subscriptions/SerialSubscription;Lrx/Observable;Lrx/Scheduler$Worker;Lrx/internal/operators/OperatorTimeoutBase$1;)V
    .locals 0

    .line 80
    invoke-direct/range {p0 .. p5}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;-><init>(Lrx/observers/SerializedSubscriber;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/subscriptions/SerialSubscription;Lrx/Observable;Lrx/Scheduler$Worker;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .line 148
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->gate:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    sget-object v1, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->TERMINATED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 152
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 154
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 155
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 152
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 134
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->gate:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    sget-object v1, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->TERMINATED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 138
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 140
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 141
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 138
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->gate:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    iget v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:I

    if-nez v1, :cond_0

    .line 121
    sget-object v1, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->ACTUAL_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 124
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 126
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onNext(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;

    iget-wide v2, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->actual:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->inner:Lrx/Scheduler$Worker;

    invoke-interface {v1, p0, v2, p1, v3}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/Subscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 124
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onTimeout(J)V
    .locals 3

    .line 162
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->gate:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-wide v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->actual:J

    cmp-long p1, p1, v1

    if-nez p1, :cond_0

    sget-object p1, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->TERMINATED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 166
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 168
    iget-object p1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->other:Lrx/Observable;

    if-nez p1, :cond_1

    .line 169
    iget-object p1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    new-instance p2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {p1, p2}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 171
    :cond_1
    iget-object p2, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {p1, p2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 172
    iget-object p1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    iget-object p2, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {p1, p2}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 166
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
