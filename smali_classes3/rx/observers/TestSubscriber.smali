.class public Lrx/observers/TestSubscriber;
.super Lrx/Subscriber;
.source "TestSubscriber.java"


# annotations
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
.field private static final INERT:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final initialRequest:J

.field private volatile lastSeenThread:Ljava/lang/Thread;

.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private final testObserver:Lrx/observers/TestObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lrx/observers/TestSubscriber$1;

    invoke-direct {v0}, Lrx/observers/TestSubscriber$1;-><init>()V

    sput-object v0, Lrx/observers/TestSubscriber;->INERT:Lrx/Observer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 95
    invoke-direct {p0, v0, v1}, Lrx/observers/TestSubscriber;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 66
    sget-object v0, Lrx/observers/TestSubscriber;->INERT:Lrx/Observer;

    invoke-direct {p0, v0, p1, p2}, Lrx/observers/TestSubscriber;-><init>(Lrx/Observer;J)V

    return-void
.end method

.method public constructor <init>(Lrx/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer<",
            "TT;>;)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 91
    invoke-direct {p0, p1, v0, v1}, Lrx/observers/TestSubscriber;-><init>(Lrx/Observer;J)V

    return-void
.end method

.method public constructor <init>(Lrx/Observer;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer<",
            "TT;>;J)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lrx/observers/TestSubscriber;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    new-instance v0, Lrx/observers/TestObserver;

    invoke-direct {v0, p1}, Lrx/observers/TestObserver;-><init>(Lrx/Observer;)V

    iput-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    .line 83
    iput-wide p2, p0, Lrx/observers/TestSubscriber;->initialRequest:J

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "TT;>;)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 87
    invoke-direct {p0, p1, v0, v1}, Lrx/observers/TestSubscriber;-><init>(Lrx/Observer;J)V

    return-void
.end method

.method public static create()Lrx/observers/TestSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/observers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 100
    new-instance v0, Lrx/observers/TestSubscriber;

    invoke-direct {v0}, Lrx/observers/TestSubscriber;-><init>()V

    return-object v0
.end method

.method public static create(J)Lrx/observers/TestSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)",
            "Lrx/observers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 105
    new-instance v0, Lrx/observers/TestSubscriber;

    invoke-direct {v0, p0, p1}, Lrx/observers/TestSubscriber;-><init>(J)V

    return-object v0
.end method

.method public static create(Lrx/Observer;)Lrx/observers/TestSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observer<",
            "TT;>;)",
            "Lrx/observers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 120
    new-instance v0, Lrx/observers/TestSubscriber;

    invoke-direct {v0, p0}, Lrx/observers/TestSubscriber;-><init>(Lrx/Observer;)V

    return-object v0
.end method

.method public static create(Lrx/Observer;J)Lrx/observers/TestSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observer<",
            "TT;>;J)",
            "Lrx/observers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 110
    new-instance v0, Lrx/observers/TestSubscriber;

    invoke-direct {v0, p0, p1, p2}, Lrx/observers/TestSubscriber;-><init>(Lrx/Observer;J)V

    return-object v0
.end method

.method public static create(Lrx/Subscriber;)Lrx/observers/TestSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscriber<",
            "TT;>;)",
            "Lrx/observers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 115
    new-instance v0, Lrx/observers/TestSubscriber;

    invoke-direct {v0, p0}, Lrx/observers/TestSubscriber;-><init>(Lrx/Subscriber;)V

    return-object v0
.end method


# virtual methods
.method public assertCompleted()V
    .locals 4

    .line 350
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0}, Lrx/observers/TestObserver;->getOnCompletedEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 355
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Completed multiple times: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 352
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Not completed!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public assertError(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0}, Lrx/observers/TestObserver;->getOnErrorEvents()Ljava/util/List;

    move-result-object v0

    .line 387
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 390
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    const/4 v1, 0x0

    .line 395
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 396
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exceptions differ; expected: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", actual: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 397
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v2, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 398
    throw v2

    .line 391
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multiple errors: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 392
    new-instance v1, Lrx/exceptions/CompositeException;

    invoke-direct {v1, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 393
    throw p1

    .line 388
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "No errors"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public assertError(Ljava/lang/Throwable;)V
    .locals 5

    .line 412
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0}, Lrx/observers/TestObserver;->getOnErrorEvents()Ljava/util/List;

    move-result-object v0

    .line 413
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    const/4 v1, 0x0

    .line 421
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 422
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exceptions differ; expected: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", actual: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 423
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v2, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 424
    throw v2

    .line 417
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multiple errors: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 418
    new-instance v1, Lrx/exceptions/CompositeException;

    invoke-direct {v1, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 419
    throw p1

    .line 414
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "No errors"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public assertNoErrors()V
    .locals 4

    .line 261
    invoke-virtual {p0}, Lrx/observers/TestSubscriber;->getOnErrorEvents()Ljava/util/List;

    move-result-object v0

    .line 262
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 263
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected onError events: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lrx/observers/TestSubscriber;->getOnErrorEvents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 264
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 265
    invoke-virtual {p0}, Lrx/observers/TestSubscriber;->getOnErrorEvents()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0

    .line 267
    :cond_0
    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 269
    :goto_0
    throw v1

    :cond_1
    return-void
.end method

.method public assertNoTerminalEvent()V
    .locals 7

    .line 436
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0}, Lrx/observers/TestObserver;->getOnErrorEvents()Ljava/util/List;

    move-result-object v0

    .line 437
    iget-object v1, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v1}, Lrx/observers/TestObserver;->getOnCompletedEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 438
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 439
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, " completion events instead of none"

    const-string v4, " errors and "

    const-string v5, "Found "

    if-nez v2, :cond_3

    .line 442
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2

    .line 443
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 444
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v2, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 445
    throw v2

    .line 447
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 448
    new-instance v1, Lrx/exceptions/CompositeException;

    invoke-direct {v1, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 449
    throw v2

    .line 440
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public assertNoValues()V
    .locals 4

    .line 462
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0}, Lrx/observers/TestObserver;->getOnNextEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 464
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No onNext events expected yet some received: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public assertNotCompleted()V
    .locals 4

    .line 367
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0}, Lrx/observers/TestObserver;->getOnCompletedEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-gt v0, v1, :cond_0

    return-void

    .line 372
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Completed multiple times: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 369
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Completed!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public assertReceivedOnNext(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0, p1}, Lrx/observers/TestObserver;->assertReceivedOnNext(Ljava/util/List;)V

    return-void
