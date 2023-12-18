.class public Lrx/internal/schedulers/EventLoopsScheduler;
.super Lrx/Scheduler;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;,
        Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;,
        Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;
    }
.end annotation


# static fields
.field static final KEY_MAX_THREADS:Ljava/lang/String; = "rx.scheduler.max-computation-threads"

.field static final MAX_THREADS:I

.field private static final THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

.field private static final THREAD_NAME_PREFIX:Ljava/lang/String; = "RxComputationThreadPool-"


# instance fields
.field final pool:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxComputationThreadPool-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/internal/schedulers/EventLoopsScheduler;->THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    const-string v0, "rx.scheduler.max-computation-threads"

    const/4 v1, 0x0

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 38
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    if-lez v0, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    move v0, v1

    .line 45
    :cond_1
    sput v0, Lrx/internal/schedulers/EventLoopsScheduler;->MAX_THREADS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 75
    new-instance v0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-direct {v0}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler;->pool:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    return-void
.end method

.method static synthetic access$000()Lrx/internal/util/RxThreadFactory;
    .locals 1

    .line 25
    sget-object v0, Lrx/internal/schedulers/EventLoopsScheduler;->THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    return-object v0
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .locals 2

    .line 80
    new-instance v0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;

    iget-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler;->pool:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-virtual {v1}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->getEventLoop()Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;-><init>(Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;)V

    return-object v0
.end method

.method public scheduleDirect(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 4

    .line 90
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler;->pool:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-virtual {v0}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->getEventLoop()Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    move-result-object v0

    const-wide/16 v1, -0x1

    .line 91
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v1, v2, v3}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;->scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object p1

    return-object p1
.end method
