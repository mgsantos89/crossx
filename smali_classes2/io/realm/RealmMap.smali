.class public abstract Lio/realm/RealmMap;
.super Ljava/lang/Object;
.source "RealmMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Lio/realm/internal/ManageableObject;
.implements Lio/realm/internal/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/RealmMap$UnmanagedMapStrategy;,
        Lio/realm/RealmMap$ManagedMapStrategy;,
        Lio/realm/RealmMap$MapStrategy;
    }
.end annotation

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
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field protected final mapStrategy:Lio/realm/RealmMap$MapStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmMap$MapStrategy<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lio/realm/RealmMap$UnmanagedMapStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/RealmMap$UnmanagedMapStrategy;-><init>(Lio/realm/RealmMap$1;)V

    iput-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    return-void
.end method

.method constructor <init>(Lio/realm/RealmMap$MapStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmMap$MapStrategy<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lio/realm/RealmMap;-><init>()V

    .line 74
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmMap$MapStrategy;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public addChangeListener(Lio/realm/MapChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/MapChangeListener<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0, p0, p1}, Lio/realm/RealmMap$MapStrategy;->addChangeListener(Lio/realm/RealmMap;Lio/realm/MapChangeListener;)V

    return-void
.end method

.method public addChangeListener(Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmMap<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0, p0, p1}, Lio/realm/RealmMap$MapStrategy;->addChangeListener(Lio/realm/RealmMap;Lio/realm/RealmChangeListener;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 159
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0}, Lio/realm/RealmMap$MapStrategy;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 129
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmMap$MapStrategy;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 134
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmMap$MapStrategy;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0}, Lio/realm/RealmMap$MapStrategy;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
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

    .line 183
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0}, Lio/realm/RealmMap$MapStrategy;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmMap;

    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lio/realm/RealmMap;->freeze()Lio/realm/RealmMap;

    move-result-object v0

    return-object v0
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

    .line 139
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmMap$MapStrategy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getOsMap()Lio/realm/internal/OsMap;
    .locals 1

    .line 305
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0}, Lio/realm/RealmMap$MapStrategy;->getOsMap()Lio/realm/internal/OsMap;

    move-result-object v0

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

    .line 313
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0}, Lio/realm/RealmMap$MapStrategy;->getValueClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method getValueClassName()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0}, Lio/realm/RealmMap$MapStrategy;->getValueClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasListeners()Z
    .locals 1

    .line 301
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0}, Lio/realm/RealmMap$MapStrategy;->hasListeners()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0}, Lio/realm/RealmMap$MapStrategy;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0}, Lio/realm/RealmMap$MapStrategy;->isFrozen()Z

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0}, Lio/realm/RealmMap$MapStrategy;->isManaged()Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0}, Lio/realm/RealmMap$MapStrategy;->isValid()Z

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

    .line 164
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0}, Lio/realm/RealmMap$MapStrategy;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0, p1, p2}, Lio/realm/RealmMap$MapStrategy;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 154
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmMap$MapStrategy;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmMap$MapStrategy;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeAllChangeListeners()V
    .locals 1

    .line 297
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0}, Lio/realm/RealmMap$MapStrategy;->removeAllChangeListeners()V

    return-void
.end method

.method public removeChangeListener(Lio/realm/MapChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/MapChangeListener<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0, p0, p1}, Lio/realm/RealmMap$MapStrategy;->removeChangeListener(Lio/realm/RealmMap;Lio/realm/MapChangeListener;)V

    return-void
.end method

.method public removeChangeListener(Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmMap<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0, p0, p1}, Lio/realm/RealmMap$MapStrategy;->removeChangeListener(Lio/realm/RealmMap;Lio/realm/RealmChangeListener;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 119
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0}, Lio/realm/RealmMap$MapStrategy;->size()I

    move-result v0

    return v0
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

    .line 169
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v0}, Lio/realm/RealmMap$MapStrategy;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
