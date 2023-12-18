.class Lio/realm/RealmMapEntrySet$RealmModelValueIterator;
.super Lio/realm/RealmMapEntrySet$EntrySetIterator;
.source "RealmMapEntrySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmMapEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RealmModelValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/RealmMapEntrySet$EntrySetIterator<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final typeSelectorForMap:Lio/realm/TypeSelectorForMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/TypeSelectorForMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;Lio/realm/TypeSelectorForMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/OsMap;",
            "Lio/realm/BaseRealm;",
            "Lio/realm/TypeSelectorForMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 536
    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$EntrySetIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    .line 537
    iput-object p3, p0, Lio/realm/RealmMapEntrySet$RealmModelValueIterator;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    return-void
.end method


# virtual methods
.method protected getEntryInternal(I)Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lio/realm/RealmMapEntrySet$RealmModelValueIterator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsMap;->getKeyObjRowPair(I)Lio/realm/internal/util/Pair;

    move-result-object p1

    .line 543
    iget-object v0, p1, Lio/realm/internal/util/Pair;->first:Ljava/lang/Object;

    .line 544
    iget-object p1, p1, Lio/realm/internal/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    .line 547
    new-instance p1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 550
    :cond_0
    iget-object p1, p0, Lio/realm/RealmMapEntrySet$RealmModelValueIterator;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    iget-object v3, p0, Lio/realm/RealmMapEntrySet$RealmModelValueIterator;->baseRealm:Lio/realm/BaseRealm;

    invoke-virtual {p1, v3, v1, v2, v0}, Lio/realm/TypeSelectorForMap;->getModelEntry(Lio/realm/BaseRealm;JLjava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
