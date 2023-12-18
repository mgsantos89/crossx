.class Lrx/internal/operators/OperatorBufferWithSize$1;
.super Lrx/Subscriber;
.source "OperatorBufferWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithSize;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithSize;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSize;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iput-object p3, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 115
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    const/4 v1, 0x0

    .line 116
    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 121
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorBufferWithSize$1;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 125
    :cond_0
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    .line 110
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->val$child:Lrx/Subscriber;

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

    .line 96
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v1, v1, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    .line 99
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v0, v0, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    if-ne p1, v0, :cond_1

    .line 101
    iget-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    .line 103
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->val$child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorBufferWithSize$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorBufferWithSize$1$1;-><init>(Lrx/internal/operators/OperatorBufferWithSize$1;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    return-void
.end method
