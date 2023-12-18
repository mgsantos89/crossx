.class final Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;
.super Lrx/Subscriber;
.source "BlockingOperatorLatest.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BlockingOperatorLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestObserverIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "Lrx/Notification<",
        "+TT;>;>;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final REFERENCE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;",
            "Lrx/Notification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field iNotif:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final notify:Ljava/util/concurrent/Semaphore;

.field volatile value:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    const-class v0, Lrx/Notification;

    const-string v1, "value"

    const-class v2, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->REFERENCE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->notify:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 91
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lrx/Notification;->isOnError()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 94
    :cond_1
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 95
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    if-nez v0, :cond_4

    .line 97
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->notify:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    sget-object v0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->REFERENCE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Notification;

    .line 107
    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    .line 108
    invoke-virtual {v0}, Lrx/Notification;->isOnError()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 109
    :cond_3
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {p0}, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->unsubscribe()V

    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 101
    invoke-static {v0}, Lrx/Notification;->createOnError(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    .line 102
    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 113
    :cond_4
    :goto_1
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->isOnNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 121
    iput-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

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

    .line 59
    check-cast p1, Lrx/Notification;

    invoke-virtual {p0, p1}, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->onNext(Lrx/Notification;)V

    return-void
.end method

.method public onNext(Lrx/Notification;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification<",
            "+TT;>;)V"
        }
    .end annotation

    .line 70
    sget-object v0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->REFERENCE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->notify:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1
    return-void
.end method

.method public remove()V
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only iterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
