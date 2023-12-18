.class Lio/realm/RealmModelValueOperator;
.super Lio/realm/MapValueOperator;
.source "ManagedMapManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/MapValueOperator<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            "Lio/realm/TypeSelectorForMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 589
    const-class v1, Lio/realm/RealmModel;

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->OBJECT:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/MapValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    return-void
.end method


# virtual methods
.method containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 628
    const-class v0, Lio/realm/RealmModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Only RealmModel values can be used with \'containsValue\'."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 631
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lio/realm/RealmModelValueOperator;->containsValueInternal(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method containsValueInternal(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 617
    iget-object p1, p0, Lio/realm/RealmModelValueOperator;->osMap:Lio/realm/internal/OsMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/realm/internal/OsMap;->containsPrimitiveValue(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 618
    :cond_0
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    .line 619
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    .line 620
    invoke-interface {p1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v0

    .line 621
    iget-object v2, p0, Lio/realm/RealmModelValueOperator;->osMap:Lio/realm/internal/OsMap;

    invoke-interface {p1}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v0, v1}, Lio/realm/internal/OsMap;->containsRealmModel(JJ)Z

    move-result p1

    return p1

    .line 623
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only managed models can be contained in this dictionary."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method entrySet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 611
    new-instance v0, Lio/realm/RealmMapEntrySet;

    iget-object v1, p0, Lio/realm/RealmModelValueOperator;->baseRealm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/RealmModelValueOperator;->osMap:Lio/realm/internal/OsMap;

    sget-object v3, Lio/realm/RealmMapEntrySet$IteratorType;->OBJECT:Lio/realm/RealmMapEntrySet$IteratorType;

    iget-object v4, p0, Lio/realm/RealmModelValueOperator;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/realm/RealmMapEntrySet;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/RealmMapEntrySet$IteratorType;Lio/realm/TypeSelectorForMap;)V

    return-object v0
.end method

.method get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 595
    iget-object v0, p0, Lio/realm/RealmModelValueOperator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsMap;->getModelRowKey(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 600
    :cond_0
    iget-object p1, p0, Lio/realm/RealmModelValueOperator;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    iget-object v2, p0, Lio/realm/RealmModelValueOperator;->baseRealm:Lio/realm/BaseRealm;

    invoke-virtual {p1, v2, v0, v1}, Lio/realm/TypeSelectorForMap;->getRealmModel(Lio/realm/BaseRealm;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 606
    iget-object v0, p0, Lio/realm/RealmModelValueOperator;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    iget-object v1, p0, Lio/realm/RealmModelValueOperator;->baseRealm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/RealmModelValueOperator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0, v1, v2, p1, p2}, Lio/realm/TypeSelectorForMap;->putRealmModel(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