.end method

.method public assertTerminalEvent()V
    .locals 1

    .line 239
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0}, Lrx/observers/TestObserver;->assertTerminalEvent()V

    return-void
.end method

.method public assertUnsubscribed()V
    .locals 2

    .line 249
    invoke-virtual {p0}, Lrx/observers/TestSubscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Not unsubscribed."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public assertValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 504
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrx/observers/TestSubscriber;->assertReceivedOnNext(Ljava/util/List;)V

    return-void
.end method

.method public assertValueCount(I)V
    .locals 4

    .line 477
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0}, Lrx/observers/TestObserver;->getOnNextEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 479
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Number of onNext events differ; expected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", actual: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public varargs assertValues([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 492
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrx/observers/TestSubscriber;->assertReceivedOnNext(Ljava/util/List;)V

    return-void
.end method

.method public awaitTerminalEvent()V
    .locals 3

    .line 283
    :try_start_0
    iget-object v0, p0, Lrx/observers/TestSubscriber;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 285
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public awaitTerminalEvent(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 302
    :try_start_0
    iget-object v0, p0, Lrx/observers/TestSubscriber;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 304
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Interrupted"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public awaitTerminalEventAndUnsubscribeOnTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 321
    :try_start_0
    iget-object v0, p0, Lrx/observers/TestSubscriber;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 324
    invoke-virtual {p0}, Lrx/observers/TestSubscriber;->unsubscribe()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    invoke-virtual {p0}, Lrx/observers/TestSubscriber;->unsubscribe()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getLastSeenThread()Ljava/lang/Thread;
    .locals 1

    .line 339
    iget-object v0, p0, Lrx/observers/TestSubscriber;->lastSeenThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getOnCompletedEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrx/Notification<",
            "TT;>;>;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0}, Lrx/observers/TestObserver;->getOnCompletedEvents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOnErrorEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0}, Lrx/observers/TestObserver;->getOnErrorEvents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOnNextEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0}, Lrx/observers/TestObserver;->getOnNextEvents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onCompleted()V
    .locals 2

    .line 138
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lrx/observers/TestSubscriber;->lastSeenThread:Ljava/lang/Thread;

    .line 139
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0}, Lrx/observers/TestObserver;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v0, p0, Lrx/observers/TestSubscriber;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/observers/TestSubscriber;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 167
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lrx/observers/TestSubscriber;->lastSeenThread:Ljava/lang/Thread;

    .line 168
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0, p1}, Lrx/observers/TestObserver;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object p1, p0, Lrx/observers/TestSubscriber;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lrx/observers/TestSubscriber;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 197
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lrx/observers/TestSubscriber;->lastSeenThread:Ljava/lang/Thread;

    .line 198
    iget-object v0, p0, Lrx/observers/TestSubscriber;->testObserver:Lrx/observers/TestObserver;

    invoke-virtual {v0, p1}, Lrx/observers/TestObserver;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 125
    iget-wide v0, p0, Lrx/observers/TestSubscriber;->initialRequest:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 126
    invoke-virtual {p0, v0, v1}, Lrx/observers/TestSubscriber;->requestMore(J)V

    :cond_0
    return-void
.end method

.method public requestMore(J)V
    .locals 0

    .line 208
    invoke-virtual {p0, p1, p2}, Lrx/observers/TestSubscriber;->request(J)V

    return-void
.end method
