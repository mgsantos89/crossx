.class Lrx/internal/operators/OperatorBufferWithSize$2$1;
.super Ljava/lang/Object;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithSize$2;->setProducer(Lrx/Producer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private volatile firstRequest:Z

.field private volatile infinite:Z

.field final synthetic this$1:Lrx/internal/operators/OperatorBufferWithSize$2;

.field final synthetic val$producer:Lrx/Producer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSize$2;Lrx/Producer;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$2;

    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->val$producer:Lrx/Producer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->firstRequest:Z

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->infinite:Z

    return-void
.end method

.method private requestInfinite()V
    .locals 3

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->infinite:Z

    .line 142
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->val$producer:Lrx/Producer;

    const-wide v1, 0x7fffffffffffffffL

    invoke-interface {v0, v1, v2}, Lrx/Producer;->request(J)V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz v0, :cond_6

    .line 153
    iget-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->infinite:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    .line 157
    invoke-direct {p0}, Lrx/internal/operators/OperatorBufferWithSize$2$1;->requestInfinite()V

    return-void

    .line 160
    :cond_2
    iget-boolean v2, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->firstRequest:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 161
    iput-boolean v2, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->firstRequest:Z

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    .line 162
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$2;

    iget-object v2, v2, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v2, v2, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$2;

    iget-object v2, v2, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v2, v2, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 164
    invoke-direct {p0}, Lrx/internal/operators/OperatorBufferWithSize$2$1;->requestInfinite()V

    return-void

    .line 172
    :cond_3
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->val$producer:Lrx/Producer;

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$2;

    iget-object v1, v1, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v1, v1, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    int-to-long v1, v1

    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$2;

    iget-object v3, v3, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v3, v3, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    int-to-long v3, v3

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lrx/Producer;->request(J)V

    goto :goto_0

    .line 174
    :cond_4
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$2;

    iget-object v2, v2, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v2, v2, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_5

    .line 176
    invoke-direct {p0}, Lrx/internal/operators/OperatorBufferWithSize$2$1;->requestInfinite()V

    return-void

    .line 185
    :cond_5
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->val$producer:Lrx/Producer;

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$2;

    iget-object v1, v1, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v1, v1, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    int-to-long v1, v1

    mul-long/2addr v1, p1

    invoke-interface {v0, v1, v2}, Lrx/Producer;->request(J)V

    :goto_0
    return-void

    .line 151
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request a negative number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
