.class public abstract Lio/realm/RealmObject;
.super Ljava/lang/Object;
.source "RealmObject.java"

# interfaces
.implements Lio/realm/RealmModel;
.implements Lio/realm/internal/ManageableObject;


# annotations
.annotation runtime Lio/realm/annotations/RealmClass;
.end annotation


# static fields
.field static final MSG_DELETED_OBJECT:Ljava/lang/String; = "the object is already deleted."

.field static final MSG_DYNAMIC_OBJECT:Ljava/lang/String; = "the object is an instance of DynamicRealmObject. Use DynamicRealmObject.getDynamicRealm() instead."

.field static final MSG_NULL_OBJECT:Ljava/lang/String; = "\'model\' is null."


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;",
            "Lio/realm/RealmChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 640
    new-instance v0, Lio/realm/ProxyState$RealmChangeListenerWrapper;

    invoke-direct {v0, p1}, Lio/realm/ProxyState$RealmChangeListenerWrapper;-><init>(Lio/realm/RealmChangeListener;)V

    invoke-static {p0, v0}, Lio/realm/RealmObject;->addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V

    return-void
.end method

.method public static addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;",
            "Lio/realm/RealmObjectChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 591
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    .line 592
    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    .line 593
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 594
    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 595
    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v1, "Listeners cannot be used on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 597
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/realm/ProxyState;->addChangeListener(Lio/realm/RealmObjectChangeListener;)V

    return-void

    .line 599
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add listener from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 589
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Listener should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 585
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Object should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static asChangesetObservable(Lio/realm/RealmModel;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)",
            "Lio/reactivex/Observable<",
            "Lio/realm/rx/ObjectChange<",
            "TE;>;>;"
        }
    .end annotation

    .line 913
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_2

    .line 914
    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 915
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 916
    instance-of v1, v0, Lio/realm/Realm;

    if-eqz v1, :cond_0

    .line 917
    iget-object v1, v0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v1

    check-cast v0, Lio/realm/Realm;

    invoke-interface {v1, v0, p0}, Lio/realm/rx/RxObservableFactory;->changesetsFrom(Lio/realm/Realm;Lio/realm/RealmModel;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 918
    :cond_0
    instance-of v1, v0, Lio/realm/DynamicRealm;

    if-eqz v1, :cond_1

    .line 919
    move-object v1, v0

    check-cast v1, Lio/realm/DynamicRealm;

    .line 920
    check-cast p0, Lio/realm/DynamicRealmObject;

    .line 921
    iget-object v0, v0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Lio/realm/rx/RxObservableFactory;->changesetsFrom(Lio/realm/DynamicRealm;Lio/realm/DynamicRealmObject;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 923
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 928
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot create Observables from unmanaged RealmObjects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static asFlowable(Lio/realm/RealmModel;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)",
            "Lio/reactivex/Flowable<",
            "TE;>;"
        }
    .end annotation

    .line 860
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_2

    .line 861
    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 862
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 863
    instance-of v1, v0, Lio/realm/Realm;

    if-eqz v1, :cond_0

    .line 864
    iget-object v1, v0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v1

    check-cast v0, Lio/realm/Realm;

    invoke-interface {v1, v0, p0}, Lio/realm/rx/RxObservableFactory;->from(Lio/realm/Realm;Lio/realm/RealmModel;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0

    .line 865
    :cond_0
    instance-of v1, v0, Lio/realm/DynamicRealm;

    if-eqz v1, :cond_1

    .line 866
    move-object v1, v0

    check-cast v1, Lio/realm/DynamicRealm;

    .line 867
    check-cast p0, Lio/realm/DynamicRealmObject;

    .line 869
    iget-object v0, v0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Lio/realm/rx/RxObservableFactory;->from(Lio/realm/DynamicRealm;Lio/realm/DynamicRealmObject;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0

    .line 872
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 877
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot create Observables from unmanaged RealmObjects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static deleteFromRealm(Lio/realm/RealmModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)V"
        }
    .end annotation

    .line 108
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_2

    .line 113
    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    .line 114
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 122
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->moveLastOver(J)V

    .line 124
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p0

    sget-object v0, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    invoke-virtual {p0, v0}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    return-void

    .line 118
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Object malformed: missing Realm. Make sure to instantiate RealmObjects with Realm.createObject()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Object malformed: missing object in Realm. Make sure to instantiate RealmObjects with Realm.createObject()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object not managed by Realm, so it cannot be removed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static freeze(Lio/realm/RealmModel;)Lio/realm/RealmModel;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 235
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_3

    .line 236
    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 237
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lio/realm/BaseRealm;->freeze()Lio/realm/BaseRealm;

    move-result-object v2

    move-object v5, v2

    .line 240
    :goto_0
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v2, v5, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-interface {v0, v2}, Lio/realm/internal/Row;->freeze(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/Row;

    move-result-object v6

    .line 241
    instance-of v0, v5, Lio/realm/DynamicRealm;

    if-eqz v0, :cond_1

    .line 243
    new-instance p0, Lio/realm/DynamicRealmObject;

    invoke-direct {p0, v5, v6}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Row;)V

    return-object p0

    .line 244
    :cond_1
    instance-of v0, v5, Lio/realm/Realm;

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 247
    invoke-virtual {v5}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v3

    .line 248
    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p0

    invoke-virtual {p0, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v7

    const/4 v8, 0x0

    .line 249
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 247
    invoke-virtual/range {v3 .. v9}, Lio/realm/internal/RealmProxyMediator;->newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    return-object p0

    .line 251
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Realm type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 254
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "It is only possible to freeze valid managed Realm objects."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getRealm(Lio/realm/RealmModel;)Lio/realm/Realm;
    .locals 1

    if-eqz p0, :cond_3

    .line 421
    instance-of v0, p0, Lio/realm/DynamicRealmObject;

    if-nez v0, :cond_2

    .line 424
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 427
    :cond_0
    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 429
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 433
    check-cast v0, Lio/realm/Realm;

    return-object v0

    .line 430
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "the object is already deleted."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 422
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "the object is an instance of DynamicRealmObject. Use DynamicRealmObject.getDynamicRealm() instead."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 419
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'model\' is null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isFrozen(Lio/realm/RealmModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)Z"
        }
    .end annotation

    .line 209
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    .line 210
    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    .line 211
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLoaded(Lio/realm/RealmModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)Z"
        }
    .end annotation

    .line 338
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    .line 339
    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    .line 340
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 341
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/ProxyState;->isLoaded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isManaged(Lio/realm/RealmModel;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)Z"
        }
    .end annotation

    .line 390
    instance-of p0, p0, Lio/realm/internal/RealmObjectProxy;

    return p0
