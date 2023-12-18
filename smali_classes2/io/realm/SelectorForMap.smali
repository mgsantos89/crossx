.class Lio/realm/SelectorForMap;
.super Lio/realm/TypeSelectorForMap;
.source "TypeSelectorForMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/TypeSelectorForMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field protected final keyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TK;>;"
        }
    .end annotation
.end field

.field protected final valueClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Lio/realm/TypeSelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)V

    .line 90
    iput-object p3, p0, Lio/realm/SelectorForMap;->keyClass:Ljava/lang/Class;

    .line 91
    iput-object p4, p0, Lio/realm/SelectorForMap;->valueClass:Ljava/lang/Class;

    return-void
.end method

.method private produceResults(Lio/realm/BaseRealm;Lio/realm/internal/util/Pair;ZLjava/lang/Class;)Lio/realm/RealmResults;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/util/Pair<",
            "Lio/realm/internal/Table;",
            "Ljava/lang/Long;",
            ">;Z",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/realm/RealmResults<",
            "TT;>;"
        }
    .end annotation

    .line 115
    iget-object p2, p2, Lio/realm/internal/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    .line 116
    iget-object v0, p1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lio/realm/internal/OsResults;->createFromMap(Lio/realm/internal/OsSharedRealm;J)Lio/realm/internal/OsResults;

    move-result-object p2

    .line 117
    new-instance v0, Lio/realm/RealmResults;

    invoke-direct {v0, p1, p2, p4, p3}, Lio/realm/RealmResults;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/Class;Z)V

    return-object v0
.end method


# virtual methods
.method public freeze(Lio/realm/BaseRealm;)Lio/realm/RealmDictionary;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            ")",
            "Lio/realm/RealmDictionary<",
            "TV;>;"
        }
    .end annotation

    .line 107
    new-instance v0, Lio/realm/RealmDictionary;

    iget-object v1, p0, Lio/realm/SelectorForMap;->osMap:Lio/realm/internal/OsMap;

    iget-object v2, p0, Lio/realm/SelectorForMap;->valueClass:Ljava/lang/Class;

    invoke-direct {v0, p1, v1, v2}, Lio/realm/RealmDictionary;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V

    return-object v0
.end method

.method getValueClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lio/realm/SelectorForMap;->valueClass:Ljava/lang/Class;

    return-object v0
.end method

.method getValueClassName()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lio/realm/SelectorForMap;->valueClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lio/realm/SelectorForMap;->valueClass:Ljava/lang/Class;

    invoke-static {v0}, Lio/realm/CollectionUtils;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 102
    iget-object v1, p0, Lio/realm/SelectorForMap;->baseRealm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/SelectorForMap;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v2}, Lio/realm/internal/OsMap;->tableAndValuePtrs()Lio/realm/internal/util/Pair;

    move-result-object v2

    iget-object v3, p0, Lio/realm/SelectorForMap;->valueClass:Ljava/lang/Class;

    invoke-direct {p0, v1, v2, v0, v3}, Lio/realm/SelectorForMap;->produceResults(Lio/realm/BaseRealm;Lio/realm/internal/util/Pair;ZLjava/lang/Class;)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lio/realm/SelectorForMap;->baseRealm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/SelectorForMap;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v2}, Lio/realm/internal/OsMap;->tableAndKeyPtrs()Lio/realm/internal/util/Pair;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lio/realm/SelectorForMap;->keyClass:Ljava/lang/Class;

    invoke-direct {p0, v1, v2, v3, v4}, Lio/realm/SelectorForMap;->produceResults(Lio/realm/BaseRealm;Lio/realm/internal/util/Pair;ZLjava/lang/Class;)Lio/realm/RealmResults;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
