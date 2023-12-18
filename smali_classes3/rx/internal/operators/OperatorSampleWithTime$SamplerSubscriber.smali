.class final Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;
.super Lrx/Subscriber;
.source "OperatorSampleWithTime.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSampleWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SamplerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;",
        "Lrx/functions/Action0;"
    }
.end annotation


# static fields
.field private static final EMPTY_TOKEN:Ljava/lang/Object;

.field static final VALUE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->EMPTY_TOKEN:Ljava/lang/Object;

    .line 69
    const-class v0, Ljava/lang/Object;

    const-string v1, "value"

    const-class v2, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->VALUE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 66
    sget-object v0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->EMPTY_TOKEN:Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->value:Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->subscriber:Lrx/Subscriber;

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 99
    sget-object v0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->VALUE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->EMPTY_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_0

    .line 104
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 106
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 93
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 94
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->unsubscribe()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 88
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->unsubscribe()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->value:Ljava/lang/Object;

    return-void
.end method

.method public onStart()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 77
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->request(J)V

    return-void
.end method
