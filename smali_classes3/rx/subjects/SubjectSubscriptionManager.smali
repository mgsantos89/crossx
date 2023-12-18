.class final Lrx/subjects/SubjectSubscriptionManager;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;,
        Lrx/subjects/SubjectSubscriptionManager$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final LATEST_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lrx/subjects/SubjectSubscriptionManager;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lrx/subjects/SubjectSubscriptionManager;",
            "Lrx/subjects/SubjectSubscriptionManager$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field active:Z

.field volatile latest:Ljava/lang/Object;

.field public final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "TT;>;"
        }
    .end annotation
.end field

.field onAdded:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field onStart:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field onTerminated:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field volatile state:Lrx/subjects/SubjectSubscriptionManager$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/SubjectSubscriptionManager$State<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    const-class v0, Lrx/subjects/SubjectSubscriptionManager$State;

    const-string v1, "state"

    const-class v2, Lrx/subjects/SubjectSubscriptionManager;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/subjects/SubjectSubscriptionManager;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 43
    const-class v0, Ljava/lang/Object;

    const-string v1, "latest"

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/subjects/SubjectSubscriptionManager;->LATEST_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lrx/subjects/SubjectSubscriptionManager$State;->EMPTY:Lrx/subjects/SubjectSubscriptionManager$State;

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->state:Lrx/subjects/SubjectSubscriptionManager$State;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    .line 48
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->onStart:Lrx/functions/Action1;

    .line 50
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    .line 52
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lrx/functions/Action1;

    .line 54
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    return-void
.end method


# virtual methods
.method add(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<",
            "TT;>;)Z"
        }
    .end annotation

    .line 94
    :cond_0
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->state:Lrx/subjects/SubjectSubscriptionManager$State;

    .line 95
    iget-boolean v1, v0, Lrx/subjects/SubjectSubscriptionManager$State;->terminated:Z

    if-eqz v1, :cond_1

    .line 96
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    .line 99
    :cond_1
    invoke-virtual {v0, p1}, Lrx/subjects/SubjectSubscriptionManager$State;->add(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/SubjectSubscriptionManager$State;

    move-result-object v1

    .line 100
    sget-object v2, Lrx/subjects/SubjectSubscriptionManager;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method addUnsubscriber(Lrx/Subscriber;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<",
            "TT;>;)V"
        }
    .end annotation

    .line 68
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$1;

    invoke-direct {v0, p0, p2}, Lrx/subjects/SubjectSubscriptionManager$1;-><init>(Lrx/subjects/SubjectSubscriptionManager;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/subjects/SubjectSubscriptionManager;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 57
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-direct {v0, p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;-><init>(Lrx/Observer;)V

    .line 58
    invoke-virtual {p0, p1, v0}, Lrx/subjects/SubjectSubscriptionManager;->addUnsubscriber(Lrx/Subscriber;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    .line 59
    iget-object v1, p0, Lrx/subjects/SubjectSubscriptionManager;->onStart:Lrx/functions/Action1;

    invoke-interface {v1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Lrx/subjects/SubjectSubscriptionManager;->add(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0, v0}, Lrx/subjects/SubjectSubscriptionManager;->remove(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    :cond_0
    return-void
.end method

.method get()Ljava/lang/Object;
    .locals 1

    .line 81
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->latest:Ljava/lang/Object;

    return-object v0
.end method

.method next(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<",
            "TT;>;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0, p1}, Lrx/subjects/SubjectSubscriptionManager;->set(Ljava/lang/Object;)V

    .line 129
    iget-object p1, p0, Lrx/subjects/SubjectSubscriptionManager;->state:Lrx/subjects/SubjectSubscriptionManager$State;

    iget-object p1, p1, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    return-object p1
.end method

.method observers()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<",
            "TT;>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->state:Lrx/subjects/SubjectSubscriptionManager$State;

    iget-object v0, v0, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    return-object v0
.end method

.method remove(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<",
            "TT;>;)V"
        }
    .end annotation

    .line 112
    :cond_0
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->state:Lrx/subjects/SubjectSubscriptionManager$State;

    .line 113
    iget-boolean v1, v0, Lrx/subjects/SubjectSubscriptionManager$State;->terminated:Z

    if-eqz v1, :cond_1

    return-void

    .line 116
    :cond_1
    invoke-virtual {v0, p1}, Lrx/subjects/SubjectSubscriptionManager$State;->remove(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/SubjectSubscriptionManager$State;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 117
    sget-object v2, Lrx/subjects/SubjectSubscriptionManager;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method set(Ljava/lang/Object;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lrx/subjects/SubjectSubscriptionManager;->latest:Ljava/lang/Object;

    return-void
.end method

.method terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<",
            "TT;>;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0, p1}, Lrx/subjects/SubjectSubscriptionManager;->set(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    .line 141
    iget-object p1, p0, Lrx/subjects/SubjectSubscriptionManager;->state:Lrx/subjects/SubjectSubscriptionManager$State;

    .line 142
    iget-boolean p1, p1, Lrx/subjects/SubjectSubscriptionManager$State;->terminated:Z

    if-eqz p1, :cond_0

    .line 143
    sget-object p1, Lrx/subjects/SubjectSubscriptionManager$State;->NO_OBSERVERS:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    return-object p1

    .line 145
    :cond_0
    sget-object p1, Lrx/subjects/SubjectSubscriptionManager;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v0, Lrx/subjects/SubjectSubscriptionManager$State;->TERMINATED:Lrx/subjects/SubjectSubscriptionManager$State;

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/subjects/SubjectSubscriptionManager$State;

    iget-object p1, p1, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    return-object p1
.end method
