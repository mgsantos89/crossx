.class abstract Lio/realm/ManagedMapManager;
.super Ljava/lang/Object;
.source "ManagedMapManager.java"

# interfaces
.implements Ljava/util/Map;
.implements Lio/realm/internal/ManageableObject;
.implements Lio/realm/internal/Freezable;
.implements Lio/realm/internal/ObservableMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Lio/realm/internal/ManageableObject;",
        "Lio/realm/internal/Freezable<",
        "Lio/realm/RealmMap<",
        "TK;TV;>;>;",
        "Lio/realm/internal/ObservableMap;"
    }
.end annotation


# instance fields
.field protected final baseRealm:Lio/realm/BaseRealm;

.field protected final mapObserverPairs:Lio/realm/internal/ObserverPairList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/ObserverPairList<",
            "Lio/realm/internal/ObservableMap$MapObserverPair<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field protected final mapValueOperator:Lio/realm/MapValueOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/MapValueOperator<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected final typeSelectorForMap:Lio/realm/TypeSelectorForMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/TypeSelectorForMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/MapValueOperator;Lio/realm/TypeSelectorForMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/MapValueOperator<",
            "TK;TV;>;",
            "Lio/realm/TypeSelectorForMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lio/realm/internal/ObserverPairList;

    invoke-direct {v0}, Lio/realm/internal/ObserverPairList;-><init>()V

    iput-object v0, p0, Lio/realm/ManagedMapManager;->mapObserverPairs:Lio/realm/internal/ObserverPairList;

    .line 53
    iput-object p1, p0, Lio/realm/ManagedMapManager;->baseRealm:Lio/realm/BaseRealm;

    .line 54
    iput-object p2, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    .line 55
    iput-object p3, p0, Lio/realm/ManagedMapManager;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    return-void
.end method


