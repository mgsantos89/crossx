.class public final Lrx/internal/util/SubscriptionRandomList;
.super Ljava/lang/Object;
.source "SubscriptionRandomList.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lrx/Subscription;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Subscription;"
    }
.end annotation


# instance fields
.field private subscriptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field

.field private unsubscribed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    return-void
.end method

.method private static unsubscribeFromAll(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lrx/Subscription;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscription;

    .line 145
    :try_start_0
    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_2
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public add(Lrx/Subscription;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    .line 63
    :cond_1
    iget-object v0, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 65
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 68
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 65
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 104
    iput-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-static {v0}, Lrx/internal/util/SubscriptionRandomList;->unsubscribeFromAll(Ljava/util/Collection;)V

    return-void

    .line 101
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 106
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public forEach(Lrx/functions/Action1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "TT;>;)V"
        }
    .end annotation

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 116
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/Subscription;

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 119
    invoke-interface {p1, v3}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 114
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 117
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized isUnsubscribed()Z
    .locals 1

    monitor-enter p0

    .line 43
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public remove(Lrx/Subscription;)V
    .locals 1

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    if-nez v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 88
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    :cond_1
    return-void

    .line 82
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 85
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public unsubscribe()V
    .locals 2

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-eqz v0, :cond_0

    .line 128
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    .line 131
    iget-object v0, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    const/4 v1, 0x0

    .line 132
    iput-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    .line 133
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-static {v0}, Lrx/internal/util/SubscriptionRandomList;->unsubscribeFromAll(Ljava/util/Collection;)V

    return-void

    :catchall_0
    move-exception v0

    .line 133
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
