.class public final Lrx/internal/operators/OperatorZip;
.super Ljava/lang/Object;
.source "OperatorZip.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorZip$Zip;,
        Lrx/internal/operators/OperatorZip$ZipProducer;,
        Lrx/internal/operators/OperatorZip$ZipSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TR;[",
        "Lrx/Observable<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final zipFunction:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func2;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func2;)Lrx/functions/FuncN;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func3;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func3;)Lrx/functions/FuncN;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func4;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func4;)Lrx/functions/FuncN;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func5;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func5;)Lrx/functions/FuncN;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func6;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func6;)Lrx/functions/FuncN;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func7;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func7;)Lrx/functions/FuncN;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func8;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func8;)Lrx/functions/FuncN;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func9;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func9;)Lrx/functions/FuncN;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    return-void
.end method

.method public constructor <init>(Lrx/functions/FuncN;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/FuncN<",
            "+TR;>;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorZip;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object p1

    return-object p1
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;)",
            "Lrx/Subscriber<",
            "-[",
            "Lrx/Observable;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Lrx/internal/operators/OperatorZip$Zip;

    iget-object v1, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorZip$Zip;-><init>(Lrx/Subscriber;Lrx/functions/FuncN;)V

    .line 114
    new-instance v1, Lrx/internal/operators/OperatorZip$ZipProducer;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorZip$ZipProducer;-><init>(Lrx/internal/operators/OperatorZip$Zip;)V

    .line 115
    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 116
    new-instance v2, Lrx/internal/operators/OperatorZip$ZipSubscriber;

    invoke-direct {v2, p0, p1, v0, v1}, Lrx/internal/operators/OperatorZip$ZipSubscriber;-><init>(Lrx/internal/operators/OperatorZip;Lrx/Subscriber;Lrx/internal/operators/OperatorZip$Zip;Lrx/internal/operators/OperatorZip$ZipProducer;)V

    return-object v2
.end method