.end method

.method public static isValid(Lio/realm/RealmModel;)Z
    .locals 3
    .param p0    # Lio/realm/RealmModel;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)Z"
        }
    .end annotation

    .line 158
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 159
    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    .line 160
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 161
    invoke-interface {p0}, Lio/realm/internal/Row;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public static load(Lio/realm/RealmModel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)Z"
        }
    .end annotation

    .line 456
    invoke-static {p0}, Lio/realm/RealmObject;->isLoaded(Lio/realm/RealmModel;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 458
    :cond_0
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    .line 459
    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/ProxyState;->load()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static removeAllChangeListeners(Lio/realm/RealmModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)V"
        }
    .end annotation

    .line 724
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    .line 725
    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    .line 726
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 727
    invoke-virtual {v0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 728
    iget-object v0, v0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    .line 729
    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm."

    .line 728
    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 731
    :cond_0
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/ProxyState;->removeAllChangeListeners()V

    return-void

    .line 733
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot remove listeners from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;",
            "Lio/realm/RealmChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 707
    new-instance v0, Lio/realm/ProxyState$RealmChangeListenerWrapper;

    invoke-direct {v0, p1}, Lio/realm/ProxyState$RealmChangeListenerWrapper;-><init>(Lio/realm/RealmChangeListener;)V

    invoke-static {p0, v0}, Lio/realm/RealmObject;->removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V

    return-void
.end method

.method public static removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;",
            "Lio/realm/RealmObjectChangeListener;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    .line 683
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    .line 684
    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    .line 685
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 686
    invoke-virtual {v0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    iget-object v0, v0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    .line 688
    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm."

    .line 687
    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 691
    :cond_0
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/realm/ProxyState;->removeChangeListener(Lio/realm/RealmObjectChangeListener;)V

    return-void

    .line 693
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot remove listener from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 681
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Listener should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 677
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Object should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addChangeListener(Lio/realm/RealmChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/RealmChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 541
    invoke-static {p0, p1}, Lio/realm/RealmObject;->addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    return-void
.end method

.method public final addChangeListener(Lio/realm/RealmObjectChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/RealmObjectChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 502
    invoke-static {p0, p1}, Lio/realm/RealmObject;->addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V

    return-void
.end method

.method public final asChangesetObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/RealmObject;",
            ">()",
            "Lio/reactivex/Observable<",
            "Lio/realm/rx/ObjectChange<",
            "TE;>;>;"
        }
    .end annotation

    .line 815
    invoke-static {p0}, Lio/realm/RealmObject;->asChangesetObservable(Lio/realm/RealmModel;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final asFlowable()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/RealmObject;",
            ">()",
            "Lio/reactivex/Flowable<",
            "TE;>;"
        }
    .end annotation

    .line 782
    invoke-static {p0}, Lio/realm/RealmObject;->asFlowable(Lio/realm/RealmModel;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final deleteFromRealm()V
    .locals 0

    .line 95
    invoke-static {p0}, Lio/realm/RealmObject;->deleteFromRealm(Lio/realm/RealmModel;)V

    return-void
.end method

.method public final freeze()Lio/realm/RealmModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">()TE;"
        }
    .end annotation

    .line 199
    invoke-static {p0}, Lio/realm/RealmObject;->freeze(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Lio/realm/Realm;
    .locals 1

    .line 403
    invoke-static {p0}, Lio/realm/RealmObject;->getRealm(Lio/realm/RealmModel;)Lio/realm/Realm;

    move-result-object v0

    return-object v0
.end method

.method public final isFrozen()Z
    .locals 1

    .line 176
    invoke-static {p0}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v0

    return v0
.end method

.method public final isLoaded()Z
    .locals 1

    .line 296
    invoke-static {p0}, Lio/realm/RealmObject;->isLoaded(Lio/realm/RealmModel;)Z

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .line 367
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .locals 1

    .line 147
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    return v0
.end method

.method public final load()Z
    .locals 1

    .line 444
    invoke-static {p0}, Lio/realm/RealmObject;->load(Lio/realm/RealmModel;)Z

    move-result v0

    return v0
.end method

.method public final removeAllChangeListeners()V
    .locals 0

    .line 714
    invoke-static {p0}, Lio/realm/RealmObject;->removeAllChangeListeners(Lio/realm/RealmModel;)V

    return-void
.end method

.method public final removeChangeListener(Lio/realm/RealmChangeListener;)V
    .locals 0

    .line 662
    invoke-static {p0, p1}, Lio/realm/RealmObject;->removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    return-void
.end method

.method public final removeChangeListener(Lio/realm/RealmObjectChangeListener;)V
    .locals 0

    .line 651
    invoke-static {p0, p1}, Lio/realm/RealmObject;->removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V

    return-void
.end method
