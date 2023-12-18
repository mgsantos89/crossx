.class final Lio/realm/RealmModelListOperator;
.super Lio/realm/ManagedListOperator;
.source "ManagedListOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/ManagedListOperator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsList;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lio/realm/ManagedListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    .line 181
    iput-object p4, p0, Lio/realm/RealmModelListOperator;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendValue(Ljava/lang/Object;)V
    .locals 4

    .line 210
    move-object v0, p1

    check-cast v0, Lio/realm/RealmModel;

    .line 211
    iget-object v1, p0, Lio/realm/RealmModelListOperator;->realm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/RealmModelListOperator;->className:Ljava/lang/String;

    const-string v3, "list"

    invoke-static {v1, v0, v2, v3}, Lio/realm/CollectionUtils;->checkCanObjectBeCopied(Lio/realm/BaseRealm;Lio/realm/RealmModel;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 212
    iget-object v2, p0, Lio/realm/RealmModelListOperator;->realm:Lio/realm/BaseRealm;

    invoke-static {v2, v0}, Lio/realm/CollectionUtils;->isEmbedded(Lio/realm/BaseRealm;Lio/realm/RealmModel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    instance-of p1, p1, Lio/realm/DynamicRealmObject;

    if-nez p1, :cond_0

    .line 216
    iget-object p1, p0, Lio/realm/RealmModelListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {p1}, Lio/realm/internal/OsList;->createAndAddEmbeddedObject()J

    move-result-wide v1

    .line 217
    iget-object p1, p0, Lio/realm/RealmModelListOperator;->realm:Lio/realm/BaseRealm;

    check-cast p1, Lio/realm/Realm;

    invoke-static {p1, v0, v1, v2}, Lio/realm/CollectionUtils;->updateEmbeddedObject(Lio/realm/Realm;Lio/realm/RealmModel;J)V

    goto :goto_0

    .line 214
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Embedded objects are not supported by RealmLists of DynamicRealmObjects yet."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz v1, :cond_2

    .line 219
    iget-object p1, p0, Lio/realm/RealmModelListOperator;->realm:Lio/realm/BaseRealm;

    invoke-static {p1, v0}, Lio/realm/CollectionUtils;->copyToRealm(Lio/realm/BaseRealm;Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    :cond_2
    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 220
    iget-object p1, p0, Lio/realm/RealmModelListOperator;->osList:Lio/realm/internal/OsList;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/OsList;->addRow(J)V

    :goto_0
    return-void
.end method

.method protected checkValidValue(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 200
    instance-of v0, p1, Lio/realm/RealmModel;

    if-eqz v0, :cond_0

    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "java.lang.String"

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Unacceptable value type. Acceptable: %1$s, actual: %2$s ."

    .line 202
    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RealmList does not accept null values."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forRealmModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lio/realm/RealmModelListOperator;->realm:Lio/realm/BaseRealm;

    iget-object v1, p0, Lio/realm/RealmModelListOperator;->clazz:Ljava/lang/Class;

    iget-object v2, p0, Lio/realm/RealmModelListOperator;->className:Ljava/lang/String;

    iget-object v3, p0, Lio/realm/RealmModelListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Lio/realm/internal/OsList;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method protected insertNull(I)V
    .locals 1

    .line 226
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Should not reach here."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertValue(ILjava/lang/Object;)V
    .locals 5

    .line 232
    invoke-virtual {p0, p1}, Lio/realm/RealmModelListOperator;->checkInsertIndex(I)V

    .line 233
    move-object v0, p2

    check-cast v0, Lio/realm/RealmModel;

    .line 234
    iget-object v1, p0, Lio/realm/RealmModelListOperator;->realm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/RealmModelListOperator;->className:Ljava/lang/String;

    const-string v3, "list"

    invoke-static {v1, v0, v2, v3}, Lio/realm/CollectionUtils;->checkCanObjectBeCopied(Lio/realm/BaseRealm;Lio/realm/RealmModel;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 235
    iget-object v2, p0, Lio/realm/RealmModelListOperator;->realm:Lio/realm/BaseRealm;

    invoke-static {v2, v0}, Lio/realm/CollectionUtils;->isEmbedded(Lio/realm/BaseRealm;Lio/realm/RealmModel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    instance-of p2, p2, Lio/realm/DynamicRealmObject;

    if-nez p2, :cond_0

    .line 239
    iget-object p2, p0, Lio/realm/RealmModelListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {p2, v1, v2}, Lio/realm/internal/OsList;->createAndAddEmbeddedObject(J)J

    move-result-wide p1

    .line 240
    iget-object v1, p0, Lio/realm/RealmModelListOperator;->realm:Lio/realm/BaseRealm;

    check-cast v1, Lio/realm/Realm;

    invoke-static {v1, v0, p1, p2}, Lio/realm/CollectionUtils;->updateEmbeddedObject(Lio/realm/Realm;Lio/realm/RealmModel;J)V

    goto :goto_0

    .line 237
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Embedded objects are not supported by RealmLists of DynamicRealmObjects yet."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz v1, :cond_2

    .line 242
    iget-object p2, p0, Lio/realm/RealmModelListOperator;->realm:Lio/realm/BaseRealm;

    invoke-static {p2, v0}, Lio/realm/CollectionUtils;->copyToRealm(Lio/realm/BaseRealm;Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    :cond_2
    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 243
    iget-object p2, p0, Lio/realm/RealmModelListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v3

    invoke-virtual {p2, v1, v2, v3, v4}, Lio/realm/internal/OsList;->insertRow(JJ)V

    :goto_0
    return-void
.end method

.method protected setNull(I)V
    .locals 1

    .line 249
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Should not reach here."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setValue(ILjava/lang/Object;)V
    .locals 5

    .line 254
    move-object v0, p2

    check-cast v0, Lio/realm/RealmModel;

    .line 255
    iget-object v1, p0, Lio/realm/RealmModelListOperator;->realm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/RealmModelListOperator;->className:Ljava/lang/String;

    const-string v3, "list"

    invoke-static {v1, v0, v2, v3}, Lio/realm/CollectionUtils;->checkCanObjectBeCopied(Lio/realm/BaseRealm;Lio/realm/RealmModel;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 256
    iget-object v2, p0, Lio/realm/RealmModelListOperator;->realm:Lio/realm/BaseRealm;

    invoke-static {v2, v0}, Lio/realm/CollectionUtils;->isEmbedded(Lio/realm/BaseRealm;Lio/realm/RealmModel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    instance-of p2, p2, Lio/realm/DynamicRealmObject;

    if-nez p2, :cond_0

    .line 260
    iget-object p2, p0, Lio/realm/RealmModelListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {p2, v1, v2}, Lio/realm/internal/OsList;->createAndSetEmbeddedObject(J)J

    move-result-wide p1

    .line 261
    iget-object v1, p0, Lio/realm/RealmModelListOperator;->realm:Lio/realm/BaseRealm;

    check-cast v1, Lio/realm/Realm;

    invoke-static {v1, v0, p1, p2}, Lio/realm/CollectionUtils;->updateEmbeddedObject(Lio/realm/Realm;Lio/realm/RealmModel;J)V

    goto :goto_0

    .line 258
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Embedded objects are not supported by RealmLists of DynamicRealmObjects yet."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz v1, :cond_2

    .line 263
    iget-object p2, p0, Lio/realm/RealmModelListOperator;->realm:Lio/realm/BaseRealm;

    invoke-static {p2, v0}, Lio/realm/CollectionUtils;->copyToRealm(Lio/realm/BaseRealm;Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    :cond_2
    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 264
    iget-object p2, p0, Lio/realm/RealmModelListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v3

    invoke-virtual {p2, v1, v2, v3, v4}, Lio/realm/internal/OsList;->setRow(JJ)V

    :goto_0
    return-void
.end method
