.class public Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;
.super Lcom/startapps/crossx/model/CheckInLocationModel;
.source "com_startapps_crossx_model_CheckInLocationModelRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;,
        Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$ClassNameHelper;
    }
.end annotation


# static fields
.field private static final NO_ALIAS:Ljava/lang/String; = ""

.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/startapps/crossx/model/CheckInLocationModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    invoke-static {}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/startapps/crossx/model/CheckInLocationModel;-><init>()V

    .line 94
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;Lcom/startapps/crossx/model/CheckInLocationModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/startapps/crossx/model/CheckInLocationModel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;",
            "Lcom/startapps/crossx/model/CheckInLocationModel;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lcom/startapps/crossx/model/CheckInLocationModel;"
        }
    .end annotation

    .line 471
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/RealmObjectProxy;

    if-eqz p3, :cond_0

    .line 473
    check-cast p3, Lcom/startapps/crossx/model/CheckInLocationModel;

    return-object p3

    .line 476
    :cond_0
    move-object p3, p2

    check-cast p3, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;

    .line 478
    const-class v0, Lcom/startapps/crossx/model/CheckInLocationModel;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 479
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 482
    iget-wide v2, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->idColKey:J

    invoke-interface {p3}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$id()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 483
    iget-wide v2, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->nameColKey:J

    invoke-interface {p3}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 484
    iget-wide v2, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addressColKey:J

    invoke-interface {p3}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 485
    iget-wide v2, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->place_idColKey:J

    invoke-interface {p3}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$place_id()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 486
    iget-wide v2, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->latitudeColKey:J

    invoke-interface {p3}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$latitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 487
    iget-wide v2, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->longitudeColKey:J

    invoke-interface {p3}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$longitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 491
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 492
    invoke-static {p0, p1}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;

    move-result-object p0

    .line 493
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;Lcom/startapps/crossx/model/CheckInLocationModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/startapps/crossx/model/CheckInLocationModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;",
            "Lcom/startapps/crossx/model/CheckInLocationModel;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lcom/startapps/crossx/model/CheckInLocationModel;"
        }
    .end annotation

    .line 433
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 434
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 435
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 438
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 436
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 442
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 443
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_2

    .line 445
    check-cast v1, Lcom/startapps/crossx/model/CheckInLocationModel;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 451
    const-class v2, Lcom/startapps/crossx/model/CheckInLocationModel;

    invoke-virtual {p0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 452
    iget-wide v3, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->idColKey:J

    .line 453
    move-object v5, p2

    check-cast v5, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$id()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    .line 458
    :cond_3
    :try_start_0
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 459
    new-instance v1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;

    invoke-direct {v1}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;-><init>()V

    .line 460
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 463
    throw p0

    :cond_4
    :goto_0
    move v0, p3

    :goto_1
    move-object v3, v1

    if-eqz v0, :cond_5

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    .line 467
    invoke-static/range {v1 .. v6}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->update(Lio/realm/Realm;Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;Lcom/startapps/crossx/model/CheckInLocationModel;Lcom/startapps/crossx/model/CheckInLocationModel;Ljava/util/Map;Ljava/util/Set;)Lcom/startapps/crossx/model/CheckInLocationModel;

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-static/range {p0 .. p5}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;Lcom/startapps/crossx/model/CheckInLocationModel;ZLjava/util/Map;Ljava/util/Set;)Lcom/startapps/crossx/model/CheckInLocationModel;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;
    .locals 1

    .line 273
    new-instance v0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/startapps/crossx/model/CheckInLocationModel;IILjava/util/Map;)Lcom/startapps/crossx/model/CheckInLocationModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/model/CheckInLocationModel;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/startapps/crossx/model/CheckInLocationModel;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 668
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1

    .line 671
    new-instance p2, Lcom/startapps/crossx/model/CheckInLocationModel;

    invoke-direct {p2}, Lcom/startapps/crossx/model/CheckInLocationModel;-><init>()V

    .line 672
    new-instance v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 675
    :cond_1
    iget p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, p3, :cond_2

    .line 676
    iget-object p0, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/startapps/crossx/model/CheckInLocationModel;

    return-object p0

    .line 678
    :cond_2
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lcom/startapps/crossx/model/CheckInLocationModel;

    .line 679
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    .line 681
    :goto_0
    move-object p1, p2

    check-cast p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;

    .line 682
    move-object p3, p0

    check-cast p3, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;

    .line 683
    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p0

    check-cast p0, Lio/realm/Realm;

    .line 684
    invoke-interface {p3}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$id()I

    move-result p0

    invoke-interface {p1, p0}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$id(I)V

    .line 685
    invoke-interface {p3}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 686
    invoke-interface {p3}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$address(Ljava/lang/String;)V

    .line 687
    invoke-interface {p3}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$place_id()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$place_id(Ljava/lang/String;)V

    .line 688
    invoke-interface {p3}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$latitude()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$latitude(D)V

    .line 689
    invoke-interface {p3}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$longitude()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$longitude(D)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 8

    .line 258
    new-instance v7, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "CheckInLocationModel"

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    const-string v1, ""

    const-string v2, "id"

    .line 259
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v4, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "name"

    .line 260
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "address"

    .line 261
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "place_id"

    .line 262
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "latitude"

    .line 263
    sget-object v3, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, ""

    const-string v2, "longitude"

    .line 264
    sget-object v3, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 265
    invoke-virtual {v7}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/startapps/crossx/model/CheckInLocationModel;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 287
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, "id"

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 290
    const-class p2, Lcom/startapps/crossx/model/CheckInLocationModel;

    invoke-virtual {p0, p2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p2

    .line 291
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/startapps/crossx/model/CheckInLocationModel;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    check-cast v3, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    .line 292
    iget-wide v3, v3, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->idColKey:J

    .line 294
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v6, -0x1

    if-nez v5, :cond_0

    .line 295
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {p2, v3, v4, v8, v9}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v6

    :goto_0
    cmp-long v5, v3, v6

    if-eqz v5, :cond_1

    .line 298
    sget-object v5, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v5}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/BaseRealm$RealmObjectContext;

    .line 300
    :try_start_0
    invoke-virtual {p2, v3, v4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v8

    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p2

    const-class v3, Lcom/startapps/crossx/model/CheckInLocationModel;

    invoke-virtual {p2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v6, v5

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 301
    new-instance p2, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;

    invoke-direct {p2}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-virtual {v5}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v5}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 304
    throw p0

    :cond_1
    move-object p2, v2

    :goto_1
    if-nez p2, :cond_4

    .line 308
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 309
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    .line 310
    const-class p2, Lcom/startapps/crossx/model/CheckInLocationModel;

    invoke-virtual {p0, p2, v2, v3, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;

    goto :goto_2

    .line 312
    :cond_2
    const-class p2, Lcom/startapps/crossx/model/CheckInLocationModel;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p2, v1, v3, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;

    goto :goto_2

    .line 315
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'id\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 319
    :cond_4
    :goto_2
    move-object p0, p2

    check-cast p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;

    const-string v0, "name"

    .line 320
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 321
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 322
    invoke-interface {p0, v2}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto :goto_3

    .line 324
    :cond_5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    :cond_6
    :goto_3
    const-string v0, "address"

    .line 327
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 328
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 329
    invoke-interface {p0, v2}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$address(Ljava/lang/String;)V

    goto :goto_4

    .line 331
    :cond_7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$address(Ljava/lang/String;)V

    :cond_8
    :goto_4
    const-string v0, "place_id"

    .line 334
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 335
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 336
    invoke-interface {p0, v2}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$place_id(Ljava/lang/String;)V

    goto :goto_5

    .line 338
    :cond_9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$place_id(Ljava/lang/String;)V

    :cond_a
    :goto_5
    const-string v0, "latitude"

    .line 341
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 342
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 345
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$latitude(D)V

    goto :goto_6

    .line 343
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'latitude\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_6
    const-string v0, "longitude"

    .line 348
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 349
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 352
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$longitude(D)V

    goto :goto_7

    .line 350
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'longitude\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_7
    return-object p2
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/startapps/crossx/model/CheckInLocationModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    new-instance v0, Lcom/startapps/crossx/model/CheckInLocationModel;

    invoke-direct {v0}, Lcom/startapps/crossx/model/CheckInLocationModel;-><init>()V

    .line 364
    move-object v1, v0

    check-cast v1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;

    .line 365
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    move v3, v2

    .line 366
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 367
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    .line 369
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 370
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_0

    .line 371
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$id(I)V

    const/4 v3, 0x1

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 374
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'id\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v5, "name"

    .line 377
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 378
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_2

    .line 379
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 382
    invoke-interface {v1, v6}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v5, "address"

    .line 384
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 385
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_4

    .line 386
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$address(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 389
    invoke-interface {v1, v6}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$address(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v5, "place_id"

    .line 391
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 392
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_6

    .line 393
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$place_id(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 395
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 396
    invoke-interface {v1, v6}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$place_id(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v5, "latitude"

    .line 398
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 399
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_8

    .line 400
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$latitude(D)V

    goto/16 :goto_0

    .line 402
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 403
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'latitude\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const-string v5, "longitude"

    .line 405
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 406
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_a

    .line 407
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmSet$longitude(D)V

    goto/16 :goto_0

    .line 409
    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 410
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'longitude\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 413
    :cond_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 416
    :cond_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-eqz v3, :cond_d

    new-array p1, v2, [Lio/realm/ImportFlag;

    .line 420
    invoke-virtual {p0, v0, p1}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/CheckInLocationModel;

    return-object p0

    .line 418
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'id\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 269
    sget-object v0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "CheckInLocationModel"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/startapps/crossx/model/CheckInLocationModel;Ljava/util/Map;)J
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/startapps/crossx/model/CheckInLocationModel;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 499
    instance-of v1, v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_0

    invoke-static/range {p1 .. p1}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v0

    return-wide v0

    .line 502
    :cond_0
    const-class v1, Lcom/startapps/crossx/model/CheckInLocationModel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 503
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 504
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/startapps/crossx/model/CheckInLocationModel;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    .line 505
    iget-wide v8, v13, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->idColKey:J

    .line 507
    move-object v14, v0

    check-cast v14, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;

    invoke-interface {v14}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-wide/16 v15, -0x1

    if-eqz v10, :cond_1

    .line 509
    invoke-interface {v14}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$id()I

    move-result v2

    int-to-long v6, v2

    move-wide v2, v11

    move-wide v4, v8

    invoke-static/range {v2 .. v7}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v15

    :goto_0
    cmp-long v4, v2, v15

    if-nez v4, :cond_2

    .line 512
    invoke-interface {v14}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v8, v9, v2}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v2

    goto :goto_1

    .line 514
    :cond_2
    invoke-static {v10}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    :goto_1
    move-wide v15, v2

    .line 516
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-interface {v14}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 519
    iget-wide v4, v13, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->nameColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 521
    :cond_3
    invoke-interface {v14}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 523
    iget-wide v4, v13, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addressColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 525
    :cond_4
    invoke-interface {v14}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$place_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 527
    iget-wide v4, v13, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->place_idColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 529
    :cond_5
    iget-wide v4, v13, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->latitudeColKey:J

    invoke-interface {v14}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$latitude()D

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 530
    iget-wide v4, v13, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->longitudeColKey:J

    invoke-interface {v14}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$longitude()D

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    return-wide v15
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 535
    const-class v1, Lcom/startapps/crossx/model/CheckInLocationModel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 536
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 537
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/startapps/crossx/model/CheckInLocationModel;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    .line 538
    iget-wide v10, v14, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->idColKey:J

    .line 540
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 541
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/startapps/crossx/model/CheckInLocationModel;

    .line 542
    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    instance-of v3, v9, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_1

    invoke-static {v9}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v9

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 546
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 550
    :cond_1
    move-object v15, v9

    check-cast v15, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;

    invoke-interface {v15}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$id()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-wide/16 v17, -0x1

    if-eqz v16, :cond_2

    .line 552
    invoke-interface {v15}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$id()I

    move-result v3

    int-to-long v7, v3

    move-wide v3, v12

    move-wide v5, v10

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v3

    goto :goto_1

    :cond_2
    move-wide/from16 v3, v17

    :goto_1
    cmp-long v5, v3, v17

    if-nez v5, :cond_3

    .line 555
    invoke-interface {v15}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$id()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v10, v11, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    goto :goto_2

    .line 557
    :cond_3
    invoke-static/range {v16 .. v16}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    :goto_2
    move-wide/from16 v16, v3

    .line 559
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    invoke-interface {v15}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 562
    iget-wide v5, v14, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->nameColKey:J

    const/16 v18, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v19, v10

    move/from16 v10, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    :cond_4
    move-wide/from16 v19, v10

    .line 564
    :goto_3
    invoke-interface {v15}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 566
    iget-wide v5, v14, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addressColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 568
    :cond_5
    invoke-interface {v15}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$place_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 570
    iget-wide v5, v14, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->place_idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 572
    :cond_6
    iget-wide v5, v14, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->latitudeColKey:J

    invoke-interface {v15}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$latitude()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 573
    iget-wide v5, v14, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->longitudeColKey:J

    invoke-interface {v15}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$longitude()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    move-wide/from16 v10, v19

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/startapps/crossx/model/CheckInLocationModel;Ljava/util/Map;)J
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/startapps/crossx/model/CheckInLocationModel;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 578
    instance-of v1, v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_0

    invoke-static/range {p1 .. p1}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 579
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v0

    return-wide v0

    .line 581
    :cond_0
    const-class v1, Lcom/startapps/crossx/model/CheckInLocationModel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 582
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 583
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/startapps/crossx/model/CheckInLocationModel;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    .line 584
    iget-wide v8, v13, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->idColKey:J

    .line 586
    move-object v14, v0

    check-cast v14, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;

    invoke-interface {v14}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v15, -0x1

    if-eqz v2, :cond_1

    .line 588
    invoke-interface {v14}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$id()I

    move-result v2

    int-to-long v6, v2

    move-wide v2, v11

    move-wide v4, v8

    invoke-static/range {v2 .. v7}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v15

    :goto_0
    cmp-long v4, v2, v15

    if-nez v4, :cond_2

    .line 591
    invoke-interface {v14}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v8, v9, v2}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v2

    :cond_2
    move-wide v15, v2

    .line 593
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-interface {v14}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 596
    iget-wide v4, v13, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->nameColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    .line 598
    :cond_3
    iget-wide v4, v13, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->nameColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 600
    :goto_1
    invoke-interface {v14}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 602
    iget-wide v4, v13, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addressColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 604
    :cond_4
    iget-wide v4, v13, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addressColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 606
    :goto_2
    invoke-interface {v14}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$place_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 608
    iget-wide v4, v13, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->place_idColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 610
    :cond_5
    iget-wide v4, v13, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->place_idColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 612
    :goto_3
    iget-wide v4, v13, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->latitudeColKey:J

    invoke-interface {v14}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$latitude()D

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v15

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 613
    iget-wide v4, v13, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->longitudeColKey:J

    invoke-interface {v14}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$longitude()D

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    return-wide v15
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 618
    const-class v1, Lcom/startapps/crossx/model/CheckInLocationModel;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 619
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 620
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/startapps/crossx/model/CheckInLocationModel;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    .line 621
    iget-wide v10, v14, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->idColKey:J

    .line 623
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 624
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/startapps/crossx/model/CheckInLocationModel;

    .line 625
    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 628
    :cond_0
    instance-of v3, v9, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_1

    invoke-static {v9}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v9

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 629
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 633
    :cond_1
    move-object v15, v9

    check-cast v15, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;

    invoke-interface {v15}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$id()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/16 v16, -0x1

    if-eqz v3, :cond_2

    .line 635
    invoke-interface {v15}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$id()I

    move-result v3

    int-to-long v7, v3

    move-wide v3, v12

    move-wide v5, v10

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v3

    goto :goto_1

    :cond_2
    move-wide/from16 v3, v16

    :goto_1
    cmp-long v5, v3, v16

    if-nez v5, :cond_3

    .line 638
    invoke-interface {v15}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$id()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v10, v11, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    :cond_3
    move-wide/from16 v16, v3

    .line 640
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    invoke-interface {v15}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 643
    iget-wide v5, v14, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->nameColKey:J

    const/16 v18, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v19, v10

    move/from16 v10, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    :cond_4
    move-wide/from16 v19, v10

    .line 645
    iget-wide v5, v14, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->nameColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 647
    :goto_2
    invoke-interface {v15}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 649
    iget-wide v5, v14, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addressColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 651
    :cond_5
    iget-wide v5, v14, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addressColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 653
    :goto_3
    invoke-interface {v15}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$place_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 655
    iget-wide v5, v14, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->place_idColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 657
    :cond_6
    iget-wide v5, v14, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->place_idColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 659
    :goto_4
    iget-wide v5, v14, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->latitudeColKey:J

    invoke-interface {v15}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$latitude()D

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    .line 660
    iget-wide v5, v14, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->longitudeColKey:J

    invoke-interface {v15}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$longitude()D

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    move-wide/from16 v10, v19

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;
    .locals 7

    .line 425
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 426
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lcom/startapps/crossx/model/CheckInLocationModel;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 427
    new-instance p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;

    invoke-direct {p0}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;-><init>()V

    .line 428
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method

.method static update(Lio/realm/Realm;Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;Lcom/startapps/crossx/model/CheckInLocationModel;Lcom/startapps/crossx/model/CheckInLocationModel;Ljava/util/Map;Ljava/util/Set;)Lcom/startapps/crossx/model/CheckInLocationModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;",
            "Lcom/startapps/crossx/model/CheckInLocationModel;",
            "Lcom/startapps/crossx/model/CheckInLocationModel;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lcom/startapps/crossx/model/CheckInLocationModel;"
        }
    .end annotation

    .line 695
    move-object p4, p2

    check-cast p4, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;

    .line 696
    check-cast p3, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;

    .line 697
    const-class p4, Lcom/startapps/crossx/model/CheckInLocationModel;

    invoke-virtual {p0, p4}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p0

    .line 698
    new-instance p4, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {p4, p0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 699
    iget-wide v0, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->idColKey:J

    invoke-interface {p3}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$id()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 700
    iget-wide v0, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->nameColKey:J

    invoke-interface {p3}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 701
    iget-wide v0, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addressColKey:J

    invoke-interface {p3}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 702
    iget-wide v0, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->place_idColKey:J

    invoke-interface {p3}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$place_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 703
    iget-wide v0, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->latitudeColKey:J

    invoke-interface {p3}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$latitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 704
    iget-wide p0, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->longitudeColKey:J

    invoke-interface {p3}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;->realmGet$longitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p4, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->addDouble(JLjava/lang/Double;)V

    .line 706
    invoke-virtual {p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->updateExistingTopLevelObject()V

    return-object p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 765
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 766
    :cond_1
    check-cast p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;

    .line 768
    iget-object v2, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    .line 769
    iget-object v3, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    .line 770
    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 771
    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 772
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    :goto_0
    return v1

    .line 773
    :cond_3
    invoke-virtual {v2}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v4

    invoke-virtual {v3}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v5

    if-eq v4, v5, :cond_4

    return v1

    .line 774
    :cond_4
    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$VersionID;

    move-result-object v2

    iget-object v3, v3, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v3}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$VersionID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/realm/internal/OsSharedRealm$VersionID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 778
    :cond_5
    iget-object v2, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 779
    iget-object v3, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    .line 780
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    :goto_1
    return v1

    .line 782
    :cond_7
    iget-object v2, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_8

    return v1

    :cond_8
    return v0

    :cond_9
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 751
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 752
    iget-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 753
    iget-object v2, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    const/16 v5, 0x20f

    add-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x1f

    if-eqz v1, :cond_1

    .line 757
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    :cond_1
    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x1f

    const/16 v0, 0x20

    ushr-long v0, v2, v0

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v5, v0

    return v5
.end method

.method public realm$injectObjectContext()V
    .locals 3

    .line 99
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 102
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 103
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    iput-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->columnInfo:Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    .line 104
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 105
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 106
    iget-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 107
    iget-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 108
    iget-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$address()Ljava/lang/String;
    .locals 3

    .line 160
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 161
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->columnInfo:Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addressColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()I
    .locals 3

    .line 114
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 115
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->columnInfo:Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->idColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$latitude()D
    .locals 3

    .line 216
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 217
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->columnInfo:Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->latitudeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$longitude()D
    .locals 3

    .line 238
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 239
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->columnInfo:Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->longitudeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 3

    .line 132
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 133
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->columnInfo:Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->nameColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$place_id()Ljava/lang/String;
    .locals 3

    .line 188
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 189
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->columnInfo:Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->place_idColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/ProxyState<",
            "*>;"
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmSet$address(Ljava/lang/String;)V
    .locals 9

    .line 166
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "Trying to set non-nullable field \'address\' to null."

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 174
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->columnInfo:Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    iget-wide v3, v1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addressColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v5

    const/4 v8, 0x1

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 172
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_2
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 182
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->columnInfo:Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addressColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void

    .line 180
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$id(I)V
    .locals 1

    .line 120
    iget-object p1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object p1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 126
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$latitude(D)V
    .locals 9

    .line 222
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 227
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->columnInfo:Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->latitudeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 232
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->columnInfo:Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->latitudeColKey:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public realmSet$longitude(D)V
    .locals 9

    .line 244
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->columnInfo:Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    iget-wide v2, v2, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->longitudeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setDouble(JJDZ)V

    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 254
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->columnInfo:Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->longitudeColKey:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 9

    .line 138
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "Trying to set non-nullable field \'name\' to null."

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 146
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->columnInfo:Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    iget-wide v3, v1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v5

    const/4 v8, 0x1

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 144
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_2
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 154
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->columnInfo:Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->nameColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void

    .line 152
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$place_id(Ljava/lang/String;)V
    .locals 9

    .line 194
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    const-string v1, "Trying to set non-nullable field \'place_id\' to null."

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 202
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->columnInfo:Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    iget-wide v3, v1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->place_idColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v5

    const/4 v8, 0x1

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 200
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_2
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 210
    iget-object v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->columnInfo:Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    iget-wide v1, v1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->place_idColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void

    .line 208
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 713
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 716
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CheckInLocationModel = proxy[{id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p0}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->realmGet$id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "},{name:"

    .line 719
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {p0}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "},{address:"

    .line 723
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {p0}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->realmGet$address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "},{place_id:"

    .line 727
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {p0}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->realmGet$place_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "},{latitude:"

    .line 731
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-virtual {p0}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->realmGet$latitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "},{longitude:"

    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {p0}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;->realmGet$longitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}]"

    .line 739
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
