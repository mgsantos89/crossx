.class final Lrx/schedulers/GenericScheduledExecutorService;
.super Ljava/lang/Object;
.source "GenericScheduledExecutorService.java"


# static fields
.field private static final INSTANCE:Lrx/schedulers/GenericScheduledExecutorService;

.field private static final THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

.field private static final THREAD_NAME_PREFIX:Ljava/lang/String; = "RxScheduledExecutorPool-"


# instance fields
.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxScheduledExecutorPool-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/schedulers/GenericScheduledExecutorService;->THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    .line 38
    new-instance v0, Lrx/schedulers/GenericScheduledExecutorService;

    invoke-direct {v0}, Lrx/schedulers/GenericScheduledExecutorService;-><init>()V

    sput-object v0, Lrx/schedulers/GenericScheduledExecutorService;->INSTANCE:Lrx/schedulers/GenericScheduledExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 44
    div-int/lit8 v0, v0, 0x2

    :cond_0
    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    move v0, v1

    .line 50
    :cond_1
    sget-object v1, Lrx/schedulers/GenericScheduledExecutorService;->THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lrx/internal/schedulers/NewThreadWorker;->tryEnableCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    instance-of v1, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v1, :cond_2

    .line 53
    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {v1}, Lrx/internal/schedulers/NewThreadWorker;->registerExecutor(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    .line 56
    :cond_2
    iput-object v0, p0, Lrx/schedulers/GenericScheduledExecutorService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static getInstance()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 65
    sget-object v0, Lrx/schedulers/GenericScheduledExecutorService;->INSTANCE:Lrx/schedulers/GenericScheduledExecutorService;

    iget-object v0, v0, Lrx/schedulers/GenericScheduledExecutorService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
