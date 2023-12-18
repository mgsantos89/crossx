.class Lio/realm/RealmAnySetOperator;
.super Lio/realm/SetValueOperator;
.source "SetValueOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/SetValueOperator<",
        "Lio/realm/RealmAny;",
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
            "Lio/realm/RealmAny;",
            ">;)V"
        }
    .end annotation

    .line 1484
    invoke-direct {p0, p1, p2, p3}, Lio/realm/SetValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    return-void
.end method

.method private checkValidObject(Lio/realm/RealmAny;)V
    .locals 2

    .line 1586
    :try_start_0
    iget-object v0, p0, Lio/realm/RealmAnySetOperator;->baseRealm:Lio/realm/BaseRealm;

    invoke-virtual {p1, v0}, Lio/realm/RealmAny;->checkValidObject(Lio/realm/BaseRealm;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RealmAny collection contains unmanaged objects."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getManagedRealmAny(Lio/realm/RealmAny;)Lio/realm/RealmAny;
    .locals 3
    .param p1    # Lio/realm/RealmAny;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1496
    invoke-static {}, Lio/realm/RealmAny;->nullValue()Lio/realm/RealmAny;

    move-result-object p1

    goto :goto_0

    .line 1497
    :cond_0
    invoke-virtual {p1}, Lio/realm/RealmAny;->getType()Lio/realm/RealmAny$Type;

    move-result-object v0

    sget-object v1, Lio/realm/RealmAny$Type;->OBJECT:Lio/realm/RealmAny$Type;

    if-ne v0, v1, :cond_2

    .line 1498
    const-class v0, Lio/realm/RealmModel;

    invoke-virtual {p1, v0}, Lio/realm/RealmAny;->asRealmModel(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object p1

    .line 1499
    iget-object v0, p0, Lio/realm/RealmAnySetOperator;->baseRealm:Lio/realm/BaseRealm;

    iget-object v1, p0, Lio/realm/RealmAnySetOperator;->valueClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "set"

    invoke-static {v0, p1, v1, v2}, Lio/realm/CollectionUtils;->checkCanObjectBeCopied(Lio/realm/BaseRealm;Lio/realm/RealmModel;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1500
    iget-object v0, p0, Lio/realm/RealmAnySetOperator;->baseRealm:Lio/realm/BaseRealm;

    invoke-static {v0, p1}, Lio/realm/CollectionUtils;->copyToRealm(Lio/realm/BaseRealm;Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    :cond_1
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    .line 1501
    invoke-static {p1}, Lio/realm/RealmAny;->valueOf(Lio/realm/RealmModel;)Lio/realm/RealmAny;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private getNativeRealmAnyCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/realm/RealmAny;",
            ">;)",
            "Lio/realm/internal/core/NativeRealmAnyCollection;"
        }
    .end annotation

    .line 1533
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 1534
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Z

    .line 1537
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/RealmAny;

    if-eqz v3, :cond_0

    .line 1539
    invoke-direct {p0, v3}, Lio/realm/RealmAnySetOperator;->checkValidObject(Lio/realm/RealmAny;)V

    .line 1540
    invoke-virtual {v3}, Lio/realm/RealmAny;->getNativePtr()J

    move-result-wide v3

    aput-wide v3, v0, v2

    const/4 v3, 0x1

    .line 1541
    aput-boolean v3, v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1546
    :cond_1
    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newRealmAnyCollection([J[Z)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method add(Lio/realm/RealmAny;)Z
    .locals 3
    .param p1    # Lio/realm/RealmAny;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1489
    invoke-direct {p0, p1}, Lio/realm/RealmAnySetOperator;->getManagedRealmAny(Lio/realm/RealmAny;)Lio/realm/RealmAny;

    move-result-object p1

    .line 1490
    iget-object v0, p0, Lio/realm/RealmAnySetOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {p1}, Lio/realm/RealmAny;->getNativePtr()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsSet;->addRealmAny(J)Z

    move-result p1

    return p1
.end method

.method bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1481
    check-cast p1, Lio/realm/RealmAny;

    invoke-virtual {p0, p1}, Lio/realm/RealmAnySetOperator;->add(Lio/realm/RealmAny;)Z

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
            "Lio/realm/RealmAny;",
            ">;)Z"
        }
    .end annotation

    .line 1560
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1561
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmAny;

    .line 1562
    invoke-direct {p0, v1}, Lio/realm/RealmAnySetOperator;->getManagedRealmAny(Lio/realm/RealmAny;)Lio/realm/RealmAny;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1564
    :cond_0
    invoke-direct {p0, v0}, Lio/realm/RealmAnySetOperator;->getNativeRealmAnyCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1565
    iget-object v0, p0, Lio/realm/RealmAnySetOperator;->osSet:Lio/realm/internal/OsSet;

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

    .line 1553
    invoke-direct {p0, p1}, Lio/realm/RealmAnySetOperator;->getNativeRealmAnyCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1554
    iget-object v0, p0, Lio/realm/RealmAnySetOperator;->osSet:Lio/realm/internal/OsSet;

    sget-object v1, Lio/realm/internal/OsSet$ExternalCollectionOperation;->CONTAINS_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsSet;->collectionFunnel(Lio/realm/internal/core/NativeRealmAnyCollection;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1
.end method

.method containsInternal(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1510
    invoke-static {}, Lio/realm/RealmAny;->nullValue()Lio/realm/RealmAny;

    move-result-object p1

    goto :goto_0

    .line 1512
    :cond_0
    check-cast p1, Lio/realm/RealmAny;

    .line 1514
    :goto_0
    invoke-direct {p0, p1}, Lio/realm/RealmAnySetOperator;->checkValidObject(Lio/realm/RealmAny;)V

    .line 1515
    iget-object v0, p0, Lio/realm/RealmAnySetOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {p1}, Lio/realm/RealmAny;->getNativePtr()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsSet;->containsRealmAny(J)Z

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

    .line 1572
    invoke-direct {p0, p1}, Lio/realm/RealmAnySetOperator;->getNativeRealmAnyCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1573
    iget-object v0, p0, Lio/realm/RealmAnySetOperator;->osSet:Lio/realm/internal/OsSet;

    sget-object v1, Lio/realm/internal/OsSet$ExternalCollectionOperation;->REMOVE_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsSet;->collectionFunnel(Lio/realm/internal/core/NativeRealmAnyCollection;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1
.end method

.method removeInternal(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1523
    invoke-static {}, Lio/realm/RealmAny;->nullValue()Lio/realm/RealmAny;

    move-result-object p1

    goto :goto_0

    .line 1525
    :cond_0
    check-cast p1, Lio/realm/RealmAny;

    .line 1527
    :goto_0
    invoke-direct {p0, p1}, Lio/realm/RealmAnySetOperator;->checkValidObject(Lio/realm/RealmAny;)V

    .line 1528
    iget-object v0, p0, Lio/realm/RealmAnySetOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {p1}, Lio/realm/RealmAny;->getNativePtr()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsSet;->removeRealmAny(J)Z

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

    .line 1580
    invoke-direct {p0, p1}, Lio/realm/RealmAnySetOperator;->getNativeRealmAnyCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1581
    iget-object v0, p0, Lio/realm/RealmAnySetOperator;->osSet:Lio/realm/internal/OsSet;

    sget-object v1, Lio/realm/internal/OsSet$ExternalCollectionOperation;->RETAIN_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsSet;->collectionFunnel(Lio/realm/internal/core/NativeRealmAnyCollection;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1
.end method
