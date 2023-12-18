.class final Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;
.super Ljava/lang/Object;
.source "OnSubscribeCombineLatest.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MultiSourceProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final WIP:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final buffer:Lrx/internal/util/RxRingBuffer;

.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private final collectedValues:[Ljava/lang/Object;

.field private final combinator:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN<",
            "+TR;>;"
        }
    .end annotation
.end field

.field private final completion:Ljava/util/BitSet;

.field private volatile completionCount:I

.field private volatile counter:J

.field private final haveValues:Ljava/util/BitSet;

.field private volatile haveValuesCount:I

.field private final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lrx/Observable<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field private final started:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 96
    const-class v0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;

    const-string v1, "counter"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->WIP:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Ljava/util/List;Lrx/functions/FuncN;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;",
            "Ljava/util/List<",
            "+",
            "Lrx/Observable<",
            "+TT;>;>;",
            "Lrx/functions/FuncN<",
            "+TR;>;)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 86
    invoke-static {}, Lrx/internal/util/RxRingBuffer;->getSpmcInstance()Lrx/internal/util/RxRingBuffer;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->buffer:Lrx/internal/util/RxRingBuffer;

    .line 100
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->sources:Ljava/util/List;

    .line 101
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->child:Lrx/Subscriber;

    .line 102
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->combinator:Lrx/functions/FuncN;

    .line 104
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    .line 105
    new-array p2, p1, [Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;

    .line 106
    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->collectedValues:[Ljava/lang/Object;

    .line 107
    new-instance p2, Ljava/util/BitSet;

    invoke-direct {p2, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->haveValues:Ljava/util/BitSet;

    .line 108
    new-instance p2, Ljava/util/BitSet;

    invoke-direct {p2, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->completion:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public onCompleted(IZ)V
    .locals 2

    if-nez p2, :cond_0

    .line 169
    iget-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->child:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return-void

    .line 173
    :cond_0
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->completion:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 175
    iget-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->completion:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 176
    iget p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->completionCount:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->completionCount:I

    .line 177
    iget p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->completionCount:I

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->collectedValues:[Ljava/lang/Object;

    array-length v1, v1

    if-ne p1, v1, :cond_1

    move v0, p2

    .line 179
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 181
    iget-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->buffer:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {p1}, Lrx/internal/util/RxRingBuffer;->onCompleted()V

    .line 182
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->tick()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 179
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(ILjava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .line 190
    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->haveValues:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->haveValues:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 193
    iget v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->haveValuesCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->haveValuesCount:I

    .line 195
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->collectedValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 196
    iget p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->haveValuesCount:I

    iget-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->collectedValues:[Ljava/lang/Object;

    array-length v0, p2

    if-eq p1, v0, :cond_1

    .line 198
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    return p1

    .line 201
    :cond_1
    :try_start_1
    iget-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->buffer:Lrx/internal/util/RxRingBuffer;

    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->combinator:Lrx/functions/FuncN;

    invoke-interface {v0, p2}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 205
    :try_start_2
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->onError(Ljava/lang/Throwable;)V

    .line 208
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->tick()V

    return v1

    :catchall_1
    move-exception p1

    .line 208
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public request(J)V
    .locals 6

    .line 113
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 114
    iget-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    sget p1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->sources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr p1, v1

    .line 122
    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->sources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    .line 123
    :goto_0
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->sources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 124
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->sources:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Observable;

    .line 126
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->sources:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    if-ne p2, v3, :cond_0

    add-int v3, p1, v1

    goto :goto_1

    :cond_0
    move v3, p1

    .line 129
    :goto_1
    new-instance v4, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;

    iget-object v5, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->child:Lrx/Subscriber;

    invoke-direct {v4, p2, v3, v5, p0}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;-><init>(IILrx/Subscriber;Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;)V

    .line 130
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;

    aput-object v4, v3, p2

    .line 131
    invoke-virtual {v2, v4}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->tick()V

    return-void
.end method

.method tick()V
    .locals 7

    .line 142
    sget-object v0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->WIP:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 146
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_2

    .line 147
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->buffer:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v4}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 149
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->buffer:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v5, v4}, Lrx/internal/util/RxRingBuffer;->isCompleted(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->child:Lrx/Subscriber;

    invoke-virtual {v4}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->buffer:Lrx/internal/util/RxRingBuffer;

    iget-object v6, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->child:Lrx/Subscriber;

    invoke-virtual {v5, v4, v6}, Lrx/internal/util/RxRingBuffer;->accept(Ljava/lang/Object;Lrx/Observer;)Z

    add-int/lit8 v1, v1, 0x1

    .line 154
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 158
    :cond_2
    :goto_0
    sget-object v4, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->WIP:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gtz v4, :cond_0

    if-lez v1, :cond_3

    .line 160
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    int-to-long v5, v1

    .line 161
    invoke-virtual {v4, v5, v6}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->requestUpTo(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
