.class public abstract Lrx/internal/util/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final maxSize:I

.field private pool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field

.field private schedulerWorker:Lrx/Scheduler$Worker;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x43

    .line 37
    invoke-direct {p0, v0, v0, v1, v2}, Lrx/internal/util/ObjectPool;-><init>(IIJ)V

    return-void
.end method

.method private constructor <init>(IIJ)V
    .locals 8

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p2, p0, Lrx/internal/util/ObjectPool;->maxSize:I

    .line 55
    invoke-direct {p0, p1}, Lrx/internal/util/ObjectPool;->initialize(I)V

    .line 57
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/util/ObjectPool;->schedulerWorker:Lrx/Scheduler$Worker;

    .line 58
    new-instance v2, Lrx/internal/util/ObjectPool$1;

    invoke-direct {v2, p0, p1, p2}, Lrx/internal/util/ObjectPool$1;-><init>(Lrx/internal/util/ObjectPool;II)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v3, p3

    move-wide v5, p3

    invoke-virtual/range {v1 .. v7}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    return-void
.end method

.method static synthetic access$000(Lrx/internal/util/ObjectPool;)Ljava/util/Queue;
    .locals 0

    .line 30
    iget-object p0, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    return-object p0
.end method

.method private initialize(I)V
    .locals 3

    .line 124
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Lrx/internal/util/unsafe/MpmcArrayQueue;

    iget v1, p0, Lrx/internal/util/ObjectPool;->maxSize:I

    const/16 v2, 0x400

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Lrx/internal/util/unsafe/MpmcArrayQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 131
    iget-object v1, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    invoke-virtual {p0}, Lrx/internal/util/ObjectPool;->createObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public borrowObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lrx/internal/util/ObjectPool;->createObject()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected abstract createObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public returnObject(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 113
    iget-object v0, p0, Lrx/internal/util/ObjectPool;->schedulerWorker:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    return-void
.end method
