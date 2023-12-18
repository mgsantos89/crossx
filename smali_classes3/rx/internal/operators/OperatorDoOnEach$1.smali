.class Lrx/internal/operators/OperatorDoOnEach$1;
.super Lrx/Subscriber;
.source "OperatorDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDoOnEach;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private done:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorDoOnEach;

.field final synthetic val$observer:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDoOnEach;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    iput-object p3, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 42
    iget-boolean v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    invoke-static {v0}, Lrx/internal/operators/OperatorDoOnEach;->access$000(Lrx/internal/operators/OperatorDoOnEach;)Lrx/Observer;

    move-result-object v0

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    .line 53
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    return-void

    :catchall_0
    move-exception v0

    .line 48
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorDoOnEach$1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 59
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 60
    iget-boolean v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    .line 65
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    invoke-static {v0}, Lrx/internal/operators/OperatorDoOnEach;->access$000(Lrx/internal/operators/OperatorDoOnEach;)Lrx/Observer;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 67
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 75
    iget-boolean v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    invoke-static {v0}, Lrx/internal/operators/OperatorDoOnEach;->access$000(Lrx/internal/operators/OperatorDoOnEach;)Lrx/Observer;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 81
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDoOnEach$1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
