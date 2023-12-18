.class Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;
.super Ljava/lang/Object;
.source "OnSubscribeToObservableFuture.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeToObservableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToObservableFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final that:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final time:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->that:Ljava/util/concurrent/Future;

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->time:J

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->unit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->that:Ljava/util/concurrent/Future;

    .line 55
    iput-wide p2, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->time:J

    .line 56
    iput-object p4, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->unit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;)Ljava/util/concurrent/Future;
    .locals 0

    .line 42
    iget-object p0, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->that:Ljava/util/concurrent/Future;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 61
    new-instance v0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture$1;-><init>(Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 70
    :try_start_0
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->unit:Ljava/util/concurrent/TimeUnit;

    if-nez v0, :cond_1

    iget-object v0, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->that:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->that:Ljava/util/concurrent/Future;

    iget-wide v2, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->time:J

    invoke-interface {v1, v2, v3, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    :goto_0
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 82
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 86
    :cond_2
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
