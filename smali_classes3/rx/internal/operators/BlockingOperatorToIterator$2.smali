.class final Lrx/internal/operators/BlockingOperatorToIterator$2;
.super Ljava/lang/Object;
.source "BlockingOperatorToIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/BlockingOperatorToIterator;->toIterator(Lrx/Observable;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private buf:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final synthetic val$notifications:Ljava/util/concurrent/BlockingQueue;

.field final synthetic val$subscription:Lrx/Subscription;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;Lrx/Subscription;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->val$notifications:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->val$subscription:Lrx/Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private take()Lrx/Notification;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Notification<",
            "+TT;>;"
        }
    .end annotation

    .line 96
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->val$notifications:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Notification;

    if-eqz v0, :cond_0

    return-object v0

    .line 100
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->val$notifications:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Notification;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 102
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->val$subscription:Lrx/Subscription;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 103
    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->buf:Lrx/Notification;

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0}, Lrx/internal/operators/BlockingOperatorToIterator$2;->take()Lrx/Notification;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->buf:Lrx/Notification;

    .line 78
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->buf:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->isOnError()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->buf:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 79
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->buf:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lrx/internal/operators/BlockingOperatorToIterator$2;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->buf:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 88
    iput-object v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->buf:Lrx/Notification;

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
