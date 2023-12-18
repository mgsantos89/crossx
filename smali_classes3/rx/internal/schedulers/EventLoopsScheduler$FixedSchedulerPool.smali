.class final Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;
.super Ljava/lang/Object;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/EventLoopsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FixedSchedulerPool"
.end annotation


# instance fields
.field final cores:I

.field final eventLoops:[Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

.field n:J


# direct methods
.method constructor <init>()V
    .locals 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget v0, Lrx/internal/schedulers/EventLoopsScheduler;->MAX_THREADS:I

    iput v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->cores:I

    .line 56
    new-array v0, v0, [Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    iput-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->eventLoops:[Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    const/4 v0, 0x0

    .line 57
    :goto_0
    iget v1, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->cores:I

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->eventLoops:[Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    new-instance v2, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    invoke-static {}, Lrx/internal/schedulers/EventLoopsScheduler;->access$000()Lrx/internal/util/RxThreadFactory;

    move-result-object v3

    invoke-direct {v2, v3}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getEventLoop()Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;
    .locals 5

    .line 64
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->eventLoops:[Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    iget-wide v1, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->n:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->n:J

    iget v3, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->cores:I

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    aget-object v0, v0, v1

    return-object v0
.end method
