.class Lrx/internal/operators/OperatorElementAt$1;
.super Lrx/Subscriber;
.source "OperatorElementAt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorElementAt;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field private currentIndex:I

.field final synthetic this$0:Lrx/internal/operators/OperatorElementAt;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorElementAt;Lrx/Subscriber;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lrx/internal/operators/OperatorElementAt$1;->this$0:Lrx/internal/operators/OperatorElementAt;

    iput-object p2, p0, Lrx/internal/operators/OperatorElementAt$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lrx/internal/operators/OperatorElementAt$1;->currentIndex:I

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .line 72
    iget v0, p0, Lrx/internal/operators/OperatorElementAt$1;->currentIndex:I

    iget-object v1, p0, Lrx/internal/operators/OperatorElementAt$1;->this$0:Lrx/internal/operators/OperatorElementAt;

    invoke-static {v1}, Lrx/internal/operators/OperatorElementAt;->access$000(Lrx/internal/operators/OperatorElementAt;)I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 74
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->this$0:Lrx/internal/operators/OperatorElementAt;

    invoke-static {v0}, Lrx/internal/operators/OperatorElementAt;->access$100(Lrx/internal/operators/OperatorElementAt;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->val$child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorElementAt$1;->this$0:Lrx/internal/operators/OperatorElementAt;

    invoke-static {v1}, Lrx/internal/operators/OperatorElementAt;->access$200(Lrx/internal/operators/OperatorElementAt;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->val$child:Lrx/Subscriber;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lrx/internal/operators/OperatorElementAt$1;->this$0:Lrx/internal/operators/OperatorElementAt;

    invoke-static {v3}, Lrx/internal/operators/OperatorElementAt;->access$000(Lrx/internal/operators/OperatorElementAt;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is out of bounds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->val$child:Lrx/Subscriber;

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

    .line 58
    iget v0, p0, Lrx/internal/operators/OperatorElementAt$1;->currentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lrx/internal/operators/OperatorElementAt$1;->currentIndex:I

    iget-object v1, p0, Lrx/internal/operators/OperatorElementAt$1;->this$0:Lrx/internal/operators/OperatorElementAt;

    invoke-static {v1}, Lrx/internal/operators/OperatorElementAt;->access$000(Lrx/internal/operators/OperatorElementAt;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lrx/internal/operators/OperatorElementAt$1;->val$child:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 61
    invoke-virtual {p0}, Lrx/internal/operators/OperatorElementAt$1;->unsubscribe()V

    :cond_0
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->val$child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorElementAt$InnerProducer;

    invoke-direct {v1, p1}, Lrx/internal/operators/OperatorElementAt$InnerProducer;-><init>(Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    return-void
.end method
