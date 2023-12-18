.class public Lio/realm/RealmSet;
.super Ljava/lang/Object;
.source "RealmSet.java"

# interfaces
.implements Ljava/util/Set;
.implements Lio/realm/internal/ManageableObject;
.implements Lio/realm/RealmCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/RealmSet$UnmanagedSetStrategy;,
        Lio/realm/RealmSet$ManagedSetStrategy;,
        Lio/realm/RealmSet$SetStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TE;>;",
        "Lio/realm/internal/ManageableObject;",
        "Lio/realm/RealmCollection<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected final setStrategy:Lio/realm/RealmSet$SetStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmSet$SetStrategy<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lio/realm/RealmSet$UnmanagedSetStrategy;

    invoke-direct {v0}, Lio/realm/RealmSet$UnmanagedSetStrategy;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    return-void
.end method

.method public constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsSet;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {p1, p2, p3}, Lio/realm/RealmSet;->getStrategy(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)Lio/realm/RealmSet$ManagedSetStrategy;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    return-void
.end method

.method public constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {p1, p2, p3}, Lio/realm/RealmSet;->getStrategy(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/String;)Lio/realm/RealmSet$ManagedSetStrategy;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lio/realm/RealmSet$UnmanagedSetStrategy;

    invoke-direct {v0, p1}, Lio/realm/RealmSet$UnmanagedSetStrategy;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    return-void
.end method

