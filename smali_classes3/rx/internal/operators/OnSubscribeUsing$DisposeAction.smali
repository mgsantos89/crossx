.class final Lrx/internal/operators/OnSubscribeUsing$DisposeAction;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "OnSubscribeUsing.java"

# interfaces
.implements Lrx/functions/Action0;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeUsing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisposeAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Resource:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lrx/functions/Action0;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3b28c647329bb8ccL


# instance fields
.field private dispose:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "-TResource;>;"
        }
    .end annotation
.end field

.field private resource:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResource;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/functions/Action1;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-TResource;>;TResource;)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 107
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->dispose:Lrx/functions/Action1;

    .line 108
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->resource:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->lazySet(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lrx/functions/Action1;Ljava/lang/Object;Lrx/internal/operators/OnSubscribeUsing$1;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;-><init>(Lrx/functions/Action1;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 114
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 116
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->dispose:Lrx/functions/Action1;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->resource:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iput-object v0, p0, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->resource:Ljava/lang/Object;

    .line 119
    iput-object v0, p0, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->dispose:Lrx/functions/Action1;

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 118
    iput-object v0, p0, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->resource:Ljava/lang/Object;

    .line 119
    iput-object v0, p0, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->dispose:Lrx/functions/Action1;

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 126
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->get()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 0

    .line 131
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->call()V

    return-void
.end method
