.class final Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingleSourceRequestableSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private final combinator:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;Lrx/functions/FuncN;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;",
            "Lrx/functions/FuncN<",
            "+TR;>;)V"
        }
    .end annotation

    .line 296
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 297
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->child:Lrx/Subscriber;

    .line 298
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->combinator:Lrx/functions/FuncN;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 317
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->child:Lrx/Subscriber;

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

    .line 307
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->combinator:Lrx/functions/FuncN;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public requestMore(J)V
    .locals 0

    .line 302
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeCombineLatest$SingleSourceRequestableSubscriber;->request(J)V

    return-void
.end method
