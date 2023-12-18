.class Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/internal/operators/OperatorReplay$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lrx/internal/operators/OperatorReplay$Node;",
        ">;",
        "Lrx/internal/operators/OperatorReplay$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2090aef8efde5e9eL


# instance fields
.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "TT;>;"
        }
    .end annotation
.end field

.field size:I

.field tail:Lrx/internal/operators/OperatorReplay$Node;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 882
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 883
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    .line 884
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;)V

    .line 885
    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    .line 886
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final addLast(Lrx/internal/operators/OperatorReplay$Node;)V
    .locals 1

    .line 894
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorReplay$Node;->set(Ljava/lang/Object;)V

    .line 895
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    .line 896
    iget p1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    return-void
.end method

.method final collect(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1057
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 1059
    :goto_0
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    if-eqz v0, :cond_1

    .line 1061
    iget-object v1, v0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    .line 1062
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1063
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1066
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final complete()V
    .locals 2

    .line 948
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 949
    new-instance v1, Lrx/internal/operators/OperatorReplay$Node;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;)V

    .line 950
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->addLast(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 951
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->truncateFinal()V

    return-void
.end method

.method enterTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final error(Ljava/lang/Throwable;)V
    .locals 1

    .line 940
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 941
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;)V

    .line 942
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->addLast(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 943
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->truncateFinal()V

    return-void
.end method

.method hasCompleted()Z
    .locals 2

    .line 1077
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v1, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasError()Z
    .locals 2

    .line 1074
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v1, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final next(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 932
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 933
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;)V

    .line 934
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->addLast(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 935
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->truncate()V

    return-void
.end method

.method final removeFirst()V
    .locals 2

    .line 902
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 903
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    if-eqz v0, :cond_0

    .line 907
    iget v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    .line 910
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    return-void

    .line 905
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Empty list!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final removeSome(I)V
    .locals 2

    .line 913
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    :goto_0
    if-lez p1, :cond_0

    .line 915
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    add-int/lit8 p1, p1, -0x1

    .line 917
    iget v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    goto :goto_0

    .line 920
    :cond_0
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    return-void
.end method

.method public final replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer<",
            "TT;>;)V"
        }
    .end annotation

    .line 956
    monitor-enter p1

    .line 957
    :try_start_0
    iget-boolean v0, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 958
    iput-boolean v1, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 959
    monitor-exit p1

    return-void

    .line 961
    :cond_0
    iput-boolean v1, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 962
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 964
    :goto_0
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 968
    :cond_1
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v0

    .line 972
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->index()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorReplay$Node;

    const-wide/16 v3, 0x0

    if-nez v2, :cond_2

    .line 974
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorReplay$Node;

    .line 975
    iput-object v2, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    :cond_2
    move-wide v5, v3

    :goto_1
    cmp-long v7, v0, v3

    if-eqz v7, :cond_6

    .line 979
    invoke-virtual {v2}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/internal/operators/OperatorReplay$Node;

    if-eqz v7, :cond_6

    .line 981
    iget-object v2, v7, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v8, 0x0

    .line 983
    :try_start_1
    iget-object v9, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v10, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Lrx/Subscriber;

    invoke-virtual {v9, v10, v2}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 984
    iput-object v8, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_3
    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    .line 1001
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    move-object v2, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 988
    iput-object v8, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 989
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 990
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->unsubscribe()V

    .line 991
    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v2}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v2}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 992
    iget-object p1, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v2}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_5
    return-void

    :cond_6
    cmp-long v3, v5, v3

    if-eqz v3, :cond_7

    .line 1007
    iput-object v2, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 1009
    invoke-virtual {p1, v5, v6}, Lrx/internal/operators/OperatorReplay$InnerProducer;->produced(J)J

    .line 1013
    :cond_7
    monitor-enter p1

    .line 1014
    :try_start_2
    iget-boolean v0, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1015
    iput-boolean v1, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 1016
    monitor-exit p1

    return-void

    .line 1018
    :cond_8
    iput-boolean v1, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 1019
    monitor-exit p1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 962
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method final setFirst(Lrx/internal/operators/OperatorReplay$Node;)V
    .locals 0

    .line 927
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    return-void
.end method

.method truncate()V
    .locals 0

    return-void
.end method

.method truncateFinal()V
    .locals 0

    return-void
.end method
