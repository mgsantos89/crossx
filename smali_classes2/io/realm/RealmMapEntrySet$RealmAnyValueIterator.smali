.class Lio/realm/RealmMapEntrySet$RealmAnyValueIterator;
.super Lio/realm/RealmMapEntrySet$EntrySetIterator;
.source "RealmMapEntrySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmMapEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RealmAnyValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/RealmMapEntrySet$EntrySetIterator<",
        "TK;",
        "Lio/realm/RealmAny;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V
    .locals 0

    .line 557
    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$EntrySetIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-void
.end method


# virtual methods
.method protected getEntryInternal(I)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lio/realm/RealmAny;",
            ">;"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lio/realm/RealmMapEntrySet$RealmAnyValueIterator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsMap;->getKeyRealmAnyPair(I)Lio/realm/internal/util/Pair;

    move-result-object p1

    .line 563
    iget-object v0, p1, Lio/realm/internal/util/Pair;->first:Ljava/lang/Object;

    .line 564
    iget-object p1, p1, Lio/realm/internal/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lio/realm/internal/core/NativeRealmAny;

    .line 565
    new-instance v1, Lio/realm/RealmAny;

    iget-object v2, p0, Lio/realm/RealmMapEntrySet$RealmAnyValueIterator;->baseRealm:Lio/realm/BaseRealm;

    invoke-static {v2, p1}, Lio/realm/RealmAnyOperator;->fromNativeRealmAny(Lio/realm/BaseRealm;Lio/realm/internal/core/NativeRealmAny;)Lio/realm/RealmAnyOperator;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    .line 566
    new-instance p1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p1, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
