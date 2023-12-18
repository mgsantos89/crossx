.class Lrx/internal/operators/BlockingOperatorNext$NextObserver;
.super Lrx/Subscriber;
.source "BlockingOperatorNext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BlockingOperatorNext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NextObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "Lrx/Notification<",
        "+TT;>;>;"
    }
.end annotation


# static fields
.field static final WAITING_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lrx/internal/operators/BlockingOperatorNext$NextObserver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final buf:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lrx/Notification<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field volatile waiting:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 153
    const-class v0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;

    const-string v1, "waiting"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->WAITING_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 148
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 149
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/BlockingOperatorNext$1;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 148
    check-cast p1, Lrx/Notification;

    invoke-virtual {p0, p1}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->onNext(Lrx/Notification;)V

    return-void
.end method

.method public onNext(Lrx/Notification;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification<",
            "+TT;>;)V"
        }
    .end annotation

    .line 169
    sget-object v0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->WAITING_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lrx/Notification;->isOnNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Notification;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lrx/Notification;->isOnNext()Z

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method setWaiting(I)V
    .locals 0

    .line 188
    iput p1, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->waiting:I

    return-void
.end method

.method public takeNext()Lrx/Notification;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Notification<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 184
    invoke-virtual {p0, v0}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->setWaiting(I)V

    .line 185
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Notification;

    return-object v0
.end method
