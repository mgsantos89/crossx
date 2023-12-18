.class final Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;
.super Lrx/Subscriber;
.source "OperatorTakeUntilPredicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorTakeUntilPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ParentSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private done:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorTakeUntilPredicate;


# direct methods
.method private constructor <init>(Lrx/internal/operators/OperatorTakeUntilPredicate;Lrx/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->this$0:Lrx/internal/operators/OperatorTakeUntilPredicate;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->done:Z

    .line 38
    iput-object p2, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->child:Lrx/Subscriber;

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorTakeUntilPredicate;Lrx/Subscriber;Lrx/internal/operators/OperatorTakeUntilPredicate$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;-><init>(Lrx/internal/operators/OperatorTakeUntilPredicate;Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method downstreamRequest(J)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->request(J)V

    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 64
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->done:Z

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->done:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 47
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->this$0:Lrx/internal/operators/OperatorTakeUntilPredicate;

    invoke-static {v1}, Lrx/internal/operators/OperatorTakeUntilPredicate;->access$000(Lrx/internal/operators/OperatorTakeUntilPredicate;)Lrx/functions/Func1;

    move-result-object v1

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 56
    iput-boolean v0, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->done:Z

    .line 57
    iget-object p1, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 58
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->unsubscribe()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 49
    iput-boolean v0, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->done:Z

    .line 50
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 51
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-static {v1, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 52
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->unsubscribe()V

    return-void
.end method
