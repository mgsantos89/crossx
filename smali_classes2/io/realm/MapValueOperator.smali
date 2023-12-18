.class abstract Lio/realm/MapValueOperator;
.super Ljava/lang/Object;
.source "ManagedMapManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final baseRealm:Lio/realm/BaseRealm;

.field protected final iteratorType:Lio/realm/RealmMapEntrySet$IteratorType;

.field protected final osMap:Lio/realm/internal/OsMap;

.field protected final typeSelectorForMap:Lio/realm/TypeSelectorForMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/TypeSelectorForMap<",
            "TK;TV;>;"
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
.method constructor <init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            "Lio/realm/TypeSelectorForMap<",
            "TK;TV;>;",
            "Lio/realm/RealmMapEntrySet$IteratorType;",
            ")V"
        }
    .end annotation

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lio/realm/MapValueOperator;->valueClass:Ljava/lang/Class;

    .line 317
    iput-object p2, p0, Lio/realm/MapValueOperator;->baseRealm:Lio/realm/BaseRealm;

    .line 318
    iput-object p3, p0, Lio/realm/MapValueOperator;->osMap:Lio/realm/internal/OsMap;

    .line 319
    iput-object p4, p0, Lio/realm/MapValueOperator;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    .line 320
    iput-object p5, p0, Lio/realm/MapValueOperator;->iteratorType:Lio/realm/RealmMapEntrySet$IteratorType;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 369
    iget-object v0, p0, Lio/realm/MapValueOperator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0}, Lio/realm/internal/OsMap;->clear()V

    return-void
.end method

.method containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 346
    iget-object v0, p0, Lio/realm/MapValueOperator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 350
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MapValueOperator;->valueClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Only \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/realm/MapValueOperator;->valueClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'  values can be used with \'containsValue\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 354
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lio/realm/MapValueOperator;->containsValueInternal(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method abstract containsValueInternal(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method abstract entrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method freeze()Lio/realm/internal/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/internal/util/Pair<",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            ">;"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lio/realm/MapValueOperator;->baseRealm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->freeze()Lio/realm/BaseRealm;

    move-result-object v0

    .line 390
    new-instance v1, Lio/realm/internal/util/Pair;

    iget-object v2, p0, Lio/realm/MapValueOperator;->osMap:Lio/realm/internal/OsMap;

    iget-object v3, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2, v3}, Lio/realm/internal/OsMap;->freeze(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/OsMap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lio/realm/internal/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method isEmpty()Z
    .locals 4

    .line 342
    iget-object v0, p0, Lio/realm/MapValueOperator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFrozen()Z
    .locals 1

    .line 365
    iget-object v0, p0, Lio/realm/MapValueOperator;->baseRealm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v0

    return v0
.end method

.method isValid()Z
    .locals 1

    .line 358
    iget-object v0, p0, Lio/realm/MapValueOperator;->baseRealm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 361
    :cond_0
    iget-object v0, p0, Lio/realm/MapValueOperator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0}, Lio/realm/internal/OsMap;->isValid()Z

    move-result v0

    return v0
.end method

.method keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lio/realm/MapValueOperator;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    invoke-virtual {v0}, Lio/realm/TypeSelectorForMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method abstract put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 375
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 376
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/realm/MapValueOperator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method remove(Ljava/lang/Object;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lio/realm/MapValueOperator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsMap;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method size()I
    .locals 2

    .line 338
    iget-object v0, p0, Lio/realm/MapValueOperator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method startListening(Lio/realm/internal/ObservableMap;)V
    .locals 1

    .line 394
    iget-object v0, p0, Lio/realm/MapValueOperator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsMap;->startListening(Lio/realm/internal/ObservableMap;)V

    return-void
.end method

.method stopListening()V
    .locals 1

    .line 398
    iget-object v0, p0, Lio/realm/MapValueOperator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0}, Lio/realm/internal/OsMap;->stopListening()V

    return-void
.end method

.method values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lio/realm/MapValueOperator;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    invoke-virtual {v0}, Lio/realm/TypeSelectorForMap;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
