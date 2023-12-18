.class final Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/CachedThreadScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CachedWorkerPool"
.end annotation


# static fields
.field private static INSTANCE:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;


# instance fields
.field private final evictExpiredWorkerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lrx/schedulers/CachedThreadScheduler$ThreadWorker;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 59
    new-instance v0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    const-wide/16 v1, 0x3c

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->INSTANCE:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    return-void
.end method

.method constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    iput-wide v4, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    .line 46
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 p1, 0x1

    .line 48
    invoke-static {}, Lrx/schedulers/CachedThreadScheduler;->access$000()Lrx/internal/util/RxThreadFactory;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictExpiredWorkerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 49
    new-instance v1, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool$1;

    invoke-direct {v1, p0}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool$1;-><init>(Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, v4

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic access$200()Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;
    .locals 1

    .line 39
    sget-object v0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->INSTANCE:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    return-object v0
.end method


# virtual methods
.method evictExpiredWorkers()V
    .locals 6

    .line 83
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->now()J

    move-result-wide v0

    .line 86
    iget-object v2, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 87
    invoke-virtual {v3}, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->getExpirationTime()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_1

    .line 88
    iget-object v4, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-virtual {v3}, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->unsubscribe()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method get()Lrx/schedulers/CachedThreadScheduler$ThreadWorker;
    .locals 2

    .line 64
    :cond_0
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    if-eqz v0, :cond_0

    return-object v0

    .line 72
    :cond_1
    new-instance v0, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    invoke-static {}, Lrx/schedulers/CachedThreadScheduler;->access$100()Lrx/internal/util/RxThreadFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method now()J
    .locals 2

    .line 101
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method release(Lrx/schedulers/CachedThreadScheduler$ThreadWorker;)V
    .locals 4

    .line 77
    invoke-virtual {p0}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->setExpirationTime(J)V

    .line 79
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
