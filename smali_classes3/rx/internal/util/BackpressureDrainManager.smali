.class public final Lrx/internal/util/BackpressureDrainManager;
.super Ljava/lang/Object;
.source "BackpressureDrainManager.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    }
.end annotation


# static fields
.field protected static final REQUESTED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/util/BackpressureDrainManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final actual:Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;

.field protected emitting:Z

.field protected exception:Ljava/lang/Throwable;

.field protected volatile requestedCount:J

.field protected volatile terminated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    const-class v0, Lrx/internal/util/BackpressureDrainManager;

    const-string v1, "requestedCount"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/util/BackpressureDrainManager;->REQUESTED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lrx/internal/util/BackpressureDrainManager;->actual:Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;

    return-void
.end method


# virtual methods
.method public final drain()V
    .locals 13

    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    if-eqz v0, :cond_0

    .line 172
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 175
    iget-boolean v1, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 176
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 177
    iget-wide v2, p0, Lrx/internal/util/BackpressureDrainManager;->requestedCount:J

    const/4 v4, 0x0

    .line 180
    :try_start_1
    iget-object v5, p0, Lrx/internal/util/BackpressureDrainManager;->actual:Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;

    :goto_0
    move v6, v4

    :goto_1
    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-gtz v9, :cond_1

    if-eqz v1, :cond_4

    :cond_1
    if-eqz v1, :cond_3

    .line 186
    invoke-interface {v5}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->peek()Ljava/lang/Object;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v10, :cond_2

    .line 189
    :try_start_2
    iget-object v1, p0, Lrx/internal/util/BackpressureDrainManager;->exception:Ljava/lang/Throwable;

    .line 190
    invoke-interface {v5, v1}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->complete(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_7

    :cond_2
    if-nez v9, :cond_3

    goto :goto_2

    .line 197
    :cond_3
    :try_start_3
    invoke-interface {v5}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->poll()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_b

    .line 209
    :cond_4
    :goto_2
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 210
    :try_start_4
    iget-boolean v1, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 211
    invoke-interface {v5}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->peek()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_3

    :cond_5
    move v2, v4

    .line 213
    :goto_3
    iget-wide v9, p0, Lrx/internal/util/BackpressureDrainManager;->requestedCount:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide v11, 0x7fffffffffffffffL

    cmp-long v3, v9, v11

    if-nez v3, :cond_7

    if-nez v2, :cond_6

    if-nez v1, :cond_6

    .line 217
    :try_start_5
    iput-boolean v4, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 218
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-void

    :cond_6
    move-wide v2, v11

    goto :goto_4

    .line 222
    :cond_7
    :try_start_6
    sget-object v3, Lrx/internal/util/BackpressureDrainManager;->REQUESTED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    neg-int v6, v6

    int-to-long v9, v6

    invoke-virtual {v3, p0, v9, v10}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v9

    cmp-long v3, v9, v7

    if-eqz v3, :cond_8

    if-nez v2, :cond_9

    :cond_8
    if-eqz v1, :cond_a

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    move-wide v2, v9

    .line 229
    :goto_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 225
    :cond_a
    :goto_5
    :try_start_7
    iput-boolean v4, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 226
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v1

    move v0, v4

    .line 229
    :goto_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v1

    goto :goto_6

    .line 201
    :cond_b
    :try_start_9
    invoke-interface {v5, v9}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->accept(Ljava/lang/Object;)Z

    move-result v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v7, :cond_c

    return-void

    :cond_c
    const-wide/16 v7, 0x1

    sub-long/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_3
    move-exception v1

    move v0, v4

    :goto_7
    if-nez v0, :cond_d

    .line 233
    monitor-enter p0

    .line 234
    :try_start_a
    iput-boolean v4, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 235
    monitor-exit p0

    goto :goto_8

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    :cond_d
    :goto_8
    throw v1

    :catchall_5
    move-exception v0

    .line 176
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v0
.end method

.method public final isTerminated()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    return v0
.end method

.method public final request(J)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 141
    :cond_0
    iget-wide v5, p0, Lrx/internal/util/BackpressureDrainManager;->requestedCount:J

    cmp-long v2, v5, v0

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v4, v5, v7

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    cmp-long v4, p1, v7

    if-nez v4, :cond_3

    move-wide v7, p1

    move v2, v3

    goto :goto_1

    :cond_3
    sub-long v3, v7, p1

    cmp-long v3, v5, v3

    if-lez v3, :cond_4

    goto :goto_1

    :cond_4
    add-long v3, v5, p1

    move-wide v7, v3

    .line 156
    :goto_1
    sget-object v3, Lrx/internal/util/BackpressureDrainManager;->REQUESTED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_2
    if-eqz v2, :cond_5

    .line 160
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    :cond_5
    return-void
.end method

.method public final terminate()V
    .locals 1

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    return-void
.end method

.method public final terminate(Ljava/lang/Throwable;)V
    .locals 1

    .line 107
    iget-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    if-nez v0, :cond_0

    .line 108
    iput-object p1, p0, Lrx/internal/util/BackpressureDrainManager;->exception:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 109
    iput-boolean p1, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    :cond_0
    return-void
.end method

.method public final terminateAndDrain()V
    .locals 1

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 117
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    return-void
.end method

.method public final terminateAndDrain(Ljava/lang/Throwable;)V
    .locals 1

    .line 126
    iget-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    if-nez v0, :cond_0

    .line 127
    iput-object p1, p0, Lrx/internal/util/BackpressureDrainManager;->exception:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 129
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    :cond_0
    return-void
.end method
