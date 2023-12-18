.class final Lrx/internal/operators/OperatorConcat$ConcatSubscriber;
.super Lrx/Subscriber;
.source "OperatorConcat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorConcat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatSubscriber"
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
.field private static final REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/operators/OperatorConcat$ConcatSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field static final WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lrx/internal/operators/OperatorConcat$ConcatSubscriber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final arbiter:Lrx/internal/producers/ProducerArbiter;

.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final current:Lrx/subscriptions/SerialSubscription;

.field volatile currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "Lrx/Observable<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile requested:J

.field volatile wip:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "wip"

    .line 89
    const-class v1, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "requested"

    .line 94
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "TT;>;",
            "Lrx/subscriptions/SerialSubscription;",
            ")V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 80
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 99
    iput-object p1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    .line 100
    iput-object p2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->current:Lrx/subscriptions/SerialSubscription;

    .line 101
    new-instance p1, Lrx/internal/producers/ProducerArbiter;

    invoke-direct {p1}, Lrx/internal/producers/ProducerArbiter;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    .line 102
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 103
    new-instance p1, Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;

    invoke-direct {p1, p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;-><init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V

    invoke-static {p1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->add(Lrx/Subscription;)V

    return-void
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;J)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->requestFromChild(J)V

    return-void
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->decrementRequested()V

    return-void
.end method

.method private decrementRequested()V
    .locals 1

    .line 133
    sget-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    return-void
.end method

.method private requestFromChild(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 121
    :cond_0
    sget-object v2, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-static {v2, p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Ljava/lang/Object;J)J

    move-result-wide v2

    .line 122
    iget-object v4, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v4, p1, p2}, Lrx/internal/producers/ProducerArbiter;->request(J)V

    cmp-long p1, v2, v0

    if-nez p1, :cond_1

    .line 124
    iget-object p1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    if-nez p1, :cond_1

    iget p1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->wip:I

    if-lez p1, :cond_1

    .line 127
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->subscribeNext()V

    :cond_1
    return-void
.end method


# virtual methods
.method completeInner()V
    .locals 2

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    .line 161
    sget-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->subscribeNext()V

    :cond_0
    const-wide/16 v0, 0x1

    .line 164
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->request(J)V

    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 152
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->subscribeNext()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 147
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->unsubscribe()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 79
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object p1, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    .line 140
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->subscribeNext()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-wide/16 v0, 0x2

    .line 115
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->request(J)V

    return-void
.end method

.method subscribeNext()V
    .locals 4

    .line 168
    iget-wide v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->requested:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 169
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 173
    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    .line 174
    new-instance v1, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v1, p0, v2, v3}, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;-><init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;Lrx/Subscriber;Lrx/internal/producers/ProducerArbiter;)V

    iput-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    .line 175
    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->current:Lrx/subscriptions/SerialSubscription;

    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    invoke-virtual {v1, v2}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 176
    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    :cond_2
    :goto_0
    return-void
.end method
