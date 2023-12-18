.class final Lrx/internal/operators/OperatorZip$Zip;
.super Ljava/lang/Object;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Zip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/operators/OperatorZip$Zip;",
            ">;"
        }
    .end annotation
.end field

.field static final THRESHOLD:I


# instance fields
.field private final child:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private final childSubscription:Lrx/subscriptions/CompositeSubscription;

.field volatile counter:J

.field emitted:I

.field private observers:[Ljava/lang/Object;

.field private requested:Ljava/util/concurrent/atomic/AtomicLong;

.field private final zipFunction:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 187
    const-class v0, Lrx/internal/operators/OperatorZip$Zip;

    const-string v1, "counter"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorZip$Zip;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 189
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lrx/internal/operators/OperatorZip$Zip;->THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/FuncN;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;",
            "Lrx/functions/FuncN<",
            "+TR;>;)V"
        }
    .end annotation

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    const/4 v1, 0x0

    .line 190
    iput v1, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    .line 197
    iput-object p1, p0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    .line 198
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$Zip;->zipFunction:Lrx/functions/FuncN;

    .line 199
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorZip$Zip;)Lrx/Observer;
    .locals 0

    .line 179
    iget-object p0, p0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    return-object p0
.end method


# virtual methods
.method public start([Lrx/Observable;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 3

    .line 204
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    .line 205
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$Zip;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p2, 0x0

    move v0, p2

    .line 206
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 207
    new-instance v1, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;-><init>(Lrx/internal/operators/OperatorZip$Zip;)V

    .line 208
    iget-object v2, p0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 209
    iget-object v2, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    :goto_1
    array-length v0, p1

    if-ge p2, v0, :cond_1

    .line 213
    aget-object v0, p1, p2

    iget-object v1, p0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    aget-object v1, v1, p2

    check-cast v1, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method tick()V
    .locals 14

    .line 226
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    sget-object v1, Lrx/internal/operators/OperatorZip$Zip;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_9

    .line 232
    array-length v1, v0

    .line 233
    iget-object v2, p0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    .line 234
    iget-object v5, p0, Lrx/internal/operators/OperatorZip$Zip;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 238
    :cond_1
    :goto_0
    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v9, v7

    move v10, v8

    :goto_1
    if-ge v9, v1, :cond_4

    .line 241
    aget-object v11, v0, v9

    check-cast v11, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    iget-object v11, v11, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    .line 242
    invoke-virtual {v11}, Lrx/internal/util/RxRingBuffer;->peek()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_2

    move v10, v7

    goto :goto_2

    .line 249
    :cond_2
    invoke-virtual {v11, v12}, Lrx/internal/util/RxRingBuffer;->isCompleted(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 250
    invoke-interface {v2}, Lrx/Observer;->onCompleted()V

    .line 253
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    return-void

    .line 256
    :cond_3
    invoke-virtual {v11, v12}, Lrx/internal/util/RxRingBuffer;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v6, v9

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 260
    :cond_4
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    cmp-long v9, v11, v3

    if-lez v9, :cond_8

    if-eqz v10, :cond_8

    .line 263
    :try_start_0
    iget-object v9, p0, Lrx/internal/operators/OperatorZip$Zip;->zipFunction:Lrx/functions/FuncN;

    invoke-interface {v9, v6}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 265
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 266
    iget v9, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    add-int/2addr v9, v8

    iput v9, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    array-length v6, v0

    move v8, v7

    :goto_3
    if-ge v8, v6, :cond_6

    aget-object v9, v0, v8

    .line 273
    check-cast v9, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    iget-object v9, v9, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    .line 274
    invoke-virtual {v9}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    .line 276
    invoke-virtual {v9}, Lrx/internal/util/RxRingBuffer;->peek()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lrx/internal/util/RxRingBuffer;->isCompleted(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 278
    invoke-interface {v2}, Lrx/Observer;->onCompleted()V

    .line 280
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    return-void

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 284
    :cond_6
    iget v6, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    sget v8, Lrx/internal/operators/OperatorZip$Zip;->THRESHOLD:I

    if-le v6, v8, :cond_1

    .line 285
    array-length v6, v0

    move v8, v7

    :goto_4
    if-ge v8, v6, :cond_7

    aget-object v9, v0, v8

    .line 286
    check-cast v9, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    iget v10, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->requestMore(J)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 288
    :cond_7
    iput v7, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 268
    invoke-static {v0, v6}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 294
    :cond_8
    sget-object v6, Lrx/internal/operators/OperatorZip$Zip;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-gtz v6, :cond_1

    :cond_9
    return-void
.end method
