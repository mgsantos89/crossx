.class abstract Lio/realm/SetValueOperator;
.super Ljava/lang/Object;
.source "SetValueOperator.java"

# interfaces
.implements Lio/realm/internal/ObservableSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/realm/internal/ObservableSet;"
    }
.end annotation


# instance fields
.field protected final baseRealm:Lio/realm/BaseRealm;

.field protected final className:Ljava/lang/String;

.field protected final osSet:Lio/realm/internal/OsSet;

.field protected final setObserverPairs:Lio/realm/internal/ObserverPairList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/ObserverPairList<",
            "Lio/realm/internal/ObservableSet$SetObserverPair<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field protected final valueClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsSet;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 59
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/realm/SetValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsSet;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lio/realm/internal/ObserverPairList;

    invoke-direct {v0}, Lio/realm/internal/ObserverPairList;-><init>()V

    iput-object v0, p0, Lio/realm/SetValueOperator;->setObserverPairs:Lio/realm/internal/ObserverPairList;

    .line 63
    iput-object p1, p0, Lio/realm/SetValueOperator;->baseRealm:Lio/realm/BaseRealm;

    .line 64
    iput-object p2, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    .line 65
    iput-object p3, p0, Lio/realm/SetValueOperator;->valueClass:Ljava/lang/Class;

    .line 66
    iput-object p4, p0, Lio/realm/SetValueOperator;->className:Ljava/lang/String;

    return-void
.end method

