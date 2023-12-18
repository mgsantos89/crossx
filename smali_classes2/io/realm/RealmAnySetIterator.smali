.class Lio/realm/RealmAnySetIterator;
.super Lio/realm/SetIterator;
.source "SetValueOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/SetIterator<",
        "Lio/realm/RealmAny;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V
    .locals 0

    .line 1799
    invoke-direct {p0, p1, p2}, Lio/realm/SetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-void
.end method


# virtual methods
.method protected getValueAtIndex(I)Lio/realm/RealmAny;
    .locals 3

    .line 1804
    new-instance v0, Lio/realm/internal/core/NativeRealmAny;

    iget-object v1, p0, Lio/realm/RealmAnySetIterator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v1, p1}, Lio/realm/internal/OsSet;->getRealmAny(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lio/realm/internal/core/NativeRealmAny;-><init>(J)V

    .line 1805
    new-instance p1, Lio/realm/RealmAny;

    iget-object v1, p0, Lio/realm/RealmAnySetIterator;->baseRealm:Lio/realm/BaseRealm;

    invoke-static {v1, v0}, Lio/realm/RealmAnyOperator;->fromNativeRealmAny(Lio/realm/BaseRealm;Lio/realm/internal/core/NativeRealmAny;)Lio/realm/RealmAnyOperator;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object p1
.end method

.method protected bridge synthetic getValueAtIndex(I)Ljava/lang/Object;
    .locals 0

    .line 1797
    invoke-virtual {p0, p1}, Lio/realm/RealmAnySetIterator;->getValueAtIndex(I)Lio/realm/RealmAny;

    move-result-object p1

    return-object p1
.end method
