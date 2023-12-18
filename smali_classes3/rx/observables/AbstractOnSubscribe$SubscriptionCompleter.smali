.class final Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "AbstractOnSubscribe.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AbstractOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubscriptionCompleter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6eefff08576a4bccL


# instance fields
.field private final state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState<",
            "TT;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState<",
            "TT;TS;>;)V"
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 309
    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    return-void
.end method

.method synthetic constructor <init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;Lrx/observables/AbstractOnSubscribe$1;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1}, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;-><init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .line 313
    invoke-virtual {p0}, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;->get()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 317
    invoke-virtual {p0, v0, v1}, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->free()V

    :cond_0
    return-void
.end method
