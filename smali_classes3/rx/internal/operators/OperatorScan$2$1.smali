.class Lrx/internal/operators/OperatorScan$2$1;
.super Ljava/lang/Object;
.source "OperatorScan.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorScan$2;->setProducer(Lrx/Producer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final excessive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$1:Lrx/internal/operators/OperatorScan$2;

.field final synthetic val$producer:Lrx/Producer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorScan$2;Lrx/Producer;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$2$1;->this$1:Lrx/internal/operators/OperatorScan$2;

    iput-object p2, p0, Lrx/internal/operators/OperatorScan$2$1;->val$producer:Lrx/Producer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorScan$2$1;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 145
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorScan$2$1;->excessive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 7

    .line 149
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2$1;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const-wide v3, 0x7fffffffffffffffL

    const-wide/16 v5, 0x1

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2$1;->this$1:Lrx/internal/operators/OperatorScan$2;

    invoke-static {v0}, Lrx/internal/operators/OperatorScan$2;->access$300(Lrx/internal/operators/OperatorScan$2;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lrx/internal/operators/OperatorScan;->access$100()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_2

    cmp-long v0, p1, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v0, p1, v5

    if-nez v0, :cond_1

    .line 153
    iget-object p1, p0, Lrx/internal/operators/OperatorScan$2$1;->excessive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    iget-object p1, p0, Lrx/internal/operators/OperatorScan$2$1;->val$producer:Lrx/Producer;

    invoke-interface {p1, v5, v6}, Lrx/Producer;->request(J)V

    goto :goto_1

    .line 157
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2$1;->val$producer:Lrx/Producer;

    sub-long/2addr p1, v5

    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    goto :goto_1

    .line 151
    :cond_2
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2$1;->val$producer:Lrx/Producer;

    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    goto :goto_1

    :cond_3
    cmp-long v0, p1, v5

    if-lez v0, :cond_4

    .line 161
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2$1;->excessive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    cmp-long v0, p1, v3

    if-eqz v0, :cond_4

    .line 163
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2$1;->val$producer:Lrx/Producer;

    sub-long/2addr p1, v5

    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    goto :goto_1

    .line 165
    :cond_4
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2$1;->val$producer:Lrx/Producer;

    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    :goto_1
    return-void
.end method
