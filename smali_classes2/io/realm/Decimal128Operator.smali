.class Lio/realm/Decimal128Operator;
.super Lio/realm/SetValueOperator;
.source "SetValueOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/SetValueOperator<",
        "Lorg/bson/types/Decimal128;",
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
            "Lorg/bson/types/Decimal128;",
            ">;)V"
        }
    .end annotation

    .line 1063
    invoke-direct {p0, p1, p2, p3}, Lio/realm/SetValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1060
    check-cast p1, Lorg/bson/types/Decimal128;

    invoke-virtual {p0, p1}, Lio/realm/Decimal128Operator;->add(Lorg/bson/types/Decimal128;)Z

    move-result p1

    return p1
.end method

.method add(Lorg/bson/types/Decimal128;)Z
    .locals 1
    .param p1    # Lorg/bson/types/Decimal128;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1068
    iget-object v0, p0, Lio/realm/Decimal128Operator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSet;->add(Lorg/bson/types/Decimal128;)Z

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
            "Lorg/bson/types/Decimal128;",
            ">;)Z"
        }
    .end annotation

    .line 1099
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newDecimal128Collection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1100
    iget-object v0, p0, Lio/realm/Decimal128Operator;->osSet:Lio/realm/internal/OsSet;

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

    .line 1092
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newDecimal128Collection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1093
    iget-object v0, p0, Lio/realm/Decimal128Operator;->osSet:Lio/realm/internal/OsSet;

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

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1077
    :cond_0
    check-cast p1, Lorg/bson/types/Decimal128;

    .line 1079
    :goto_0
    iget-object v0, p0, Lio/realm/Decimal128Operator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSet;->contains(Lorg/bson/types/Decimal128;)Z

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

    .line 1107
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newDecimal128Collection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1108
    iget-object v0, p0, Lio/realm/Decimal128Operator;->osSet:Lio/realm/internal/OsSet;

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

    .line 1084
    iget-object v0, p0, Lio/realm/Decimal128Operator;->osSet:Lio/realm/internal/OsSet;

    check-cast p1, Lorg/bson/types/Decimal128;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSet;->remove(Lorg/bson/types/Decimal128;)Z

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

    .line 1115
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newDecimal128Collection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1116
    iget-object v0, p0, Lio/realm/Decimal128Operator;->osSet:Lio/realm/internal/OsSet;

    sget-object v1, Lio/realm/internal/OsSet$ExternalCollectionOperation;->RETAIN_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsSet;->collectionFunnel(Lio/realm/internal/core/NativeRealmAnyCollection;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1
.end method
