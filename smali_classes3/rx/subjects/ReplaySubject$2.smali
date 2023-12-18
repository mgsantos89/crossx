.class final Lrx/subjects/ReplaySubject$2;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/ReplaySubject;->create(I)Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$state:Lrx/subjects/ReplaySubject$UnboundedReplayState;


# direct methods
.method constructor <init>(Lrx/subjects/ReplaySubject$UnboundedReplayState;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lrx/subjects/ReplaySubject$2;->val$state:Lrx/subjects/ReplaySubject$UnboundedReplayState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 104
    check-cast p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-virtual {p0, p1}, Lrx/subjects/ReplaySubject$2;->call(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    return-void
.end method

.method public call(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<",
            "TT;>;)V"
        }
    .end annotation

    .line 107
    monitor-enter p1

    .line 108
    :try_start_0
    iget-boolean v0, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    const/4 v1, 0x1

    .line 112
    iput-boolean v1, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 113
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 117
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 118
    iget-object v3, p0, Lrx/subjects/ReplaySubject$2;->val$state:Lrx/subjects/ReplaySubject$UnboundedReplayState;

    iget v3, v3, Lrx/subjects/ReplaySubject$UnboundedReplayState;->index:I

    if-eq v2, v3, :cond_1

    .line 120
    iget-object v4, p0, Lrx/subjects/ReplaySubject$2;->val$state:Lrx/subjects/ReplaySubject$UnboundedReplayState;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2, p1}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->replayObserverFromIndex(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Integer;

    move-result-object v2

    .line 121
    invoke-virtual {p1, v2}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index(Ljava/lang/Object;)V

    .line 123
    :cond_1
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 124
    :try_start_2
    iget-object v2, p0, Lrx/subjects/ReplaySubject$2;->val$state:Lrx/subjects/ReplaySubject$UnboundedReplayState;

    iget v2, v2, Lrx/subjects/ReplaySubject$UnboundedReplayState;->index:I

    if-ne v3, v2, :cond_2

    .line 125
    iput-boolean v0, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    .line 129
    :cond_2
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    move v1, v0

    :goto_1
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v2

    move-object v5, v2

    move v2, v1

    move-object v1, v5

    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_1

    :catchall_3
    move-exception v1

    move v2, v0

    :goto_2
    if-nez v2, :cond_3

    .line 133
    monitor-enter p1

    .line 134
    :try_start_7
    iput-boolean v0, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 135
    monitor-exit p1

    goto :goto_3

    :catchall_4
    move-exception v0

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    :cond_3
    :goto_3
    throw v1

    .line 109
    :cond_4
    :goto_4
    :try_start_8
    monitor-exit p1

    return-void

    :catchall_5
    move-exception v0

    .line 113
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0
.end method
