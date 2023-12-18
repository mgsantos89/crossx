.class Lio/realm/RealmModelSetOperator;
.super Lio/realm/SetValueOperator;
.source "SetValueOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/realm/RealmModel;",
        ">",
        "Lio/realm/SetValueOperator<",
        "TT;>;"
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
            "TT;>;)V"
        }
    .end annotation

    .line 1253
    invoke-direct {p0, p1, p2, p3}, Lio/realm/SetValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    return-void
.end method

.method private checkValidCollection(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1352
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    .line 1353
    invoke-direct {p0, v0}, Lio/realm/RealmModelSetOperator;->checkValidObject(Lio/realm/RealmModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkValidObject(Lio/realm/RealmModel;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1286
    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1289
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    iget-object v0, p0, Lio/realm/RealmModelSetOperator;->baseRealm:Lio/realm/BaseRealm;

    if-ne p1, v0, :cond_0

    return-void

    .line 1290
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'value\' belongs to a different Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1287
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'value\' is not a valid managed object."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1284
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "This set does not permit null values."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getManagedObject(Lio/realm/RealmModel;)Lio/realm/RealmModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1269
    iget-object v0, p0, Lio/realm/RealmModelSetOperator;->baseRealm:Lio/realm/BaseRealm;

    iget-object v1, p0, Lio/realm/RealmModelSetOperator;->valueClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "set"

    invoke-static {v0, p1, v1, v2}, Lio/realm/CollectionUtils;->checkCanObjectBeCopied(Lio/realm/BaseRealm;Lio/realm/RealmModel;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lio/realm/RealmModelSetOperator;->baseRealm:Lio/realm/BaseRealm;

    invoke-static {v0, p1}, Lio/realm/CollectionUtils;->copyToRealm(Lio/realm/BaseRealm;Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    :cond_0
    return-object p1

    .line 1266
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "This set does not permit null values."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method add(Lio/realm/RealmModel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1259
    invoke-direct {p0, p1}, Lio/realm/RealmModelSetOperator;->getManagedObject(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    .line 1260
    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    .line 1261
    iget-object v0, p0, Lio/realm/RealmModelSetOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-interface {p1}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsSet;->addRow(J)Z

    move-result p1

    return p1
.end method

.method bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 1250
    check-cast p1, Lio/realm/RealmModel;

    invoke-virtual {p0, p1}, Lio/realm/RealmModelSetOperator;->add(Lio/realm/RealmModel;)Z

    move-result p1

    return p1
.end method

.method addAllInternal(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 1323
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1324
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    .line 1325
    invoke-direct {p0, v1}, Lio/realm/RealmModelSetOperator;->getManagedObject(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1327
    :cond_0
    invoke-static {v0}, Lio/realm/internal/core/NativeRealmAnyCollection;->newRealmModelCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1328
    iget-object v0, p0, Lio/realm/RealmModelSetOperator;->osSet:Lio/realm/internal/OsSet;

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

    .line 1314
    invoke-direct {p0, p1}, Lio/realm/RealmModelSetOperator;->checkValidCollection(Ljava/util/Collection;)V

    .line 1315
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newRealmModelCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1316
    iget-object v0, p0, Lio/realm/RealmModelSetOperator;->osSet:Lio/realm/internal/OsSet;

    sget-object v1, Lio/realm/internal/OsSet$ExternalCollectionOperation;->CONTAINS_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsSet;->collectionFunnel(Lio/realm/internal/core/NativeRealmAnyCollection;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1
.end method

.method containsInternal(Ljava/lang/Object;)Z
    .locals 3

    .line 1296
    move-object v0, p1

    check-cast v0, Lio/realm/RealmModel;

    invoke-direct {p0, v0}, Lio/realm/RealmModelSetOperator;->checkValidObject(Lio/realm/RealmModel;)V

    .line 1297
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    .line 1298
    iget-object v0, p0, Lio/realm/RealmModelSetOperator;->osSet:Lio/realm/internal/OsSet;

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

    .line 1336
    invoke-direct {p0, p1}, Lio/realm/RealmModelSetOperator;->checkValidCollection(Ljava/util/Collection;)V

    .line 1337
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newRealmModelCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1338
    iget-object v0, p0, Lio/realm/RealmModelSetOperator;->osSet:Lio/realm/internal/OsSet;

    sget-object v1, Lio/realm/internal/OsSet$ExternalCollectionOperation;->REMOVE_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsSet;->collectionFunnel(Lio/realm/internal/core/NativeRealmAnyCollection;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1
.end method

.method removeInternal(Ljava/lang/Object;)Z
    .locals 3

    .line 1303
    move-object v0, p1

    check-cast v0, Lio/realm/RealmModel;

    invoke-direct {p0, v0}, Lio/realm/RealmModelSetOperator;->checkValidObject(Lio/realm/RealmModel;)V

    .line 1304
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    .line 1305
    iget-object v0, p0, Lio/realm/RealmModelSetOperator;->osSet:Lio/realm/internal/OsSet;

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

    .line 1346
    invoke-direct {p0, p1}, Lio/realm/RealmModelSetOperator;->checkValidCollection(Ljava/util/Collection;)V

    .line 1347
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newRealmModelCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1348
    iget-object v0, p0, Lio/realm/RealmModelSetOperator;->osSet:Lio/realm/internal/OsSet;

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
            "TT;>;"
        }
    .end annotation

    .line 1359
    new-instance v0, Lio/realm/RealmQuery;

    iget-object v1, p0, Lio/realm/RealmModelSetOperator;->baseRealm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/RealmModelSetOperator;->osSet:Lio/realm/internal/OsSet;

    iget-object v3, p0, Lio/realm/RealmModelSetOperator;->valueClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lio/realm/RealmQuery;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    return-object v0
.end method
