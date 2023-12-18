.class Lio/realm/ObjectIdOperator;
.super Lio/realm/SetValueOperator;
.source "SetValueOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/SetValueOperator<",
        "Lorg/bson/types/ObjectId;",
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
            "Lorg/bson/types/ObjectId;",
            ">;)V"
        }
    .end annotation

    .line 1126
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

    .line 1123
    check-cast p1, Lorg/bson/types/ObjectId;

    invoke-virtual {p0, p1}, Lio/realm/ObjectIdOperator;->add(Lorg/bson/types/ObjectId;)Z

    move-result p1

    return p1
.end method

.method add(Lorg/bson/types/ObjectId;)Z
    .locals 1
    .param p1    # Lorg/bson/types/ObjectId;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1131
    iget-object v0, p0, Lio/realm/ObjectIdOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSet;->add(Lorg/bson/types/ObjectId;)Z

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
            "Lorg/bson/types/ObjectId;",
            ">;)Z"
        }
    .end annotation

    .line 1162
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newObjectIdCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1163
    iget-object v0, p0, Lio/realm/ObjectIdOperator;->osSet:Lio/realm/internal/OsSet;

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

    .line 1155
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newObjectIdCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1156
    iget-object v0, p0, Lio/realm/ObjectIdOperator;->osSet:Lio/realm/internal/OsSet;

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

    .line 1140
    :cond_0
    check-cast p1, Lorg/bson/types/ObjectId;

    .line 1142
    :goto_0
    iget-object v0, p0, Lio/realm/ObjectIdOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSet;->contains(Lorg/bson/types/ObjectId;)Z

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

    .line 1170
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newObjectIdCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1171
    iget-object v0, p0, Lio/realm/ObjectIdOperator;->osSet:Lio/realm/internal/OsSet;

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

    .line 1147
    iget-object v0, p0, Lio/realm/ObjectIdOperator;->osSet:Lio/realm/internal/OsSet;

    check-cast p1, Lorg/bson/types/ObjectId;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSet;->remove(Lorg/bson/types/ObjectId;)Z

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

    .line 1178
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->newObjectIdCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;

    move-result-object p1

    .line 1179
    iget-object v0, p0, Lio/realm/ObjectIdOperator;->osSet:Lio/realm/internal/OsSet;

    sget-object v1, Lio/realm/internal/OsSet$ExternalCollectionOperation;->RETAIN_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsSet;->collectionFunnel(Lio/realm/internal/core/NativeRealmAnyCollection;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1
.end method
