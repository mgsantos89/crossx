.class abstract Lrx/internal/util/PaddedAtomicIntegerBase;
.super Lrx/internal/util/FrontPadding;
.source "PaddedAtomicIntegerBase.java"


# static fields
.field private static final serialVersionUID:J = 0x5a6354c9ad4891feL

.field private static final updater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lrx/internal/util/PaddedAtomicIntegerBase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-class v0, Lrx/internal/util/PaddedAtomicIntegerBase;

    const-string v1, "value"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/util/PaddedAtomicIntegerBase;->updater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lrx/internal/util/FrontPadding;-><init>()V

    return-void
.end method


# virtual methods
.method public final addAndGet(I)I
    .locals 1

    .line 77
    sget-object v0, Lrx/internal/util/PaddedAtomicIntegerBase;->updater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->addAndGet(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final compareAndSet(II)Z
    .locals 1

    .line 50
    sget-object v0, Lrx/internal/util/PaddedAtomicIntegerBase;->updater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method

.method public final decrementAndGet()I
    .locals 1

    .line 68
    sget-object v0, Lrx/internal/util/PaddedAtomicIntegerBase;->updater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final get()I
    .locals 1

    .line 38
    iget v0, p0, Lrx/internal/util/PaddedAtomicIntegerBase;->value:I

    return v0
.end method

.method public final getAndAdd(I)I
    .locals 1

    .line 62
    sget-object v0, Lrx/internal/util/PaddedAtomicIntegerBase;->updater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndAdd(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final getAndDecrement()I
    .locals 1

    .line 74
    sget-object v0, Lrx/internal/util/PaddedAtomicIntegerBase;->updater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getAndIncrement()I
    .locals 1

    .line 71
    sget-object v0, Lrx/internal/util/PaddedAtomicIntegerBase;->updater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getAndSet(I)I
    .locals 1

    .line 58
    sget-object p1, Lrx/internal/util/PaddedAtomicIntegerBase;->updater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    iget v0, p0, Lrx/internal/util/PaddedAtomicIntegerBase;->value:I

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final incrementAndGet()I
    .locals 1

    .line 65
    sget-object v0, Lrx/internal/util/PaddedAtomicIntegerBase;->updater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final lazySet(I)V
    .locals 1

    .line 46
    sget-object v0, Lrx/internal/util/PaddedAtomicIntegerBase;->updater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->lazySet(Ljava/lang/Object;I)V

    return-void
.end method

.method public final set(I)V
    .locals 0

    .line 42
    iput p1, p0, Lrx/internal/util/PaddedAtomicIntegerBase;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lrx/internal/util/PaddedAtomicIntegerBase;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final weakCompareAndSet(II)Z
    .locals 1

    .line 54
    sget-object v0, Lrx/internal/util/PaddedAtomicIntegerBase;->updater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->weakCompareAndSet(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method
