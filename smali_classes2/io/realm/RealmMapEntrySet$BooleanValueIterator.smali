.class Lio/realm/RealmMapEntrySet$BooleanValueIterator;
.super Lio/realm/RealmMapEntrySet$EntrySetIterator;
.source "RealmMapEntrySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmMapEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BooleanValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/RealmMapEntrySet$EntrySetIterator<",
        "TK;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V
    .locals 0

    .line 430
    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$EntrySetIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-void
.end method


# virtual methods
.method protected getEntryInternal(I)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lio/realm/RealmMapEntrySet$BooleanValueIterator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsMap;->getEntryForPrimitive(I)Lio/realm/internal/util/Pair;

    move-result-object p1

    .line 436
    iget-object v0, p1, Lio/realm/internal/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object p1, p1, Lio/realm/internal/util/Pair;->first:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 440
    :cond_0
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v1, p1, Lio/realm/internal/util/Pair;->first:Ljava/lang/Object;

    iget-object p1, p1, Lio/realm/internal/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-direct {v0, v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
