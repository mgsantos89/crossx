.class public final Lrx/internal/operators/OperatorBufferWithTime;
.super Ljava/lang/Object;
.source "OperatorBufferWithTime.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;,
        Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "Ljava/util/List<",
        "TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final count:I

.field final scheduler:Lrx/Scheduler;

.field final timeshift:J

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-wide p1, p0, Lrx/internal/operators/OperatorBufferWithTime;->timespan:J

    .line 66
    iput-wide p3, p0, Lrx/internal/operators/OperatorBufferWithTime;->timeshift:J

    .line 67
    iput-object p5, p0, Lrx/internal/operators/OperatorBufferWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    .line 68
    iput p6, p0, Lrx/internal/operators/OperatorBufferWithTime;->count:I

    .line 69
    iput-object p7, p0, Lrx/internal/operators/OperatorBufferWithTime;->scheduler:Lrx/Scheduler;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorBufferWithTime;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object p1

    return-object p1
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 75
    new-instance v1, Lrx/observers/SerializedSubscriber;

    invoke-direct {v1, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 77
    iget-wide v2, p0, Lrx/internal/operators/OperatorBufferWithTime;->timespan:J

    iget-wide v4, p0, Lrx/internal/operators/OperatorBufferWithTime;->timeshift:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 78
    new-instance v2, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;

    invoke-direct {v2, p0, v1, v0}, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;-><init>(Lrx/internal/operators/OperatorBufferWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V

    .line 79
    invoke-virtual {v2, v0}, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->add(Lrx/Subscription;)V

    .line 80
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 81
    invoke-virtual {v2}, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->scheduleExact()V

    return-object v2

    .line 85
    :cond_0
    new-instance v2, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;

    invoke-direct {v2, p0, v1, v0}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;-><init>(Lrx/internal/operators/OperatorBufferWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V

    .line 86
    invoke-virtual {v2, v0}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->add(Lrx/Subscription;)V

    .line 87
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 88
    invoke-virtual {v2}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->startNewChunk()V

    .line 89
    invoke-virtual {v2}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->scheduleChunk()V

    return-object v2
.end method
