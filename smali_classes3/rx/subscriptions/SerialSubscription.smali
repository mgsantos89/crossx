.class public final Lrx/subscriptions/SerialSubscription;
.super Ljava/lang/Object;
.source "SerialSubscription.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subscriptions/SerialSubscription$State;
    }
.end annotation


# static fields
.field static final STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lrx/subscriptions/SerialSubscription;",
            "Lrx/subscriptions/SerialSubscription$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile state:Lrx/subscriptions/SerialSubscription$State;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    const-class v0, Lrx/subscriptions/SerialSubscription$State;

    const-string v1, "state"

    const-class v2, Lrx/subscriptions/SerialSubscription;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/subscriptions/SerialSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lrx/subscriptions/SerialSubscription$State;

    const/4 v1, 0x0

    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lrx/subscriptions/SerialSubscription$State;-><init>(ZLrx/Subscription;)V

    iput-object v0, p0, Lrx/subscriptions/SerialSubscription;->state:Lrx/subscriptions/SerialSubscription$State;

    return-void
.end method


# virtual methods
.method public get()Lrx/Subscription;
    .locals 1

    .line 102
    iget-object v0, p0, Lrx/subscriptions/SerialSubscription;->state:Lrx/subscriptions/SerialSubscription$State;

    iget-object v0, v0, Lrx/subscriptions/SerialSubscription$State;->subscription:Lrx/Subscription;

    return-object v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lrx/subscriptions/SerialSubscription;->state:Lrx/subscriptions/SerialSubscription$State;

    iget-boolean v0, v0, Lrx/subscriptions/SerialSubscription$State;->isUnsubscribed:Z

    return v0
.end method

.method public set(Lrx/Subscription;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 85
    :cond_0
    iget-object v0, p0, Lrx/subscriptions/SerialSubscription;->state:Lrx/subscriptions/SerialSubscription$State;

    .line 86
    iget-boolean v1, v0, Lrx/subscriptions/SerialSubscription$State;->isUnsubscribed:Z

    if-eqz v1, :cond_1

    .line 87
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return-void

    .line 90
    :cond_1
    invoke-virtual {v0, p1}, Lrx/subscriptions/SerialSubscription$State;->set(Lrx/Subscription;)Lrx/subscriptions/SerialSubscription$State;

    move-result-object v1

    .line 92
    sget-object v2, Lrx/subscriptions/SerialSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object p1, v0, Lrx/subscriptions/SerialSubscription$State;->subscription:Lrx/Subscription;

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return-void

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Subscription can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsubscribe()V
    .locals 3

    .line 60
    :cond_0
    iget-object v0, p0, Lrx/subscriptions/SerialSubscription;->state:Lrx/subscriptions/SerialSubscription$State;

    .line 61
    iget-boolean v1, v0, Lrx/subscriptions/SerialSubscription$State;->isUnsubscribed:Z

    if-eqz v1, :cond_1

    return-void

    .line 64
    :cond_1
    invoke-virtual {v0}, Lrx/subscriptions/SerialSubscription$State;->unsubscribe()Lrx/subscriptions/SerialSubscription$State;

    move-result-object v1

    .line 66
    sget-object v2, Lrx/subscriptions/SerialSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v0, v0, Lrx/subscriptions/SerialSubscription$State;->subscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    return-void
.end method