.method private static getStrategy(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)Lio/realm/RealmSet$ManagedSetStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsSet;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/realm/RealmSet$ManagedSetStrategy<",
            "TT;>;"
        }
    .end annotation

    .line 492
    invoke-static {p2}, Lio/realm/CollectionUtils;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    new-instance v0, Lio/realm/RealmSet$ManagedSetStrategy;

    new-instance v1, Lio/realm/RealmModelSetOperator;

    invoke-direct {v1, p0, p1, p2}, Lio/realm/RealmModelSetOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    invoke-direct {v0, v1, p2}, Lio/realm/RealmSet$ManagedSetStrategy;-><init>(Lio/realm/SetValueOperator;Ljava/lang/Class;)V

    return-object v0

    .line 498
    :cond_0
    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    .line 499
    new-instance v0, Lio/realm/BooleanOperator;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/BooleanOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 500
    :cond_1
    const-class v0, Ljava/lang/String;

    if-ne p2, v0, :cond_2

    .line 501
    new-instance v0, Lio/realm/StringOperator;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/StringOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 502
    :cond_2
    const-class v0, Ljava/lang/Integer;

    if-ne p2, v0, :cond_3

    .line 503
    new-instance v0, Lio/realm/IntegerOperator;

    const-class v1, Ljava/lang/Integer;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/IntegerOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 504
    :cond_3
    const-class v0, Ljava/lang/Long;

    if-ne p2, v0, :cond_4

    .line 505
    new-instance v0, Lio/realm/LongOperator;

    const-class v1, Ljava/lang/Long;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/LongOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 506
    :cond_4
    const-class v0, Ljava/lang/Short;

    if-ne p2, v0, :cond_5

    .line 507
    new-instance v0, Lio/realm/ShortOperator;

    const-class v1, Ljava/lang/Short;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/ShortOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 508
    :cond_5
    const-class v0, Ljava/lang/Byte;

    if-ne p2, v0, :cond_6

    .line 509
    new-instance v0, Lio/realm/ByteOperator;

    const-class v1, Ljava/lang/Byte;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/ByteOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 510
    :cond_6
    const-class v0, Ljava/lang/Float;

    if-ne p2, v0, :cond_7

    .line 511
    new-instance v0, Lio/realm/FloatOperator;

    const-class v1, Ljava/lang/Float;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/FloatOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_0

    .line 512
    :cond_7
    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_8

    .line 513
    new-instance v0, Lio/realm/DoubleOperator;

    const-class v1, Ljava/lang/Double;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/DoubleOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_0

    .line 514
    :cond_8
    const-class v0, [B

    if-ne p2, v0, :cond_9

    .line 515
    new-instance v1, Lio/realm/BinaryOperator;

    invoke-direct {v1, p0, p1, v0}, Lio/realm/BinaryOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    move-object v0, v1

    goto :goto_0

    .line 516
    :cond_9
    const-class v0, Ljava/util/Date;

    if-ne p2, v0, :cond_a

    .line 517
    new-instance v0, Lio/realm/DateOperator;

    const-class v1, Ljava/util/Date;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/DateOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_0

    .line 518
    :cond_a
    const-class v0, Lorg/bson/types/Decimal128;

    if-ne p2, v0, :cond_b

    .line 519
    new-instance v0, Lio/realm/Decimal128Operator;

    const-class v1, Lorg/bson/types/Decimal128;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/Decimal128Operator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_0

    .line 520
    :cond_b
    const-class v0, Lorg/bson/types/ObjectId;

    if-ne p2, v0, :cond_c

    .line 521
    new-instance v0, Lio/realm/ObjectIdOperator;

    const-class v1, Lorg/bson/types/ObjectId;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/ObjectIdOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_0

    .line 522
    :cond_c
    const-class v0, Ljava/util/UUID;

    if-ne p2, v0, :cond_d

    .line 523
    new-instance v0, Lio/realm/UUIDOperator;

    const-class v1, Ljava/util/UUID;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/UUIDOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_0

    .line 524
    :cond_d
    const-class v0, Lio/realm/RealmAny;

    if-ne p2, v0, :cond_e

    .line 525
    new-instance v0, Lio/realm/RealmAnySetOperator;

    const-class v1, Lio/realm/RealmAny;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/RealmAnySetOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_0

    .line 526
    :cond_e
    const-class v0, Ljava/lang/Number;

    if-ne p2, v0, :cond_f

    .line 527
    new-instance v0, Lio/realm/NumberOperator;

    const-class v1, Ljava/lang/Number;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/NumberOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    .line 532
    :goto_0
    new-instance p0, Lio/realm/RealmSet$ManagedSetStrategy;

    invoke-direct {p0, v0, p2}, Lio/realm/RealmSet$ManagedSetStrategy;-><init>(Lio/realm/SetValueOperator;Ljava/lang/Class;)V

    return-object p0

    .line 529
    :cond_f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getStrategy: missing class \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getStrategy(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/String;)Lio/realm/RealmSet$ManagedSetStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsSet;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmSet$ManagedSetStrategy<",
            "TT;>;"
        }
    .end annotation

    .line 541
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    new-instance p2, Lio/realm/BooleanOperator;

    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p2, p0, p1, v0}, Lio/realm/BooleanOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 543
    :cond_0
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    new-instance p2, Lio/realm/StringOperator;

    const-class v0, Ljava/lang/String;

    invoke-direct {p2, p0, p1, v0}, Lio/realm/StringOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 545
    :cond_1
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    new-instance p2, Lio/realm/IntegerOperator;

    const-class v0, Ljava/lang/Integer;

    invoke-direct {p2, p0, p1, v0}, Lio/realm/IntegerOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 547
    :cond_2
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    new-instance p2, Lio/realm/LongOperator;

    const-class v0, Ljava/lang/Long;

    invoke-direct {p2, p0, p1, v0}, Lio/realm/LongOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 549
    :cond_3
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 550
    new-instance p2, Lio/realm/ShortOperator;

    const-class v0, Ljava/lang/Short;

    invoke-direct {p2, p0, p1, v0}, Lio/realm/ShortOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 551
    :cond_4
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 552
    new-instance p2, Lio/realm/ByteOperator;

    const-class v0, Ljava/lang/Byte;

    invoke-direct {p2, p0, p1, v0}, Lio/realm/ByteOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 553
    :cond_5
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 554
    new-instance p2, Lio/realm/FloatOperator;

    const-class v0, Ljava/lang/Float;

    invoke-direct {p2, p0, p1, v0}, Lio/realm/FloatOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 555
    :cond_6
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 556
    new-instance p2, Lio/realm/DoubleOperator;

    const-class v0, Ljava/lang/Double;

    invoke-direct {p2, p0, p1, v0}, Lio/realm/DoubleOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 557
    :cond_7
    const-class v0, [B

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 558
    new-instance p2, Lio/realm/BinaryOperator;

    invoke-direct {p2, p0, p1, v0}, Lio/realm/BinaryOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_0

    .line 559
    :cond_8
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 560
    new-instance p2, Lio/realm/DateOperator;

    const-class v0, Ljava/util/Date;

    invoke-direct {p2, p0, p1, v0}, Lio/realm/DateOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_0

    .line 561
    :cond_9
    const-class v0, Lorg/bson/types/Decimal128;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 562
    new-instance p2, Lio/realm/Decimal128Operator;

    const-class v0, Lorg/bson/types/Decimal128;

    invoke-direct {p2, p0, p1, v0}, Lio/realm/Decimal128Operator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_0

    .line 563
    :cond_a
    const-class v0, Lorg/bson/types/ObjectId;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 564
    new-instance p2, Lio/realm/ObjectIdOperator;

    const-class v0, Lorg/bson/types/ObjectId;

    invoke-direct {p2, p0, p1, v0}, Lio/realm/ObjectIdOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_0

    .line 565
    :cond_b
    const-class v0, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 566
    new-instance p2, Lio/realm/UUIDOperator;

    const-class v0, Ljava/util/UUID;

    invoke-direct {p2, p0, p1, v0}, Lio/realm/UUIDOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_0

    .line 567
    :cond_c
    const-class v0, Lio/realm/RealmAny;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 568
    new-instance p2, Lio/realm/RealmAnySetOperator;

    const-class v0, Lio/realm/RealmAny;

    invoke-direct {p2, p0, p1, v0}, Lio/realm/RealmAnySetOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_0

    .line 570
    :cond_d
    new-instance v0, Lio/realm/DynamicSetOperator;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/DynamicSetOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/String;)V

    move-object p2, v0

    .line 573
    :goto_0
    new-instance p0, Lio/realm/RealmSet$ManagedSetStrategy;

    invoke-virtual {p2}, Lio/realm/SetValueOperator;->getValueClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lio/realm/RealmSet$ManagedSetStrategy;-><init>(Lio/realm/SetValueOperator;Ljava/lang/Class;)V

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmSet$SetStrategy;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmSet$SetStrategy;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addChangeListener(Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmSet<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p0, p1}, Lio/realm/RealmSet$SetStrategy;->addChangeListener(Lio/realm/RealmSet;Lio/realm/RealmChangeListener;)V

    return-void
