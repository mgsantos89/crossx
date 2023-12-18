.class public final Lrx/internal/operators/OnSubscribeCombineLatest;
.super Ljava/lang/Object;
.source "OnSubscribeCombineLatest.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;,
        Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;,
        Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;,
        Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final combinator:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN<",
            "+TR;>;"
        }
    .end annotation
.end field

.field final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lrx/Observable<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lrx/functions/FuncN;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lrx/Observable<",
            "+TT;>;>;",
            "Lrx/functions/FuncN<",
            "+TR;>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sources:Ljava/util/List;

    .line 51
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->combinator:Lrx/functions/FuncN;

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget p2, Lrx/internal/util/RxRingBuffer;->SIZE:I

    if-gt p1, p2, :cond_0

    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "More than RxRingBuffer.SIZE sources to combineLatest is not supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeCombineLatest;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 66
    new-instance v0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sources:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->combinator:Lrx/functions/FuncN;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceProducer;-><init>(Lrx/Subscriber;Lrx/Observable;Lrx/functions/FuncN;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sources:Ljava/util/List;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->combinator:Lrx/functions/FuncN;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;-><init>(Lrx/Subscriber;Ljava/util/List;Lrx/functions/FuncN;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    :goto_0
    return-void
.end method
