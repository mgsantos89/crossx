.class final Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;
.super Lrx/Subscriber;
.source "OperatorRetryWithPredicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorRetryWithPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "Lrx/Observable<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field static final ATTEMPTS_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile attempts:I

.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final inner:Lrx/Scheduler$Worker;

.field final pa:Lrx/internal/producers/ProducerArbiter;

.field final predicate:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final serialSubscription:Lrx/subscriptions/SerialSubscription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const-class v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    const-string v1, "attempts"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->ATTEMPTS_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func2;Lrx/Scheduler$Worker;Lrx/subscriptions/SerialSubscription;Lrx/internal/producers/ProducerArbiter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;",
            "Lrx/functions/Func2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lrx/Scheduler$Worker;",
            "Lrx/subscriptions/SerialSubscription;",
            "Lrx/internal/producers/ProducerArbiter;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 66
    iput-object p1, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->child:Lrx/Subscriber;

    .line 67
    iput-object p2, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->predicate:Lrx/functions/Func2;

    .line 68
    iput-object p3, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->inner:Lrx/Scheduler$Worker;

    .line 69
    iput-object p4, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->serialSubscription:Lrx/subscriptions/SerialSubscription;

    .line 70
    iput-object p5, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->pa:Lrx/internal/producers/ProducerArbiter;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "TT;>;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->inner:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;-><init>(Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;Lrx/Observable;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    return-void
.end method
