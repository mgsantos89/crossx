.class public final Lrx/internal/operators/OperatorMapNotification;
.super Ljava/lang/Object;
.source "OperatorMapNotification.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorMapNotification$SingleEmitter;
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
        "Lrx/Observable$Operator<",
        "TR;TT;>;"
    }
.end annotation


# instance fields
.field private final onCompleted:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0<",
            "+TR;>;"
        }
    .end annotation
.end field

.field private final onError:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-",
            "Ljava/lang/Throwable;",
            "+TR;>;"
        }
    .end annotation
.end field

.field private final onNext:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-TT;+TR;>;",
            "Lrx/functions/Func1<",
            "-",
            "Ljava/lang/Throwable;",
            "+TR;>;",
            "Lrx/functions/Func0<",
            "+TR;>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lrx/internal/operators/OperatorMapNotification;->onNext:Lrx/functions/Func1;

    .line 47
    iput-object p2, p0, Lrx/internal/operators/OperatorMapNotification;->onError:Lrx/functions/Func1;

    .line 48
    iput-object p3, p0, Lrx/internal/operators/OperatorMapNotification;->onCompleted:Lrx/functions/Func0;

    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorMapNotification;)Lrx/functions/Func0;
    .locals 0

    .line 39
    iget-object p0, p0, Lrx/internal/operators/OperatorMapNotification;->onCompleted:Lrx/functions/Func0;

    return-object p0
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorMapNotification;)Lrx/functions/Func1;
    .locals 0

    .line 39
    iget-object p0, p0, Lrx/internal/operators/OperatorMapNotification;->onError:Lrx/functions/Func1;

    return-object p0
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorMapNotification;)Lrx/functions/Func1;
    .locals 0

    .line 39
    iget-object p0, p0, Lrx/internal/operators/OperatorMapNotification;->onNext:Lrx/functions/Func1;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMapNotification;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object p1

    return-object p1
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lrx/internal/operators/OperatorMapNotification$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorMapNotification$1;-><init>(Lrx/internal/operators/OperatorMapNotification;Lrx/Subscriber;)V

    .line 89
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    return-object v0
.end method