.method private isCollectionSameType(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 311
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v1, p0, Lio/realm/SetValueOperator;->valueClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isObjectSameType(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 293
    iget-object v0, p0, Lio/realm/SetValueOperator;->valueClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private isUpperBoundCollectionSameType(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 300
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v1, p0, Lio/realm/SetValueOperator;->valueClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static iteratorFactory(Ljava/lang/Class;Lio/realm/internal/OsSet;Lio/realm/BaseRealm;Ljava/lang/String;)Lio/realm/SetIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/realm/internal/OsSet;",
            "Lio/realm/BaseRealm;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/SetIterator<",
            "TT;>;"
        }
    .end annotation

    .line 326
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_0

    .line 327
    new-instance p0, Lio/realm/BooleanSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/BooleanSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 328
    :cond_0
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_1

    .line 329
    new-instance p0, Lio/realm/StringSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/StringSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 330
    :cond_1
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_2

    .line 331
    new-instance p0, Lio/realm/IntegerSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/IntegerSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 332
    :cond_2
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_3

    .line 333
    new-instance p0, Lio/realm/LongSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/LongSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 334
    :cond_3
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_4

    .line 335
    new-instance p0, Lio/realm/ShortSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/ShortSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 336
    :cond_4
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_5

    .line 337
    new-instance p0, Lio/realm/ByteSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/ByteSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 338
    :cond_5
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_6

    .line 339
    new-instance p0, Lio/realm/FloatSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/FloatSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 340
    :cond_6
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_7

    .line 341
    new-instance p0, Lio/realm/DoubleSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/DoubleSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 342
    :cond_7
    const-class v0, [B

    if-ne p0, v0, :cond_8

    .line 343
    new-instance p0, Lio/realm/BinarySetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/BinarySetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 344
    :cond_8
    const-class v0, Ljava/util/Date;

    if-ne p0, v0, :cond_9

    .line 345
    new-instance p0, Lio/realm/DateSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/DateSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 346
    :cond_9
    const-class v0, Lorg/bson/types/Decimal128;

    if-ne p0, v0, :cond_a

    .line 347
    new-instance p0, Lio/realm/Decimal128SetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/Decimal128SetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 348
    :cond_a
    const-class v0, Lorg/bson/types/ObjectId;

    if-ne p0, v0, :cond_b

    .line 349
    new-instance p0, Lio/realm/ObjectIdSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/ObjectIdSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 350
    :cond_b
    const-class v0, Ljava/util/UUID;

    if-ne p0, v0, :cond_c

    .line 351
    new-instance p0, Lio/realm/UUIDSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/UUIDSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 352
    :cond_c
    const-class v0, Lio/realm/RealmAny;

    if-ne p0, v0, :cond_d

    .line 353
    new-instance p0, Lio/realm/RealmAnySetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmAnySetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 354
    :cond_d
    const-class v0, Lio/realm/DynamicRealmObject;

    if-ne p0, v0, :cond_e

    .line 355
    new-instance p0, Lio/realm/DynamicSetIterator;

    invoke-direct {p0, p1, p2, p3}, Lio/realm/DynamicSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;Ljava/lang/String;)V

    return-object p0

    .line 356
    :cond_e
    invoke-static {p0}, Lio/realm/CollectionUtils;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 357
    new-instance p3, Lio/realm/RealmModelSetIterator;

    invoke-direct {p3, p1, p2, p0}, Lio/realm/RealmModelSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;Ljava/lang/Class;)V

    return-object p3

    .line 359
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown class for iterator: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method abstract add(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method

.method addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->isRealmCollection(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    check-cast p1, Lio/realm/RealmSet;

    invoke-virtual {p1}, Lio/realm/RealmSet;->getOsSet()Lio/realm/internal/OsSet;

    move-result-object p1

    .line 128
    sget-object v0, Lio/realm/internal/OsSet$ExternalCollectionOperation;->ADD_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {p0, p1, v0}, Lio/realm/SetValueOperator;->funnelCollection(Lio/realm/internal/OsSet;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1

    .line 130
    :cond_0
    invoke-direct {p0, p1}, Lio/realm/SetValueOperator;->isUpperBoundCollectionSameType(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->addAllInternal(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 132
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Set contents and collection must be the same type when calling \'addAll\'."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract addAllInternal(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation
.end method

.method addChangeListener(Lio/realm/RealmSet;Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmSet<",
            "TE;>;",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmSet<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 207
    new-instance v0, Lio/realm/SetValueOperator$1;

    invoke-direct {v0, p0, p2}, Lio/realm/SetValueOperator$1;-><init>(Lio/realm/SetValueOperator;Lio/realm/RealmChangeListener;)V

    .line 213
    invoke-virtual {p0, p1, v0}, Lio/realm/SetValueOperator;->addChangeListener(Lio/realm/RealmSet;Lio/realm/SetChangeListener;)V

    return-void
.end method

.method addChangeListener(Lio/realm/RealmSet;Lio/realm/SetChangeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmSet<",
            "TE;>;",
            "Lio/realm/SetChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lio/realm/SetValueOperator;->baseRealm:Lio/realm/BaseRealm;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lio/realm/CollectionUtils;->checkForAddRemoveListener(Lio/realm/BaseRealm;Ljava/lang/Object;Z)V

    .line 199
    iget-object v0, p0, Lio/realm/SetValueOperator;->setObserverPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0, p0}, Lio/realm/internal/OsSet;->startListening(Lio/realm/internal/ObservableSet;)V

    .line 202
    :cond_0
    new-instance v0, Lio/realm/internal/ObservableSet$SetObserverPair;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/ObservableSet$SetObserverPair;-><init>(Lio/realm/RealmSet;Ljava/lang/Object;)V

    .line 203
    iget-object p1, p0, Lio/realm/SetValueOperator;->setObserverPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {p1, v0}, Lio/realm/internal/ObserverPairList;->add(Lio/realm/internal/ObserverPairList$ObserverPair;)V

    return-void
.end method

.method clear()V
    .locals 1

    .line 188
    iget-object v0, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0}, Lio/realm/internal/OsSet;->clear()V

    return-void
.end method

.method contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 97
    invoke-direct {p0, p1}, Lio/realm/SetValueOperator;->isObjectSameType(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->containsInternal(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Set contents and object must be the same type when calling \'contains\'."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->isRealmCollection(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Lio/realm/RealmSet;

    invoke-virtual {p1}, Lio/realm/RealmSet;->getOsSet()Lio/realm/internal/OsSet;

    move-result-object p1

    .line 115
    sget-object v0, Lio/realm/internal/OsSet$ExternalCollectionOperation;->CONTAINS_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {p0, p1, v0}, Lio/realm/SetValueOperator;->funnelCollection(Lio/realm/internal/OsSet;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1

    .line 117
    :cond_0
    invoke-direct {p0, p1}, Lio/realm/SetValueOperator;->isCollectionSameType(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->containsAllInternal(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 119
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Set contents and collection must be the same type when calling \'containsAll\'."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract containsAllInternal(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation
.end method

.method abstract containsInternal(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method deleteAll()V
    .locals 1

    .line 88
    iget-object v0, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0}, Lio/realm/internal/OsSet;->deleteAll()V

    return-void
.end method

.method freeze()Lio/realm/RealmSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmSet<",
            "TE;>;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lio/realm/SetValueOperator;->baseRealm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->freeze()Lio/realm/BaseRealm;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    iget-object v2, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1, v2}, Lio/realm/internal/OsSet;->freeze(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/OsSet;

    move-result-object v1

    .line 194
    new-instance v2, Lio/realm/RealmSet;

    iget-object v3, p0, Lio/realm/SetValueOperator;->valueClass:Ljava/lang/Class;

    invoke-direct {v2, v0, v1, v3}, Lio/realm/RealmSet;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    return-object v2
.end method

.method protected funnelCollection(Lio/realm/internal/OsSet;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z
    .locals 7

    .line 255
    iget-object v0, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0}, Lio/realm/internal/OsSet;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/realm/internal/OsSet;->getNativePtr()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const-string v1, "Unexpected value: "

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v0, :cond_4

    .line 256
    sget-object p1, Lio/realm/SetValueOperator$3;->$SwitchMap$io$realm$internal$OsSet$ExternalCollectionOperation:[I

    invoke-virtual {p2}, Lio/realm/internal/OsSet$ExternalCollectionOperation;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v5, :cond_3

    const/4 v0, 0x0

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-ne p1, v2, :cond_0

    return v0

    .line 271
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 265
    :cond_1
    iget-object p1, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {p1}, Lio/realm/internal/OsSet;->clear()V

    return v5

    :cond_2
    return v0

    :cond_3
    return v5

    .line 276
    :cond_4
    sget-object v0, Lio/realm/SetValueOperator$3;->$SwitchMap$io$realm$internal$OsSet$ExternalCollectionOperation:[I

    invoke-virtual {p2}, Lio/realm/internal/OsSet$ExternalCollectionOperation;->ordinal()I

    move-result v6

    aget v0, v0, v6

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    if-ne v0, v2, :cond_5

    .line 284
    iget-object p2, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {p2, p1}, Lio/realm/internal/OsSet;->intersect(Lio/realm/internal/OsSet;)Z

    move-result p1

    return p1

    .line 286
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :cond_6
    iget-object p2, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {p2, p1}, Lio/realm/internal/OsSet;->asymmetricDifference(Lio/realm/internal/OsSet;)Z

    move-result p1

    return p1

    .line 280
    :cond_7
    iget-object p2, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {p2, p1}, Lio/realm/internal/OsSet;->union(Lio/realm/internal/OsSet;)Z

    move-result p1

    return p1

    .line 278
    :cond_8
    iget-object p2, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {p2, p1}, Lio/realm/internal/OsSet;->containsAll(Lio/realm/internal/OsSet;)Z

    move-result p1

    return p1
.end method

.method getOsSet()Lio/realm/internal/OsSet;
    .locals 1

    .line 243
    iget-object v0, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    return-object v0
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lio/realm/SetValueOperator;->valueClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getValueClassName()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lio/realm/SetValueOperator;->className:Ljava/lang/String;

    return-object v0
.end method

.method hasListeners()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lio/realm/SetValueOperator;->setObserverPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isEmpty()Z
    .locals 1

    .line 180
    invoke-virtual {p0}, Lio/realm/SetValueOperator;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFrozen()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lio/realm/SetValueOperator;->baseRealm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v0

    return v0
.end method

.method protected isRealmCollection(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 249
    instance-of v0, p1, Lio/realm/RealmSet;

    if-eqz v0, :cond_0

    check-cast p1, Lio/realm/RealmSet;

    invoke-virtual {p1}, Lio/realm/RealmSet;->isManaged()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isValid()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lio/realm/SetValueOperator;->baseRealm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 168
    :cond_0
    iget-object v0, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0}, Lio/realm/internal/OsSet;->isValid()Z

    move-result v0

    return v0
.end method

.method iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lio/realm/SetValueOperator;->valueClass:Ljava/lang/Class;

    iget-object v1, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    iget-object v2, p0, Lio/realm/SetValueOperator;->baseRealm:Lio/realm/BaseRealm;

    iget-object v3, p0, Lio/realm/SetValueOperator;->className:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lio/realm/SetValueOperator;->iteratorFactory(Ljava/lang/Class;Lio/realm/internal/OsSet;Lio/realm/BaseRealm;Ljava/lang/String;)Lio/realm/SetIterator;

    move-result-object v0

    return-object v0
.end method

.method public notifyChangeListeners(J)V
    .locals 2

    .line 93
    iget-object v0, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    iget-object v1, p0, Lio/realm/SetValueOperator;->setObserverPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0, p1, p2, v1}, Lio/realm/internal/OsSet;->notifyChangeListeners(JLio/realm/internal/ObserverPairList;)V

    return-void
.end method

.method remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 105
    invoke-direct {p0, p1}, Lio/realm/SetValueOperator;->isObjectSameType(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->removeInternal(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Set contents and object must be the same type when calling \'remove\'."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 139
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->isRealmCollection(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    check-cast p1, Lio/realm/RealmSet;

    invoke-virtual {p1}, Lio/realm/RealmSet;->getOsSet()Lio/realm/internal/OsSet;

    move-result-object p1

    .line 141
    sget-object v0, Lio/realm/internal/OsSet$ExternalCollectionOperation;->REMOVE_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {p0, p1, v0}, Lio/realm/SetValueOperator;->funnelCollection(Lio/realm/internal/OsSet;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1

    .line 143
    :cond_0
    invoke-direct {p0, p1}, Lio/realm/SetValueOperator;->isCollectionSameType(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->removeAllInternal(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 145
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Set contents and collection must be the same type when calling \'removeAll\'."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method removeAllChangeListeners()V
    .locals 3

    .line 233
    iget-object v0, p0, Lio/realm/SetValueOperator;->baseRealm:Lio/realm/BaseRealm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/realm/CollectionUtils;->checkForAddRemoveListener(Lio/realm/BaseRealm;Ljava/lang/Object;Z)V

    .line 234
    iget-object v0, p0, Lio/realm/SetValueOperator;->setObserverPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->clear()V

    .line 235
    iget-object v0, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0}, Lio/realm/internal/OsSet;->stopListening()V

    return-void
.end method

.method abstract removeAllInternal(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation
.end method

.method removeChangeListener(Lio/realm/RealmSet;Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmSet<",
            "TE;>;",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmSet<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 217
    new-instance v0, Lio/realm/SetValueOperator$2;

    invoke-direct {v0, p0, p2}, Lio/realm/SetValueOperator$2;-><init>(Lio/realm/SetValueOperator;Lio/realm/RealmChangeListener;)V

    invoke-virtual {p0, p1, v0}, Lio/realm/SetValueOperator;->removeChangeListener(Lio/realm/RealmSet;Lio/realm/SetChangeListener;)V

    return-void
.end method

.method removeChangeListener(Lio/realm/RealmSet;Lio/realm/SetChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmSet<",
            "TE;>;",
            "Lio/realm/SetChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lio/realm/SetValueOperator;->setObserverPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/ObserverPairList;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    iget-object p1, p0, Lio/realm/SetValueOperator;->setObserverPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {p1}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {p1}, Lio/realm/internal/OsSet;->stopListening()V

    :cond_0
    return-void
.end method

.method abstract removeInternal(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 152
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->isRealmCollection(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    check-cast p1, Lio/realm/RealmSet;

    invoke-virtual {p1}, Lio/realm/RealmSet;->getOsSet()Lio/realm/internal/OsSet;

    move-result-object p1

    .line 154
    sget-object v0, Lio/realm/internal/OsSet$ExternalCollectionOperation;->RETAIN_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {p0, p1, v0}, Lio/realm/SetValueOperator;->funnelCollection(Lio/realm/internal/OsSet;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1

    .line 156
    :cond_0
    invoke-direct {p0, p1}, Lio/realm/SetValueOperator;->isCollectionSameType(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->retainAllInternal(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 158
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Set contents and collection must be the same type when calling \'retainAll\'."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract retainAllInternal(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation
.end method

.method size()I
    .locals 2

    .line 176
    iget-object v0, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0}, Lio/realm/internal/OsSet;->size()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method where()Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This feature is available only when the element type is implementing RealmModel."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
