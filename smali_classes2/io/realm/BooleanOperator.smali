.class Lio/realm/BooleanOperator;
.super Lio/realm/SetValueOperator;
.source "SetValueOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/SetValueOperator<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsSet;",
            "Ljava/lang/Class<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 378
    invoke-direct {p0, p1, p2, p3}, Lio/realm/SetValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method add(Ljava/lang/Boolean;)Z
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 383
    iget-object v0, p0, Lio/realm/BooleanOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSet;->add(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 375
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lio/realm/BooleanOperator;->add(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method addAllInternal(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 409
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newBooleanCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 410
    iget-object v0, p0, Lio/realm/BooleanOperator;->osSet:Lio/realm/internal/OsSet;

    sget-object v1, Lio/realm/internal/OsSet$ExternalCollectionOperation;->ADD_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsSet;->collectionFunnel(Lio/realm/internal/core/NativeRealmAnyCollection;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1
.end method

.method containsAllInternal(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 401
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newBooleanCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 402
    iget-object v0, p0, Lio/realm/BooleanOperator;->osSet:Lio/realm/internal/OsSet;

    sget-object v1, Lio/realm/internal/OsSet$ExternalCollectionOperation;->CONTAINS_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsSet;->collectionFunnel(Lio/realm/internal/core/NativeRealmAnyCollection;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1
.end method

.method containsInternal(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 388
    iget-object v0, p0, Lio/realm/BooleanOperator;->osSet:Lio/realm/internal/OsSet;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSet;->contains(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method removeAllInternal(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 417
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newBooleanCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 418
    iget-object v0, p0, Lio/realm/BooleanOperator;->osSet:Lio/realm/internal/OsSet;

    sget-object v1, Lio/realm/internal/OsSet$ExternalCollectionOperation;->REMOVE_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsSet;->collectionFunnel(Lio/realm/internal/core/NativeRealmAnyCollection;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1
.end method

.method removeInternal(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 393
    iget-object v0, p0, Lio/realm/BooleanOperator;->osSet:Lio/realm/internal/OsSet;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSet;->remove(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method retainAllInternal(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 425
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newBooleanCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 426
    iget-object v0, p0, Lio/realm/BooleanOperator;->osSet:Lio/realm/internal/OsSet;

    sget-object v1, Lio/realm/internal/OsSet$ExternalCollectionOperation;->RETAIN_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsSet;->collectionFunnel(Lio/realm/internal/core/NativeRealmAnyCollection;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1
.end method
