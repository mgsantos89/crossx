.class Lio/realm/IntegerSetIterator;
.super Lio/realm/SetIterator;
.source "SetValueOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/SetIterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V
    .locals 0

    .line 1657
    invoke-direct {p0, p1, p2}, Lio/realm/SetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-void
.end method


# virtual methods
.method protected getValueAtIndex(I)Ljava/lang/Integer;
    .locals 1

    .line 1662
    iget-object v0, p0, Lio/realm/IntegerSetIterator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSet;->getValueAtIndex(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1667
    :cond_0
    check-cast p1, Ljava/lang/Long;

    .line 1668
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getValueAtIndex(I)Ljava/lang/Object;
    .locals 0

    .line 1655
    invoke-virtual {p0, p1}, Lio/realm/IntegerSetIterator;->getValueAtIndex(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
