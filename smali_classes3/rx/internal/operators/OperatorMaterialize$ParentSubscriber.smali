.class Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;
.super Lrx/Subscriber;
.source "OperatorMaterialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMaterialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParentSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private busy:Z

.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-",
            "Lrx/Notification<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private missed:Z

.field private volatile requested:J

.field private volatile terminalNotification:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    const-class v0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method constructor <init>(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lrx/Notification<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->busy:Z

    .line 77
    iput-boolean v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->missed:Z

    .line 85
    iput-object p1, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->child:Lrx/Subscriber;

    return-void
.end method

.method private decrementRequested()V
    .locals 6

    .line 121
    :cond_0
    iget-wide v2, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->requested:J

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    return-void

    .line 125
    :cond_1
    sget-object v0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method private drain()V
    .locals 5

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->busy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->missed:Z

    .line 136
    monitor-exit p0

    return-void

    .line 138
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 142
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->terminalNotification:Lrx/Notification;

    if-eqz v0, :cond_2

    .line 144
    iget-wide v1, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->requested:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 146
    iput-object v1, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->terminalNotification:Lrx/Notification;

    .line 148
    iget-object v1, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    :cond_1
    return-void

    .line 159
    :cond_2
    monitor-enter p0

    .line 160
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->missed:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->busy:Z

    .line 162
    monitor-exit p0

    return-void

    .line 164
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    return-void

    :catchall_1
    move-exception v0

    .line 138
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 101
    invoke-static {}, Lrx/Notification;->createOnCompleted()Lrx/Notification;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->terminalNotification:Lrx/Notification;

    .line 102
    invoke-direct {p0}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 107
    invoke-static {p1}, Lrx/Notification;->createOnError(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->terminalNotification:Lrx/Notification;

    .line 108
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 109
    invoke-direct {p0}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->drain()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-static {p1}, Lrx/Notification;->createOnNext(Ljava/lang/Object;)Lrx/Notification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->decrementRequested()V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 90
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->request(J)V

    return-void
.end method

.method requestMore(J)V
    .locals 1

    .line 94
    sget-object v0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-static {v0, p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Ljava/lang/Object;J)J

    .line 95
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->request(J)V

    .line 96
    invoke-direct {p0}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->drain()V

    return-void
.end method
