.class public Lrx/internal/operators/OperatorOnBackpressureBlock;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureBlock.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final max:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lrx/internal/operators/OperatorOnBackpressureBlock;->max:I

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorOnBackpressureBlock;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object p1

    return-object p1
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;

    iget v1, p0, Lrx/internal/operators/OperatorOnBackpressureBlock;->max:I

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;-><init>(ILrx/Subscriber;)V

    .line 37
    invoke-virtual {v0}, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->init()V

    return-object v0
.end method