# virtual methods
.method addChangeListener(Lio/realm/RealmMap;Lio/realm/MapChangeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmMap<",
            "TK;TV;>;",
            "Lio/realm/MapChangeListener<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lio/realm/ManagedMapManager;->baseRealm:Lio/realm/BaseRealm;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lio/realm/CollectionUtils;->checkForAddRemoveListener(Lio/realm/BaseRealm;Ljava/lang/Object;Z)V

    .line 158
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapObserverPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {v0, p0}, Lio/realm/MapValueOperator;->startListening(Lio/realm/internal/ObservableMap;)V

    .line 161
    :cond_0
    new-instance v0, Lio/realm/internal/ObservableMap$MapObserverPair;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/ObservableMap$MapObserverPair;-><init>(Lio/realm/RealmMap;Lio/realm/MapChangeListener;)V

    .line 162
    iget-object p1, p0, Lio/realm/ManagedMapManager;->mapObserverPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {p1, v0}, Lio/realm/internal/ObserverPairList;->add(Lio/realm/internal/ObserverPairList$ObserverPair;)V

    return-void
.end method

.method addChangeListener(Lio/realm/RealmMap;Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmMap<",
            "TK;TV;>;",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmMap<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 166
    new-instance v0, Lio/realm/internal/ObservableMap$RealmChangeListenerWrapper;

    invoke-direct {v0, p2}, Lio/realm/internal/ObservableMap$RealmChangeListenerWrapper;-><init>(Lio/realm/RealmChangeListener;)V

    invoke-virtual {p0, p1, v0}, Lio/realm/ManagedMapManager;->addChangeListener(Lio/realm/RealmMap;Lio/realm/MapChangeListener;)V

    return-void
.end method

.method abstract changeSetFactory(J)Lio/realm/MapChangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/realm/MapChangeSet<",
            "TK;>;"
        }
    .end annotation
.end method

.method public clear()V
    .locals 1

    .line 128
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {v0}, Lio/realm/MapValueOperator;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 112
    invoke-virtual {p0, p1}, Lio/realm/ManagedMapManager;->containsKeyInternal(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method abstract containsKeyInternal(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 117
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {v0, p1}, Lio/realm/MapValueOperator;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract entrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public freeze()Lio/realm/RealmMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {v0}, Lio/realm/MapValueOperator;->freeze()Lio/realm/internal/util/Pair;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/ManagedMapManager;->freezeInternal(Lio/realm/internal/util/Pair;)Lio/realm/RealmMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/realm/ManagedMapManager;->freeze()Lio/realm/RealmMap;

    move-result-object v0

    return-object v0
.end method

.method abstract freezeInternal(Lio/realm/internal/util/Pair;)Lio/realm/RealmMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/util/Pair<",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            ">;)",
            "Lio/realm/RealmMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method getClassName()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lio/realm/ManagedMapManager;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    invoke-virtual {v0}, Lio/realm/TypeSelectorForMap;->getValueClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOsMap()Lio/realm/internal/OsMap;
    .locals 1

    .line 195
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    iget-object v0, v0, Lio/realm/MapValueOperator;->osMap:Lio/realm/internal/OsMap;

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

    .line 203
    iget-object v0, p0, Lio/realm/ManagedMapManager;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    invoke-virtual {v0}, Lio/realm/TypeSelectorForMap;->getValueClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method hasListeners()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapObserverPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {v0}, Lio/realm/MapValueOperator;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {v0}, Lio/realm/MapValueOperator;->isFrozen()Z

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isNotNullItemTypeValid(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isValid()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {v0}, Lio/realm/MapValueOperator;->isValid()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {v0}, Lio/realm/MapValueOperator;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public notifyChangeListeners(J)V
    .locals 1

    .line 148
    new-instance v0, Lio/realm/MapChangeSetImpl;

    invoke-virtual {p0, p1, p2}, Lio/realm/ManagedMapManager;->changeSetFactory(J)Lio/realm/MapChangeSet;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/realm/MapChangeSetImpl;-><init>(Lio/realm/MapChangeSet;)V

    .line 149
    invoke-interface {v0}, Lio/realm/MapChangeSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object p1, p0, Lio/realm/ManagedMapManager;->mapObserverPairs:Lio/realm/internal/ObserverPairList;

    new-instance p2, Lio/realm/internal/ObservableMap$Callback;

    invoke-direct {p2, v0}, Lio/realm/internal/ObservableMap$Callback;-><init>(Lio/realm/MapChangeSet;)V

    invoke-virtual {p1, p2}, Lio/realm/internal/ObserverPairList;->foreach(Lio/realm/internal/ObserverPairList$Callback;)V

    return-void
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p1}, Lio/realm/ManagedMapManager;->validateMap(Ljava/util/Map;)V

    .line 123
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {v0, p1}, Lio/realm/MapValueOperator;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {v0, p1}, Lio/realm/MapValueOperator;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {v1, p1}, Lio/realm/MapValueOperator;->remove(Ljava/lang/Object;)V

    return-object v0

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null keys are not allowed."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method removeAllChangeListeners()V
    .locals 3

    .line 181
    iget-object v0, p0, Lio/realm/ManagedMapManager;->baseRealm:Lio/realm/BaseRealm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/realm/CollectionUtils;->checkForAddRemoveListener(Lio/realm/BaseRealm;Ljava/lang/Object;Z)V

    .line 182
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapObserverPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->clear()V

    .line 183
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {v0}, Lio/realm/MapValueOperator;->stopListening()V

    return-void
.end method

.method removeListener(Lio/realm/RealmMap;Lio/realm/MapChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmMap<",
            "TK;TV;>;",
            "Lio/realm/MapChangeListener<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapObserverPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/ObserverPairList;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    iget-object p1, p0, Lio/realm/ManagedMapManager;->mapObserverPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {p1}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {p1}, Lio/realm/MapValueOperator;->stopListening()V

    :cond_0
    return-void
.end method

.method removeListener(Lio/realm/RealmMap;Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmMap<",
            "TK;TV;>;",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmMap<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 177
    new-instance v0, Lio/realm/internal/ObservableMap$RealmChangeListenerWrapper;

    invoke-direct {v0, p2}, Lio/realm/internal/ObservableMap$RealmChangeListenerWrapper;-><init>(Lio/realm/RealmChangeListener;)V

    invoke-virtual {p0, p1, v0}, Lio/realm/ManagedMapManager;->removeListener(Lio/realm/RealmMap;Lio/realm/MapChangeListener;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 102
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {v0}, Lio/realm/MapValueOperator;->size()I

    move-result v0

    return v0
.end method

.method abstract validateMap(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lio/realm/ManagedMapManager;->mapValueOperator:Lio/realm/MapValueOperator;

    invoke-virtual {v0}, Lio/realm/MapValueOperator;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
