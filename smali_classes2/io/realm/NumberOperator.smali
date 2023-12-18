.class Lio/realm/NumberOperator;
.super Lio/realm/SetValueOperator;
.source "SetValueOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/SetValueOperator<",
        "Ljava/lang/Number;",
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
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 495
    invoke-direct {p0, p1, p2, p3}, Lio/realm/SetValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method add(Ljava/lang/Number;)Z
    .locals 3
    .param p1    # Ljava/lang/Number;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 500
    iget-object p1, p0, Lio/realm/NumberOperator;->osSet:Lio/realm/internal/OsSet;

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSet;->add(Ljava/lang/Long;)Z

    move-result p1

    return p1

    .line 502
    :cond_0
    iget-object v0, p0, Lio/realm/NumberOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSet;->add(Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method

.method bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 492
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lio/realm/NumberOperator;->add(Ljava/lang/Number;)Z

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
            "Ljava/lang/Number;",
            ">;)Z"
        }
    .end annotation

    .line 535
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newIntegerCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 536
    iget-object v0, p0, Lio/realm/NumberOperator;->osSet:Lio/realm/internal/OsSet;

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

    .line 528
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newIntegerCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 529
    iget-object v0, p0, Lio/realm/NumberOperator;->osSet:Lio/realm/internal/OsSet;

    sget-object v1, Lio/realm/internal/OsSet$ExternalCollectionOperation;->CONTAINS_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsSet;->collectionFunnel(Lio/realm/internal/core/NativeRealmAnyCollection;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1
.end method

.method containsInternal(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 511
    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 513
    :goto_0
    iget-object v0, p0, Lio/realm/NumberOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSet;->contains(Ljava/lang/Long;)Z

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

    .line 543
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newIntegerCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 544
    iget-object v0, p0, Lio/realm/NumberOperator;->osSet:Lio/realm/internal/OsSet;

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

    .line 518
    iget-object p1, p0, Lio/realm/NumberOperator;->osSet:Lio/realm/internal/OsSet;

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSet;->remove(Ljava/lang/Long;)Z

    move-result p1

    return p1

    .line 520
    :cond_0
    iget-object v0, p0, Lio/realm/NumberOperator;->osSet:Lio/realm/internal/OsSet;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSet;->remove(Ljava/lang/Long;)Z

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

    .line 551
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newIntegerCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 552
    iget-object v0, p0, Lio/realm/NumberOperator;->osSet:Lio/realm/internal/OsSet;

    sget-object v1, Lio/realm/internal/OsSet$ExternalCollectionOperation;->RETAIN_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsSet;->collectionFunnel(Lio/realm/internal/core/NativeRealmAnyCollection;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1
.end method
