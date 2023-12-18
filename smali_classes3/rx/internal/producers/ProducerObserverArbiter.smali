.class public final Lrx/internal/producers/ProducerObserverArbiter;
.super Ljava/lang/Object;
.source "ProducerObserverArbiter.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;",
        "Lrx/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final NULL_PRODUCER:Lrx/Producer;


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field currentProducer:Lrx/Producer;

.field emitting:Z

.field volatile hasError:Z

.field missedProducer:Lrx/Producer;

.field missedRequested:J

.field missedTerminal:Ljava/lang/Object;

.field queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field requested:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lrx/internal/producers/ProducerObserverArbiter$1;

    invoke-direct {v0}, Lrx/internal/producers/ProducerObserverArbiter$1;-><init>()V

    sput-object v0, Lrx/internal/producers/ProducerObserverArbiter;->NULL_PRODUCER:Lrx/Producer;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    return-void
.end method


# virtual methods
.method emitLoop()V
    .locals 15

    .line 190
    iget-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    .line 198
    :cond_0
    :goto_0
    monitor-enter p0

    .line 199
    :try_start_0
    iget-wide v1, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    .line 200
    iget-object v3, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedProducer:Lrx/Producer;

    .line 201
    iget-object v4, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    .line 202
    iget-object v5, p0, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    const/4 v9, 0x0

    if-nez v8, :cond_1

    if-nez v3, :cond_1

    if-nez v5, :cond_1

    if-nez v4, :cond_1

    .line 205
    iput-boolean v9, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 206
    monitor-exit p0

    return-void

    .line 208
    :cond_1
    iput-wide v6, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    const/4 v10, 0x0

    .line 209
    iput-object v10, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedProducer:Lrx/Producer;

    .line 210
    iput-object v10, p0, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    .line 211
    iput-object v10, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    .line 212
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_2

    .line 213
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    const/4 v9, 0x1

    :cond_3
    if-eqz v4, :cond_5

    .line 215
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v4, v11, :cond_4

    .line 216
    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v0, v4}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    if-eqz v9, :cond_5

    .line 220
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    return-void

    :cond_5
    if-eqz v5, :cond_9

    .line 226
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 227
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v11

    if-eqz v11, :cond_6

    return-void

    .line 230
    :cond_6
    iget-boolean v11, p0, Lrx/internal/producers/ProducerObserverArbiter;->hasError:Z

    if-eqz v11, :cond_7

    goto :goto_0

    .line 234
    :cond_7
    :try_start_1
    invoke-virtual {v0, v9}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 236
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 237
    invoke-static {v1, v9}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 242
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v6

    goto :goto_2

    :cond_9
    move-wide v4, v6

    .line 244
    :goto_2
    iget-wide v11, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    const-wide v13, 0x7fffffffffffffffL

    cmp-long v9, v11, v13

    if-eqz v9, :cond_d

    if-eqz v8, :cond_a

    add-long/2addr v11, v1

    cmp-long v9, v11, v6

    if-gez v9, :cond_a

    move-wide v11, v13

    :cond_a
    cmp-long v9, v4, v6

    if-eqz v9, :cond_c

    cmp-long v9, v11, v13

    if-eqz v9, :cond_c

    sub-long/2addr v11, v4

    cmp-long v4, v11, v6

    if-ltz v4, :cond_b

    goto :goto_3

    .line 259
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "More produced than requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_c
    :goto_3
    iput-wide v11, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    :cond_d
    if-eqz v3, :cond_f

    .line 266
    sget-object v1, Lrx/internal/producers/ProducerObserverArbiter;->NULL_PRODUCER:Lrx/Producer;

    if-ne v3, v1, :cond_e

    .line 267
    iput-object v10, p0, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    goto/16 :goto_0

    .line 269
    :cond_e
    iput-object v3, p0, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    cmp-long v1, v11, v6

    if-eqz v1, :cond_0

    .line 271
    invoke-interface {v3, v11, v12}, Lrx/Producer;->request(J)V

    goto/16 :goto_0

    .line 275
    :cond_f
    iget-object v3, p0, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    if-eqz v3, :cond_0

    if-eqz v8, :cond_0

    .line 277
    invoke-interface {v3, v1, v2}, Lrx/Producer;->request(J)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 212
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onCompleted()V
    .locals 2

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 115
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    .line 116
    monitor-exit p0

    return-void

    .line 118
    :cond_0
    iput-boolean v1, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 119
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    return-void

    :catchall_0
    move-exception v0

    .line 119
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 97
    iput-object p1, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :cond_0
    iput-boolean v1, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    move v0, v1

    .line 103
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 107
    :cond_1
    iput-boolean v1, p0, Lrx/internal/producers/ProducerObserverArbiter;->hasError:Z

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 103
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    iput-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    .line 68
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    monitor-exit p0

    return-void

    .line 71
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 74
    :try_start_1
    iget-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 76
    iget-wide v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 78
    iput-wide v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 81
    :cond_2
    invoke-virtual {p0}, Lrx/internal/producers/ProducerObserverArbiter;->emitLoop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 85
    monitor-enter p0

    const/4 v0, 0x0

    .line 86
    :try_start_2
    iput-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 87
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 71
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public request(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-nez v2, :cond_0

    return-void

    .line 131
    :cond_0
    monitor-enter p0

    .line 132
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    if-eqz v2, :cond_1

    .line 133
    iget-wide v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    .line 134
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 136
    iput-boolean v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 137
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 140
    :try_start_1
    iget-wide v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    add-long/2addr v2, p1

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    const-wide v2, 0x7fffffffffffffffL

    .line 145
    :cond_2
    iput-wide v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 147
    iget-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    if-eqz v0, :cond_3

    .line 149
    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 152
    :cond_3
    invoke-virtual {p0}, Lrx/internal/producers/ProducerObserverArbiter;->emitLoop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 156
    monitor-enter p0

    const/4 p2, 0x0

    .line 157
    :try_start_2
    iput-boolean p2, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 158
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 137
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 126
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n >= 0 required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 4

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    sget-object p1, Lrx/internal/producers/ProducerObserverArbiter;->NULL_PRODUCER:Lrx/Producer;

    :goto_0
    iput-object p1, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedProducer:Lrx/Producer;

    .line 167
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 170
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 173
    :try_start_1
    iput-object p1, p0, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    .line 174
    iget-wide v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    if-eqz p1, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 176
    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    .line 178
    :cond_2
    invoke-virtual {p0}, Lrx/internal/producers/ProducerObserverArbiter;->emitLoop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 182
    monitor-enter p0

    const/4 v0, 0x0

    .line 183
    :try_start_2
    iput-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 184
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 170
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method
