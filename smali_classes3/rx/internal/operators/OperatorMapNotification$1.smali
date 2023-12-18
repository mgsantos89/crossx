.class Lrx/internal/operators/OperatorMapNotification$1;
.super Lrx/Subscriber;
.source "OperatorMapNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMapNotification;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field emitter:Lrx/internal/operators/OperatorMapNotification$SingleEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMapNotification$SingleEmitter<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorMapNotification;

.field final synthetic val$o:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMapNotification;Lrx/Subscriber;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lrx/internal/operators/OperatorMapNotification$1;->this$0:Lrx/internal/operators/OperatorMapNotification;

    iput-object p2, p0, Lrx/internal/operators/OperatorMapNotification$1;->val$o:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 64
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMapNotification$1;->emitter:Lrx/internal/operators/OperatorMapNotification$SingleEmitter;

    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$1;->this$0:Lrx/internal/operators/OperatorMapNotification;

    invoke-static {v1}, Lrx/internal/operators/OperatorMapNotification;->access$000(Lrx/internal/operators/OperatorMapNotification;)Lrx/functions/Func0;

    move-result-object v1

    invoke-interface {v1}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->offerAndComplete(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 66
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$1;->val$o:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 73
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMapNotification$1;->emitter:Lrx/internal/operators/OperatorMapNotification$SingleEmitter;

    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$1;->this$0:Lrx/internal/operators/OperatorMapNotification;

    invoke-static {v1}, Lrx/internal/operators/OperatorMapNotification;->access$100(Lrx/internal/operators/OperatorMapNotification;)Lrx/functions/Func1;

    move-result-object v1

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->offerAndComplete(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMapNotification$1;->val$o:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMapNotification$1;->emitter:Lrx/internal/operators/OperatorMapNotification$SingleEmitter;

    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$1;->this$0:Lrx/internal/operators/OperatorMapNotification;

    invoke-static {v1}, Lrx/internal/operators/OperatorMapNotification;->access$200(Lrx/internal/operators/OperatorMapNotification;)Lrx/functions/Func1;

    move-result-object v1

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->offer(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 84
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$1;->val$o:Lrx/Subscriber;

    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 2

    .line 57
    new-instance v0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;

    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$1;->val$o:Lrx/Subscriber;

    invoke-direct {v0, v1, p1, p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;-><init>(Lrx/Subscriber;Lrx/Producer;Lrx/Subscription;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorMapNotification$1;->emitter:Lrx/internal/operators/OperatorMapNotification$SingleEmitter;

    .line 58
    iget-object p1, p0, Lrx/internal/operators/OperatorMapNotification$1;->val$o:Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    return-void
.end method
