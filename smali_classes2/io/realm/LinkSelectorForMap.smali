.class Lio/realm/LinkSelectorForMap;
.super Lio/realm/SelectorForMap;
.source "TypeSelectorForMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V::",
        "Lio/realm/RealmModel;",
        ">",
        "Lio/realm/SelectorForMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getModelEntry(Lio/realm/BaseRealm;JLjava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "JTK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lio/realm/LinkSelectorForMap;->valueClass:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, p3}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/RealmModel;

    move-result-object p1

    .line 173
    new-instance p2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p2, p4, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public getRealmModel(Lio/realm/BaseRealm;J)Lio/realm/RealmModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "J)TV;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lio/realm/LinkSelectorForMap;->valueClass:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, p3}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getRealmModel(Lio/realm/BaseRealm;J)Ljava/lang/Object;
    .locals 0

    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lio/realm/LinkSelectorForMap;->getRealmModel(Lio/realm/BaseRealm;J)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public putRealmModel(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Object;Lio/realm/RealmModel;)Lio/realm/RealmModel;
    .locals 6
    .param p4    # Lio/realm/RealmModel;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            "TK;TV;)TV;"
        }
    .end annotation

    .line 147
    invoke-virtual {p2, p3}, Lio/realm/internal/OsMap;->getModelRowKey(Ljava/lang/Object;)J

    move-result-wide v2

    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 150
    invoke-virtual {p2, p3, v0}, Lio/realm/internal/OsMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    iget-object v4, p0, Lio/realm/LinkSelectorForMap;->valueClass:Ljava/lang/Class;

    invoke-virtual {v1, v4}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmObjectSchema;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {p2, p3}, Lio/realm/internal/OsMap;->createAndPutEmbeddedObject(Ljava/lang/Object;)J

    move-result-wide p2

    .line 155
    move-object v1, p1

    check-cast v1, Lio/realm/Realm;

    invoke-static {v1, p4, p2, p3}, Lio/realm/CollectionUtils;->updateEmbeddedObject(Lio/realm/Realm;Lio/realm/RealmModel;J)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v1, p0, Lio/realm/LinkSelectorForMap;->valueClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "dictionary"

    invoke-static {p1, p4, v1, v4}, Lio/realm/CollectionUtils;->checkCanObjectBeCopied(Lio/realm/BaseRealm;Lio/realm/RealmModel;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    invoke-static {p1, p4}, Lio/realm/CollectionUtils;->copyToRealm(Lio/realm/BaseRealm;Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p4

    :cond_2
    check-cast p4, Lio/realm/internal/RealmObjectProxy;

    .line 159
    invoke-interface {p4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p4

    invoke-virtual {p4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p4

    invoke-interface {p4}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    invoke-virtual {p2, p3, v4, v5}, Lio/realm/internal/OsMap;->putRow(Ljava/lang/Object;J)V

    :goto_0
    const-wide/16 p2, -0x1

    cmp-long p2, v2, p2

    if-nez p2, :cond_3

    return-object v0

    .line 166
    :cond_3
    iget-object v1, p0, Lio/realm/LinkSelectorForMap;->valueClass:Ljava/lang/Class;

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putRealmModel(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 134
    check-cast p4, Lio/realm/RealmModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/realm/LinkSelectorForMap;->putRealmModel(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Object;Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method
