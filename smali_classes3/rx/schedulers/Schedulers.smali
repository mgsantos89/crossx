.class public final Lrx/schedulers/Schedulers;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field private static final INSTANCE:Lrx/schedulers/Schedulers;


# instance fields
.field private final computationScheduler:Lrx/Scheduler;

.field private final ioScheduler:Lrx/Scheduler;

.field private final newThreadScheduler:Lrx/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lrx/schedulers/Schedulers;

    invoke-direct {v0}, Lrx/schedulers/Schedulers;-><init>()V

    sput-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getSchedulersHook()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaSchedulersHook;->getComputationScheduler()Lrx/Scheduler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iput-object v0, p0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Lrx/internal/schedulers/EventLoopsScheduler;

    invoke-direct {v0}, Lrx/internal/schedulers/EventLoopsScheduler;-><init>()V

    iput-object v0, p0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    .line 43
    :goto_0
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getSchedulersHook()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaSchedulersHook;->getIOScheduler()Lrx/Scheduler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    iput-object v0, p0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    goto :goto_1

    .line 47
    :cond_1
    new-instance v0, Lrx/schedulers/CachedThreadScheduler;

    invoke-direct {v0}, Lrx/schedulers/CachedThreadScheduler;-><init>()V

    iput-object v0, p0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    .line 50
    :goto_1
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getSchedulersHook()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaSchedulersHook;->getNewThreadScheduler()Lrx/Scheduler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 52
    iput-object v0, p0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    goto :goto_2

    .line 54
    :cond_2
    invoke-static {}, Lrx/schedulers/NewThreadScheduler;->instance()Lrx/schedulers/NewThreadScheduler;

    move-result-object v0

    iput-object v0, p0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    :goto_2
    return-void
.end method

.method public static computation()Lrx/Scheduler;
    .locals 1

    .line 100
    sget-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    iget-object v0, v0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Executor;)Lrx/Scheduler;
    .locals 1

    .line 138
    new-instance v0, Lrx/schedulers/ExecutorScheduler;

    invoke-direct {v0, p0}, Lrx/schedulers/ExecutorScheduler;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static immediate()Lrx/Scheduler;
    .locals 1

    .line 64
    invoke-static {}, Lrx/schedulers/ImmediateScheduler;->instance()Lrx/schedulers/ImmediateScheduler;

    move-result-object v0

    return-object v0
.end method

.method public static io()Lrx/Scheduler;
    .locals 1

    .line 117
    sget-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    iget-object v0, v0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    return-object v0
.end method

.method public static newThread()Lrx/Scheduler;
    .locals 1

    .line 85
    sget-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    iget-object v0, v0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    return-object v0
.end method

.method public static test()Lrx/schedulers/TestScheduler;
    .locals 1

    .line 127
    new-instance v0, Lrx/schedulers/TestScheduler;

    invoke-direct {v0}, Lrx/schedulers/TestScheduler;-><init>()V

    return-object v0
.end method

.method public static trampoline()Lrx/Scheduler;
    .locals 1

    .line 74
    invoke-static {}, Lrx/schedulers/TrampolineScheduler;->instance()Lrx/schedulers/TrampolineScheduler;

    move-result-object v0

    return-object v0
.end method