.end method

.method public addChangeListener(Lio/realm/SetChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/SetChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p0, p1}, Lio/realm/RealmSet$SetStrategy;->addChangeListener(Lio/realm/RealmSet;Lio/realm/SetChangeListener;)V

    return-void
.end method

.method public average(Ljava/lang/String;)D
    .locals 2

    .line 431
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmSet$SetStrategy;->average(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .locals 1

    .line 257
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 177
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmSet$SetStrategy;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmSet$SetStrategy;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public deleteAllFromRealm()Z
    .locals 1

    .line 457
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->deleteAllFromRealm()Z

    move-result v0

    return v0
.end method

.method public freeze()Lio/realm/RealmSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmSet<",
            "TE;>;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->freeze()Lio/realm/RealmSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lio/realm/RealmSet;->freeze()Lio/realm/RealmSet;

    move-result-object v0

    return-object v0
.end method

.method getOsSet()Lio/realm/internal/OsSet;
    .locals 1

    .line 481
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->getOsSet()Lio/realm/internal/OsSet;

    move-result-object v0

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

    .line 581
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->getValueClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValueClassName()Ljava/lang/String;
    .locals 1

    .line 577
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->getValueClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasListeners()Z
    .locals 1

    .line 485
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->hasListeners()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 169
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->isFrozen()Z

    move-result v0

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->isManaged()Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->isValid()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public load()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public max(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 415
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmSet$SetStrategy;->max(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public maxDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 440
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmSet$SetStrategy;->maxDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 406
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmSet$SetStrategy;->min(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public minDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 449
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmSet$SetStrategy;->minDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 217
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmSet$SetStrategy;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmSet$SetStrategy;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public removeAllChangeListeners()V
    .locals 1

    .line 381
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->removeAllChangeListeners()V

    return-void
.end method

.method public removeChangeListener(Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmSet<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p0, p1}, Lio/realm/RealmSet$SetStrategy;->removeChangeListener(Lio/realm/RealmSet;Lio/realm/RealmChangeListener;)V

    return-void
.end method

.method public removeChangeListener(Lio/realm/SetChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/SetChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p0, p1}, Lio/realm/RealmSet$SetStrategy;->removeChangeListener(Lio/realm/RealmSet;Lio/realm/SetChangeListener;)V

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmSet$SetStrategy;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 161
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->size()I

    move-result v0

    return v0
.end method

.method public sum(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1

    .line 423
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmSet$SetStrategy;->sum(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 193
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p1}, Lio/realm/RealmSet$SetStrategy;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public where()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->where()Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method
