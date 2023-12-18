.class Lio/realm/DynamicSetOperator;
.super Lio/realm/SetValueOperator;
.source "SetValueOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/SetValueOperator<",
        "Lio/realm/DynamicRealmObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/String;)V
    .locals 1

    .line 1368
    const-class v0, Lio/realm/DynamicRealmObject;

    invoke-direct {p0, p1, p2, v0, p3}, Lio/realm/SetValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private checkValidCollection(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/realm/DynamicRealmObject;",
            ">;)V"
        }
    .end annotation

    .line 1467
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/DynamicRealmObject;

    .line 1468
    invoke-direct {p0, v0}, Lio/realm/DynamicSetOperator;->checkValidObject(Lio/realm/RealmModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkValidObject(Lio/realm/RealmModel;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1401
    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1404
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    iget-object v0, p0, Lio/realm/DynamicSetOperator;->baseRealm:Lio/realm/BaseRealm;

    if-ne p1, v0, :cond_0

    return-void

    .line 1405
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'value\' belongs to a different Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1402
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'value\' is not a valid managed object."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1399
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "This set does not permit null values."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getManagedObject(Lio/realm/DynamicRealmObject;)Lio/realm/DynamicRealmObject;
    .locals 3

    if-eqz p1, :cond_1

    .line 1384
    iget-object v0, p0, Lio/realm/DynamicSetOperator;->baseRealm:Lio/realm/BaseRealm;

    iget-object v1, p0, Lio/realm/DynamicSetOperator;->className:Ljava/lang/String;

    const-string v2, "set"

    invoke-static {v0, p1, v1, v2}, Lio/realm/CollectionUtils;->checkCanObjectBeCopied(Lio/realm/BaseRealm;Lio/realm/RealmModel;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1388
    iget-object v0, p0, Lio/realm/DynamicSetOperator;->baseRealm:Lio/realm/BaseRealm;

    invoke-static {v0, p1}, Lio/realm/CollectionUtils;->copyToRealm(Lio/realm/BaseRealm;Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    :cond_0
    check-cast p1, Lio/realm/DynamicRealmObject;

    return-object p1

    .line 1381
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "This set does not permit null values."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method add(Lio/realm/DynamicRealmObject;)Z
    .locals 3

    .line 1374
    invoke-direct {p0, p1}, Lio/realm/DynamicSetOperator;->getManagedObject(Lio/realm/DynamicRealmObject;)Lio/realm/DynamicRealmObject;

    move-result-object p1

    .line 1375
    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    .line 1376
    iget-object v0, p0, Lio/realm/DynamicSetOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-interface {p1}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsSet;->addRow(J)Z

    move-result p1

    return p1
.end method

.method bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 1366
    check-cast p1, Lio/realm/DynamicRealmObject;

    invoke-virtual {p0, p1}, Lio/realm/DynamicSetOperator;->add(Lio/realm/DynamicRealmObject;)Z

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
            "Lio/realm/DynamicRealmObject;",
            ">;)Z"
        }
    .end annotation

    .line 1438
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1439
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/DynamicRealmObject;

    .line 1440
    invoke-direct {p0, v1}, Lio/realm/DynamicSetOperator;->getManagedObject(Lio/realm/DynamicRealmObject;)Lio/realm/DynamicRealmObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1442
    :cond_0
    invoke-static {v0}, Lio/realm/internal/core/NativeRealmAnyCollection;->newRealmModelCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1443
    iget-object v0, p0, Lio/realm/DynamicSetOperator;->osSet:Lio/realm/internal/OsSet;

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

    .line 1429
    invoke-direct {p0, p1}, Lio/realm/DynamicSetOperator;->checkValidCollection(Ljava/util/Collection;)V

    .line 1430
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newRealmModelCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1431
    iget-object v0, p0, Lio/realm/DynamicSetOperator;->osSet:Lio/realm/internal/OsSet;

    sget-object v1, Lio/realm/internal/OsSet$ExternalCollectionOperation;->CONTAINS_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsSet;->collectionFunnel(Lio/realm/internal/core/NativeRealmAnyCollection;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1
.end method

.method containsInternal(Ljava/lang/Object;)Z
    .locals 3

    .line 1411
    move-object v0, p1

    check-cast v0, Lio/realm/RealmModel;

    invoke-direct {p0, v0}, Lio/realm/DynamicSetOperator;->checkValidObject(Lio/realm/RealmModel;)V

    .line 1412
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    .line 1413
    iget-object v0, p0, Lio/realm/DynamicSetOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-interface {p1}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsSet;->containsRow(J)Z

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

    .line 1451
    invoke-direct {p0, p1}, Lio/realm/DynamicSetOperator;->checkValidCollection(Ljava/util/Collection;)V

    .line 1452
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newRealmModelCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1453
    iget-object v0, p0, Lio/realm/DynamicSetOperator;->osSet:Lio/realm/internal/OsSet;

    sget-object v1, Lio/realm/internal/OsSet$ExternalCollectionOperation;->REMOVE_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsSet;->collectionFunnel(Lio/realm/internal/core/NativeRealmAnyCollection;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1
.end method

.method removeInternal(Ljava/lang/Object;)Z
    .locals 3

    .line 1418
    move-object v0, p1

    check-cast v0, Lio/realm/RealmModel;

    invoke-direct {p0, v0}, Lio/realm/DynamicSetOperator;->checkValidObject(Lio/realm/RealmModel;)V

    .line 1419
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    .line 1420
    iget-object v0, p0, Lio/realm/DynamicSetOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-interface {p1}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsSet;->removeRow(J)Z

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

    .line 1461
    invoke-direct {p0, p1}, Lio/realm/DynamicSetOperator;->checkValidCollection(Ljava/util/Collection;)V

    .line 1462
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newRealmModelCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1463
    iget-object v0, p0, Lio/realm/DynamicSetOperator;->osSet:Lio/realm/internal/OsSet;

    sget-object v1, Lio/realm/internal/OsSet$ExternalCollectionOperation;->RETAIN_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsSet;->collectionFunnel(Lio/realm/internal/core/NativeRealmAnyCollection;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1
.end method

.method where()Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "Lio/realm/DynamicRealmObject;",
            ">;"
        }
    .end annotation

    .line 1474
    new-instance v0, Lio/realm/RealmQuery;

    iget-object v1, p0, Lio/realm/DynamicSetOperator;->baseRealm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/DynamicSetOperator;->osSet:Lio/realm/internal/OsSet;

    iget-object v3, p0, Lio/realm/DynamicSetOperator;->valueClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lio/realm/RealmQuery;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    return-object v0
.end method
