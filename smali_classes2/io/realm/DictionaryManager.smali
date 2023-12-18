.class Lio/realm/DictionaryManager;
.super Lio/realm/ManagedMapManager;
.source "ManagedMapManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/ManagedMapManager<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/MapValueOperator;Lio/realm/TypeSelectorForMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/MapValueOperator<",
            "Ljava/lang/String;",
            "TV;>;",
            "Lio/realm/TypeSelectorForMap<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 224
    invoke-direct {p0, p1, p2, p3}, Lio/realm/ManagedMapManager;-><init>(Lio/realm/BaseRealm;Lio/realm/MapValueOperator;Lio/realm/TypeSelectorForMap;)V

    return-void
.end method


# virtual methods
.method changeSetFactory(J)Lio/realm/MapChangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/realm/MapChangeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 292
    new-instance v0, Lio/realm/StringMapChangeSet;

    invoke-direct {v0, p1, p2}, Lio/realm/StringMapChangeSet;-><init>(J)V

    return-object v0
.end method

.method containsKeyInternal(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 232
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lio/realm/DictionaryManager;->isNotNullItemTypeValid(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lio/realm/DictionaryManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {v0, p1}, Lio/realm/MapValueOperator;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Only String keys can be used with \'containsKey\'."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null keys are not allowed when calling \'containsKey\'."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lio/realm/DictionaryManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {v0}, Lio/realm/MapValueOperator;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method freezeInternal(Lio/realm/internal/util/Pair;)Lio/realm/RealmDictionary;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/util/Pair<",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            ">;)",
            "Lio/realm/RealmDictionary<",
            "TV;>;"
        }
    .end annotation

    .line 250
    iget-object p1, p1, Lio/realm/internal/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lio/realm/BaseRealm;

    .line 251
    iget-object v0, p0, Lio/realm/DictionaryManager;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    invoke-virtual {v0, p1}, Lio/realm/TypeSelectorForMap;->freeze(Lio/realm/BaseRealm;)Lio/realm/RealmDictionary;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic freezeInternal(Lio/realm/internal/util/Pair;)Lio/realm/RealmMap;
    .locals 0

    .line 219
    invoke-virtual {p0, p1}, Lio/realm/DictionaryManager;->freezeInternal(Lio/realm/internal/util/Pair;)Lio/realm/RealmDictionary;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 259
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lio/realm/DictionaryManager;->isNotNullItemTypeValid(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lio/realm/DictionaryManager;->mapValueOperator:Lio/realm/MapValueOperator;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lio/realm/MapValueOperator;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 260
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Only String keys can be used with \'containsKey\'."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 257
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null keys are not allowed when calling \'get\'."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 219
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/realm/DictionaryManager;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 272
    :try_start_0
    iget-object v0, p0, Lio/realm/DictionaryManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {v0, p1, p2}, Lio/realm/MapValueOperator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 277
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "Data type mismatch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 278
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Cannot insert null values in a dictionary marked with \'@Required\'."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_0
    throw p1

    .line 269
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null keys are not allowed."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method validateMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+TV;>;)V"
        }
    .end annotation

    .line 240
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 241
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null keys are not allowed."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method
