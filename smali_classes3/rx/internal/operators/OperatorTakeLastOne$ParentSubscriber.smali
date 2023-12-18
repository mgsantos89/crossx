.class Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;
.super Lrx/Subscriber;
.source "OperatorTakeLastOne.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorTakeLastOne;
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
.field private static final ABSENT:Ljava/lang/Object;

.field private static final NOT_REQUESTED_COMPLETED:I = 0x1

.field private static final NOT_REQUESTED_NOT_COMPLETED:I = 0x0

.field private static final REQUESTED_COMPLETED:I = 0x3

.field private static final REQUESTED_NOT_COMPLETED:I = 0x2


# instance fields
.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private last:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final state:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->ABSENT:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 62
    sget-object v0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->ABSENT:Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->last:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->child:Lrx/Subscriber;

    return-void
.end method

.method private emit()V
    .locals 2

    .line 138
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->isUnsubscribed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 140
    iput-object v1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->last:Ljava/lang/Object;

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->last:Ljava/lang/Object;

    .line 148
    iput-object v1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->last:Ljava/lang/Object;

    .line 149
    sget-object v1, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->ABSENT:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 151
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 153
    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 157
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .line 105
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->last:Ljava/lang/Object;

    sget-object v1, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->ABSENT:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 123
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->emit()V

    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->last:Ljava/lang/Object;

    return-void
.end method

.method requestMore(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_2

    .line 84
    :cond_0
    iget-object p1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_1

    .line 86
    iget-object p1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 91
    iget-object p1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    invoke-direct {p0}, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->emit()V

    :cond_2
    return-void
.end method
