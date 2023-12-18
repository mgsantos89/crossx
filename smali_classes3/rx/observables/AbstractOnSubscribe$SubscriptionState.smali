.class public final Lrx/observables/AbstractOnSubscribe$SubscriptionState;
.super Ljava/lang/Object;
.source "AbstractOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AbstractOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscriptionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private calls:J

.field private hasCompleted:Z

.field private hasOnNext:Z

.field private final inUse:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final parent:Lrx/observables/AbstractOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/AbstractOnSubscribe<",
            "TT;TS;>;"
        }
    .end annotation
.end field

.field private phase:I

.field private final requestCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private stopRequested:Z

.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private theException:Ljava/lang/Throwable;

.field private theValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/observables/AbstractOnSubscribe;Lrx/Subscriber;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AbstractOnSubscribe<",
            "TT;TS;>;",
            "Lrx/Subscriber<",
            "-TT;>;TS;)V"
        }
    .end annotation

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->parent:Lrx/observables/AbstractOnSubscribe;

    .line 411
    iput-object p2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    .line 412
    iput-object p3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->state:Ljava/lang/Object;

    .line 413
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->requestCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 414
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lrx/observables/AbstractOnSubscribe;Lrx/Subscriber;Ljava/lang/Object;Lrx/observables/AbstractOnSubscribe$1;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1, p2, p3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;-><init>(Lrx/observables/AbstractOnSubscribe;Lrx/Subscriber;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 396
    iget-object p0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->requestCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$500(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/Subscriber;
    .locals 0

    .line 396
    iget-object p0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    return-object p0
.end method

.method static synthetic access$600(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/observables/AbstractOnSubscribe;
    .locals 0

    .line 396
    iget-object p0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->parent:Lrx/observables/AbstractOnSubscribe;

    return-object p0
.end method

.method static synthetic access$708(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)J
    .locals 4

    .line 396
    iget-wide v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->calls:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->calls:J

    return-wide v0
.end method


# virtual methods
.method protected accept()Z
    .locals 7

    .line 529
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasOnNext:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theValue:Ljava/lang/Object;

    .line 531
    iput-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theValue:Ljava/lang/Object;

    .line 532
    iput-boolean v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasOnNext:Z

    .line 535
    :try_start_0
    iget-object v4, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 537
    iput-boolean v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    .line 538
    iget-object v4, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    .line 539
    iput-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 541
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 543
    :cond_0
    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    new-instance v5, Lrx/exceptions/CompositeException;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Throwable;

    aput-object v0, v6, v1

    aput-object v4, v6, v3

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v5}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return v3

    .line 548
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    if-eqz v0, :cond_3

    .line 549
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    .line 550
    iput-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 553
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 555
    :cond_2
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    :goto_2
    return v3

    :cond_3
    return v1
.end method

.method public advancePhase()V
    .locals 1

    const/4 v0, 0x1

    .line 445
    invoke-virtual {p0, v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->advancePhaseBy(I)V

    return-void
.end method

.method public advancePhaseBy(I)V
    .locals 1

    .line 454
    iget v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase:I

    add-int/2addr v0, p1

    iput v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase:I

    return-void
.end method

.method public calls()J
    .locals 2

    .line 462
    iget-wide v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->calls:J

    return-wide v0
.end method

.method protected free()V
    .locals 2

    .line 599
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 604
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->parent:Lrx/observables/AbstractOnSubscribe;

    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->state:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/observables/AbstractOnSubscribe;->onTerminated(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onCompleted()V
    .locals 3

    .line 510
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 513
    iput-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    return-void

    .line 511
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already terminated"

    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 495
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    if-nez v0, :cond_0

    .line 498
    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 499
    iput-boolean p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    return-void

    .line 496
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already terminated"

    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    invoke-direct {p1, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 493
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "e != null required"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 473
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasOnNext:Z

    if-nez v0, :cond_1

    .line 476
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    if-nez v0, :cond_0

    .line 479
    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theValue:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 480
    iput-boolean p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasOnNext:Z

    return-void

    .line 477
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already terminated"

    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    invoke-direct {p1, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 474
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onNext not consumed yet!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public phase()I
    .locals 1

    .line 429
    iget v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase:I

    return v0
.end method

.method public phase(I)V
    .locals 0

    .line 438
    iput p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase:I

    return-void
.end method

.method public state()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->state:Ljava/lang/Object;

    return-object v0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 520
    iput-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->stopRequested:Z

    return-void
.end method

.method protected stopRequested()Z
    .locals 1

    .line 573
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->stopRequested:Z

    return v0
.end method

.method protected terminate()V
    .locals 3

    .line 614
    :cond_0
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 618
    :cond_1
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->parent:Lrx/observables/AbstractOnSubscribe;

    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->state:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/observables/AbstractOnSubscribe;->onTerminated(Ljava/lang/Object;)V

    return-void
.end method

.method protected use()Z
    .locals 3

    .line 585
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 589
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 592
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is not reentrant nor threadsafe!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected verify()Z
    .locals 1

    .line 568
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasOnNext:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->stopRequested:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
