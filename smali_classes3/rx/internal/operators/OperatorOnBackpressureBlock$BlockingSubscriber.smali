.class final Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;
.super Lrx/Subscriber;
.source "OperatorOnBackpressureBlock.java"

# interfaces
.implements Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorOnBackpressureBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BlockingSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;",
        "Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final manager:Lrx/internal/util/BackpressureDrainManager;

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 42
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 47
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 48
    iput-object p2, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->child:Lrx/Subscriber;

    .line 49
    new-instance p1, Lrx/internal/util/BackpressureDrainManager;

    invoke-direct {p1, p0}, Lrx/internal/util/BackpressureDrainManager;-><init>(Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;)V

    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)Z
    .locals 2

    .line 76
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, v1, p1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public complete(Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    :goto_0
    return-void
.end method

.method init()V
    .locals 2

    .line 52
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 53
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 72
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v0}, Lrx/internal/util/BackpressureDrainManager;->terminateAndDrain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v0, p1}, Lrx/internal/util/BackpressureDrainManager;->terminateAndDrain(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 58
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 59
    iget-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {p1}, Lrx/internal/util/BackpressureDrainManager;->drain()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public peek()Ljava/lang/Object;
    .locals 1

    .line 88
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1

    .line 92
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
