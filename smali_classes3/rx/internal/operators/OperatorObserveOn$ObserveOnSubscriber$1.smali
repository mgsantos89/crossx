.class Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;->this$0:Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 2

    .line 117
    sget-object v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;->this$0:Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    invoke-static {v0, v1, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Ljava/lang/Object;J)J

    .line 118
    iget-object p1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;->this$0:Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    invoke-virtual {p1}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    return-void
.end method
