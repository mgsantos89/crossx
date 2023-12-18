.class Lrx/internal/operators/OperatorTakeWhile$2;
.super Lrx/Subscriber;
.source "OperatorTakeWhile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTakeWhile;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field private counter:I

.field private done:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorTakeWhile;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTakeWhile;Lrx/Subscriber;ZLrx/Subscriber;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeWhile$2;->this$0:Lrx/internal/operators/OperatorTakeWhile;

    iput-object p4, p0, Lrx/internal/operators/OperatorTakeWhile$2;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0, p2, p3}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lrx/internal/operators/OperatorTakeWhile$2;->counter:I

    .line 54
    iput-boolean p1, p0, Lrx/internal/operators/OperatorTakeWhile$2;->done:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 79
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTakeWhile$2;->done:Z

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeWhile$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 86
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTakeWhile$2;->done:Z

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeWhile$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 60
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorTakeWhile$2;->this$0:Lrx/internal/operators/OperatorTakeWhile;

    invoke-static {v1}, Lrx/internal/operators/OperatorTakeWhile;->access$000(Lrx/internal/operators/OperatorTakeWhile;)Lrx/functions/Func2;

    move-result-object v1

    iget v2, p0, Lrx/internal/operators/OperatorTakeWhile$2;->counter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lrx/internal/operators/OperatorTakeWhile$2;->counter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 69
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeWhile$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_0
    iput-boolean v0, p0, Lrx/internal/operators/OperatorTakeWhile$2;->done:Z

    .line 72
    iget-object p1, p0, Lrx/internal/operators/OperatorTakeWhile$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 73
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeWhile$2;->unsubscribe()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 62
    iput-boolean v0, p0, Lrx/internal/operators/OperatorTakeWhile$2;->done:Z

    .line 63
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 64
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeWhile$2;->val$subscriber:Lrx/Subscriber;

    invoke-static {v1, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 65
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeWhile$2;->unsubscribe()V

    return-void
.end method
