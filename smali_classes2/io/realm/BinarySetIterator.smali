.class Lio/realm/BinarySetIterator;
.super Lio/realm/SetIterator;
.source "SetValueOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/SetIterator<",
        "[B>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V
    .locals 0

    .line 1744
    invoke-direct {p0, p1, p2}, Lio/realm/SetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getValueAtIndex(I)Ljava/lang/Object;
    .locals 0

    .line 1742
    invoke-virtual {p0, p1}, Lio/realm/BinarySetIterator;->getValueAtIndex(I)[B

    move-result-object p1

    return-object p1
.end method

.method protected getValueAtIndex(I)[B
    .locals 1

    .line 1749
    iget-object v0, p0, Lio/realm/BinarySetIterator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSet;->getValueAtIndex(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1754
    :cond_0
    check-cast p1, [B

    return-object p1
.end method
