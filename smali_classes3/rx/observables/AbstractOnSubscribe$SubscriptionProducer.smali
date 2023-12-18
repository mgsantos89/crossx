.class final Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;
.super Ljava/lang/Object;
.source "AbstractOnSubscribe.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AbstractOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubscriptionProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# instance fields
.field final state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState<",
            "TT;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState<",
            "TT;TS;>;)V"
        }
    .end annotation

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    return-void
.end method

.method synthetic constructor <init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;Lrx/observables/AbstractOnSubscribe$1;)V
    .locals 0

    .line 329
    invoke-direct {p0, p1}, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;-><init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V

    return-void
.end method


# virtual methods
.method protected doNext()Z
    .locals 6

    const-string v0, "No event produced or stop called @ Phase: "

    .line 362
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v1}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->use()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 364
    :try_start_0
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v1}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase()I

    move-result v1

    .line 365
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-static {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$600(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/observables/AbstractOnSubscribe;

    move-result-object v3

    iget-object v4, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3, v4}, Lrx/observables/AbstractOnSubscribe;->next(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V

    .line 366
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->verify()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 369
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->accept()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->stopRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-static {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$708(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->free()V

    const/4 v0, 0x1

    return v0

    .line 370
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->terminate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    :goto_1
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->free()V

    return v2

    .line 367
    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v1}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Calls: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v1}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->calls()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 375
    :try_start_3
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v1}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->terminate()V

    .line 376
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-static {v1}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$500(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/Subscriber;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 379
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v1}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->free()V

    throw v0

    :cond_3
    return v2
.end method

.method public request(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_4

    .line 336
    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-static {v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$400(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_4

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    .line 339
    :cond_0
    iget-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-static {p1}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$500(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/Subscriber;

    move-result-object p1

    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result p1

    if-nez p1, :cond_4

    .line 340
    invoke-virtual {p0}, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->doNext()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 345
    :cond_1
    iget-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-static {p1}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$500(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/Subscriber;

    move-result-object p1

    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result p1

    if-nez p1, :cond_4

    .line 347
    :cond_2
    invoke-virtual {p0}, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->doNext()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 350
    :cond_3
    iget-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-static {p1}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$400(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-lez p1, :cond_4

    iget-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-static {p1}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$500(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/Subscriber;

    move-result-object p1

    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_4
    :goto_0
    return-void
.end method
