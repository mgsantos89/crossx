.class Lrx/internal/operators/OperatorAny$1;
.super Lrx/Subscriber;
.source "OperatorAny.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorAny;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field done:Z

.field hasElements:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorAny;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$producer:Lrx/internal/producers/SingleDelayedProducer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorAny;Lrx/internal/producers/SingleDelayedProducer;Lrx/Subscriber;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lrx/internal/operators/OperatorAny$1;->this$0:Lrx/internal/operators/OperatorAny;

    iput-object p2, p0, Lrx/internal/operators/OperatorAny$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    iput-object p3, p0, Lrx/internal/operators/OperatorAny$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 74
    iget-boolean v0, p0, Lrx/internal/operators/OperatorAny$1;->done:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lrx/internal/operators/OperatorAny$1;->done:Z

    .line 76
    iget-boolean v0, p0, Lrx/internal/operators/OperatorAny$1;->hasElements:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lrx/internal/operators/OperatorAny$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorAny$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    iget-object v1, p0, Lrx/internal/operators/OperatorAny$1;->this$0:Lrx/internal/operators/OperatorAny;

    invoke-static {v1}, Lrx/internal/operators/OperatorAny;->access$100(Lrx/internal/operators/OperatorAny;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lrx/internal/operators/OperatorAny$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lrx/internal/operators/OperatorAny$1;->hasElements:Z

    .line 52
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorAny$1;->this$0:Lrx/internal/operators/OperatorAny;

    invoke-static {v1}, Lrx/internal/operators/OperatorAny;->access$000(Lrx/internal/operators/OperatorAny;)Lrx/functions/Func1;

    move-result-object v1

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 58
    iget-boolean p1, p0, Lrx/internal/operators/OperatorAny$1;->done:Z

    if-nez p1, :cond_0

    .line 59
    iput-boolean v0, p0, Lrx/internal/operators/OperatorAny$1;->done:Z

    .line 60
    iget-object p1, p0, Lrx/internal/operators/OperatorAny$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    iget-object v1, p0, Lrx/internal/operators/OperatorAny$1;->this$0:Lrx/internal/operators/OperatorAny;

    invoke-static {v1}, Lrx/internal/operators/OperatorAny;->access$100(Lrx/internal/operators/OperatorAny;)Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Lrx/internal/operators/OperatorAny$1;->unsubscribe()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 54
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 55
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorAny$1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
