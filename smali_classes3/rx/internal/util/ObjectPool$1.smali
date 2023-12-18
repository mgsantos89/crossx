.class Lrx/internal/util/ObjectPool$1;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ObjectPool;-><init>(IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/util/ObjectPool;

.field final synthetic val$max:I

.field final synthetic val$min:I


# direct methods
.method constructor <init>(Lrx/internal/util/ObjectPool;II)V
    .locals 0

    .line 58
    iput-object p1, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    iput p2, p0, Lrx/internal/util/ObjectPool$1;->val$min:I

    iput p3, p0, Lrx/internal/util/ObjectPool$1;->val$max:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .line 62
    iget-object v0, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    invoke-static {v0}, Lrx/internal/util/ObjectPool;->access$000(Lrx/internal/util/ObjectPool;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    .line 63
    iget v1, p0, Lrx/internal/util/ObjectPool$1;->val$min:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 64
    iget v1, p0, Lrx/internal/util/ObjectPool$1;->val$max:I

    sub-int/2addr v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 66
    iget-object v0, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    invoke-static {v0}, Lrx/internal/util/ObjectPool;->access$000(Lrx/internal/util/ObjectPool;)Ljava/util/Queue;

    move-result-object v0

    iget-object v3, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    invoke-virtual {v3}, Lrx/internal/util/ObjectPool;->createObject()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_0
    iget v1, p0, Lrx/internal/util/ObjectPool$1;->val$max:I

    if-le v0, v1, :cond_1

    sub-int/2addr v0, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 72
    iget-object v1, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    invoke-static {v1}, Lrx/internal/util/ObjectPool;->access$000(Lrx/internal/util/ObjectPool;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
