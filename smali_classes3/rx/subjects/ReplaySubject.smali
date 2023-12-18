.class public final Lrx/subjects/ReplaySubject;
.super Lrx/subjects/Subject;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/ReplaySubject$EmptyEvictionPolicy;,
        Lrx/subjects/ReplaySubject$NodeList;,
        Lrx/subjects/ReplaySubject$TimedOnAdd;,
        Lrx/subjects/ReplaySubject$DefaultOnAdd;,
        Lrx/subjects/ReplaySubject$RemoveTimestamped;,
        Lrx/subjects/ReplaySubject$AddTimestamped;,
        Lrx/subjects/ReplaySubject$PairEvictionPolicy;,
        Lrx/subjects/ReplaySubject$TimeEvictionPolicy;,
        Lrx/subjects/ReplaySubject$SizeEvictionPolicy;,
        Lrx/subjects/ReplaySubject$EvictionPolicy;,
        Lrx/subjects/ReplaySubject$ReplayState;,
        Lrx/subjects/ReplaySubject$BoundedState;,
        Lrx/subjects/ReplaySubject$UnboundedReplayState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/subjects/Subject<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final ssm:Lrx/subjects/SubjectSubscriptionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/SubjectSubscriptionManager<",
            "TT;>;"
        }
    .end annotation
.end field

.field final state:Lrx/subjects/ReplaySubject$ReplayState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplayState<",
            "TT;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;Lrx/subjects/ReplaySubject$ReplayState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;",
            "Lrx/subjects/SubjectSubscriptionManager<",
            "TT;>;",
            "Lrx/subjects/ReplaySubject$ReplayState<",
            "TT;*>;)V"
        }
    .end annotation

    .line 359
    invoke-direct {p0, p1}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 360
    iput-object p2, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    .line 361
    iput-object p3, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    return-void
.end method

.method private caughtUp(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 422
    iget-boolean v0, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->caughtUp:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 423
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v0, p1}, Lrx/subjects/ReplaySubject$ReplayState;->replayObserver(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iput-boolean v1, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->caughtUp:Z

    const/4 v0, 0x0

    .line 425
    invoke-virtual {p1, v0}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method

.method public static create()Lrx/subjects/ReplaySubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 73
    invoke-static {v0}, Lrx/subjects/ReplaySubject;->create(I)Lrx/subjects/ReplaySubject;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lrx/subjects/ReplaySubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lrx/subjects/ReplaySubject$UnboundedReplayState;

    invoke-direct {v0, p0}, Lrx/subjects/ReplaySubject$UnboundedReplayState;-><init>(I)V

    .line 93
    new-instance p0, Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {p0}, Lrx/subjects/SubjectSubscriptionManager;-><init>()V

    .line 94
    new-instance v1, Lrx/subjects/ReplaySubject$1;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$1;-><init>(Lrx/subjects/ReplaySubject$UnboundedReplayState;)V

    iput-object v1, p0, Lrx/subjects/SubjectSubscriptionManager;->onStart:Lrx/functions/Action1;

    .line 104
    new-instance v1, Lrx/subjects/ReplaySubject$2;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$2;-><init>(Lrx/subjects/ReplaySubject$UnboundedReplayState;)V

    iput-object v1, p0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    .line 140
    new-instance v1, Lrx/subjects/ReplaySubject$3;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$3;-><init>(Lrx/subjects/ReplaySubject$UnboundedReplayState;)V

    iput-object v1, p0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lrx/functions/Action1;

    .line 152
    new-instance v1, Lrx/subjects/ReplaySubject;

    invoke-direct {v1, p0, p0, v0}, Lrx/subjects/ReplaySubject;-><init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v1
.end method

.method static createUnbounded()Lrx/subjects/ReplaySubject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .line 168
    new-instance v0, Lrx/subjects/ReplaySubject$BoundedState;

    new-instance v1, Lrx/subjects/ReplaySubject$EmptyEvictionPolicy;

    invoke-direct {v1}, Lrx/subjects/ReplaySubject$EmptyEvictionPolicy;-><init>()V

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v2

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lrx/subjects/ReplaySubject$BoundedState;-><init>(Lrx/subjects/ReplaySubject$EvictionPolicy;Lrx/functions/Func1;Lrx/functions/Func1;)V

    .line 173
    new-instance v1, Lrx/subjects/ReplaySubject$DefaultOnAdd;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$DefaultOnAdd;-><init>(Lrx/subjects/ReplaySubject$BoundedState;)V

    invoke-static {v0, v1}, Lrx/subjects/ReplaySubject;->createWithState(Lrx/subjects/ReplaySubject$BoundedState;Lrx/functions/Action1;)Lrx/subjects/ReplaySubject;

    move-result-object v0

    return-object v0
.end method

.method public static createWithSize(I)Lrx/subjects/ReplaySubject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .line 196
    new-instance v0, Lrx/subjects/ReplaySubject$BoundedState;

    new-instance v1, Lrx/subjects/ReplaySubject$SizeEvictionPolicy;

    invoke-direct {v1, p0}, Lrx/subjects/ReplaySubject$SizeEvictionPolicy;-><init>(I)V

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object p0

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lrx/subjects/ReplaySubject$BoundedState;-><init>(Lrx/subjects/ReplaySubject$EvictionPolicy;Lrx/functions/Func1;Lrx/functions/Func1;)V

    .line 201
    new-instance p0, Lrx/subjects/ReplaySubject$DefaultOnAdd;

    invoke-direct {p0, v0}, Lrx/subjects/ReplaySubject$DefaultOnAdd;-><init>(Lrx/subjects/ReplaySubject$BoundedState;)V

    invoke-static {v0, p0}, Lrx/subjects/ReplaySubject;->createWithState(Lrx/subjects/ReplaySubject$BoundedState;Lrx/functions/Action1;)Lrx/subjects/ReplaySubject;

    move-result-object p0

    return-object p0
.end method

.method static final createWithState(Lrx/subjects/ReplaySubject$BoundedState;Lrx/functions/Action1;)Lrx/subjects/ReplaySubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/subjects/ReplaySubject$BoundedState<",
            "TT;>;",
            "Lrx/functions/Action1<",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<",
            "TT;>;>;)",
            "Lrx/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .line 300
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {v0}, Lrx/subjects/SubjectSubscriptionManager;-><init>()V

    .line 301
    iput-object p1, v0, Lrx/subjects/SubjectSubscriptionManager;->onStart:Lrx/functions/Action1;

    .line 302
    new-instance p1, Lrx/subjects/ReplaySubject$4;

    invoke-direct {p1, p0}, Lrx/subjects/ReplaySubject$4;-><init>(Lrx/subjects/ReplaySubject$BoundedState;)V

    iput-object p1, v0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    .line 338
    new-instance p1, Lrx/subjects/ReplaySubject$5;

    invoke-direct {p1, p0}, Lrx/subjects/ReplaySubject$5;-><init>(Lrx/subjects/ReplaySubject$BoundedState;)V

    iput-object p1, v0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lrx/functions/Action1;

    .line 351
    new-instance p1, Lrx/subjects/ReplaySubject;

    invoke-direct {p1, v0, v0, p0}, Lrx/subjects/ReplaySubject;-><init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object p1
.end method

.method public static createWithTime(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/subjects/ReplaySubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .line 236
    new-instance v0, Lrx/subjects/ReplaySubject$BoundedState;

    new-instance v1, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    invoke-direct {v1, p0, p1, p3}, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;-><init>(JLrx/Scheduler;)V

    new-instance p0, Lrx/subjects/ReplaySubject$AddTimestamped;

    invoke-direct {p0, p3}, Lrx/subjects/ReplaySubject$AddTimestamped;-><init>(Lrx/Scheduler;)V

    new-instance p1, Lrx/subjects/ReplaySubject$RemoveTimestamped;

    invoke-direct {p1}, Lrx/subjects/ReplaySubject$RemoveTimestamped;-><init>()V

    invoke-direct {v0, v1, p0, p1}, Lrx/subjects/ReplaySubject$BoundedState;-><init>(Lrx/subjects/ReplaySubject$EvictionPolicy;Lrx/functions/Func1;Lrx/functions/Func1;)V

    .line 241
    new-instance p0, Lrx/subjects/ReplaySubject$TimedOnAdd;

    invoke-direct {p0, v0, p3}, Lrx/subjects/ReplaySubject$TimedOnAdd;-><init>(Lrx/subjects/ReplaySubject$BoundedState;Lrx/Scheduler;)V

    invoke-static {v0, p0}, Lrx/subjects/ReplaySubject;->createWithState(Lrx/subjects/ReplaySubject$BoundedState;Lrx/functions/Action1;)Lrx/subjects/ReplaySubject;

    move-result-object p0

    return-object p0
.end method

.method public static createWithTimeAndSize(JLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/subjects/ReplaySubject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lrx/Scheduler;",
            ")",
            "Lrx/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation

    .line 278
    new-instance v0, Lrx/subjects/ReplaySubject$BoundedState;

    new-instance v1, Lrx/subjects/ReplaySubject$PairEvictionPolicy;

    new-instance v2, Lrx/subjects/ReplaySubject$SizeEvictionPolicy;

    invoke-direct {v2, p3}, Lrx/subjects/ReplaySubject$SizeEvictionPolicy;-><init>(I)V

    new-instance p3, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    invoke-direct {p3, p0, p1, p4}, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;-><init>(JLrx/Scheduler;)V

    invoke-direct {v1, v2, p3}, Lrx/subjects/ReplaySubject$PairEvictionPolicy;-><init>(Lrx/subjects/ReplaySubject$EvictionPolicy;Lrx/subjects/ReplaySubject$EvictionPolicy;)V

    new-instance p0, Lrx/subjects/ReplaySubject$AddTimestamped;

    invoke-direct {p0, p4}, Lrx/subjects/ReplaySubject$AddTimestamped;-><init>(Lrx/Scheduler;)V

    new-instance p1, Lrx/subjects/ReplaySubject$RemoveTimestamped;

    invoke-direct {p1}, Lrx/subjects/ReplaySubject$RemoveTimestamped;-><init>()V

    invoke-direct {v0, v1, p0, p1}, Lrx/subjects/ReplaySubject$BoundedState;-><init>(Lrx/subjects/ReplaySubject$EvictionPolicy;Lrx/functions/Func1;Lrx/functions/Func1;)V

    .line 286
    new-instance p0, Lrx/subjects/ReplaySubject$TimedOnAdd;

    invoke-direct {p0, v0, p4}, Lrx/subjects/ReplaySubject$TimedOnAdd;-><init>(Lrx/subjects/ReplaySubject$BoundedState;Lrx/Scheduler;)V

    invoke-static {v0, p0}, Lrx/subjects/ReplaySubject;->createWithState(Lrx/subjects/ReplaySubject$BoundedState;Lrx/functions/Action1;)Lrx/subjects/ReplaySubject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .locals 3

    .line 1127
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v0, v0, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    .line 1128
    iget-object v1, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1129
    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1130
    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1167
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayState;->latest()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 1163
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v0, p1}, Lrx/subjects/ReplaySubject$ReplayState;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasAnyValue()Z
    .locals 1

    .line 1147
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayState;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasCompleted()Z
    .locals 2

    .line 1115
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v0, v0, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    .line 1116
    iget-object v1, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1117
    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasObservers()Z
    .locals 1

    .line 418
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasThrowable()Z
    .locals 2

    .line 1104
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v0, v0, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    .line 1105
    iget-object v1, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1106
    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .line 1152
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject;->hasAnyValue()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 5

    .line 400
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v0, v0, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayState;->complete()V

    .line 402
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 403
    invoke-direct {p0, v3}, Lrx/subjects/ReplaySubject;->caughtUp(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 404
    invoke-virtual {v3}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->onCompleted()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6

    .line 378
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v0, v0, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v0, :cond_3

    .line 379
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v0, p1}, Lrx/subjects/ReplaySubject$ReplayState;->error(Ljava/lang/Throwable;)V

    .line 381
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 383
    :try_start_0
    invoke-direct {p0, v4}, Lrx/subjects/ReplaySubject;->caughtUp(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 384
    invoke-virtual {v4, p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    if-nez v2, :cond_0

    .line 388
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 390
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 394
    :cond_2
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v0, v0, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v0, p1}, Lrx/subjects/ReplaySubject$ReplayState;->next(Ljava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 369
    invoke-direct {p0, v3}, Lrx/subjects/ReplaySubject;->caughtUp(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 370
    invoke-virtual {v3, p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->onNext(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .line 1140
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayState;->size()I

    move-result v0

    return v0
.end method

.method subscriberCount()I
    .locals 1

    .line 413
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v0, v0, Lrx/subjects/SubjectSubscriptionManager;->state:Lrx/subjects/SubjectSubscriptionManager$State;

    iget-object v0, v0, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    array-length v0, v0

    return v0
.end method
