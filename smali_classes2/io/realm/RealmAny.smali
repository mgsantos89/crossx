.class public Lio/realm/RealmAny;
.super Ljava/lang/Object;
.source "RealmAny.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/RealmAny$Type;
    }
.end annotation


# instance fields
.field private final operator:Lio/realm/RealmAnyOperator;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/realm/RealmAnyOperator;)V
    .locals 0
    .param p1    # Lio/realm/RealmAnyOperator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    return-void
.end method

.method public static nullValue()Lio/realm/RealmAny;
    .locals 2

    .line 313
    new-instance v0, Lio/realm/RealmAny;

    new-instance v1, Lio/realm/NullRealmAnyOperator;

    invoke-direct {v1}, Lio/realm/NullRealmAnyOperator;-><init>()V

    invoke-direct {v0, v1}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Lio/realm/RealmModel;)Lio/realm/RealmAny;
    .locals 2
    .param p0    # Lio/realm/RealmModel;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 323
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/RealmModelOperator;

    invoke-direct {v1, p0}, Lio/realm/RealmModelOperator;-><init>(Lio/realm/RealmModel;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Boolean;)Lio/realm/RealmAny;
    .locals 2
    .param p0    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 216
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/BooleanRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/BooleanRealmAnyOperator;-><init>(Ljava/lang/Boolean;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Byte;)Lio/realm/RealmAny;
    .locals 2
    .param p0    # Ljava/lang/Byte;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 171
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/IntegerRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/IntegerRealmAnyOperator;-><init>(Ljava/lang/Byte;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Double;)Lio/realm/RealmAny;
    .locals 2
    .param p0    # Ljava/lang/Double;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 238
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/DoubleRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/DoubleRealmAnyOperator;-><init>(Ljava/lang/Double;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Float;)Lio/realm/RealmAny;
    .locals 2
    .param p0    # Ljava/lang/Float;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 227
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/FloatRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/FloatRealmAnyOperator;-><init>(Ljava/lang/Float;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Integer;)Lio/realm/RealmAny;
    .locals 2
    .param p0    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 193
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/IntegerRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/IntegerRealmAnyOperator;-><init>(Ljava/lang/Integer;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Long;)Lio/realm/RealmAny;
    .locals 2
    .param p0    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 204
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/IntegerRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/IntegerRealmAnyOperator;-><init>(Ljava/lang/Long;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method static valueOf(Ljava/lang/Object;)Lio/realm/RealmAny;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    .line 488
    invoke-static {}, Lio/realm/RealmAny;->nullValue()Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 489
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 490
    check-cast p0, Ljava/lang/Boolean;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Boolean;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 491
    :cond_1
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    .line 492
    check-cast p0, Ljava/lang/Byte;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Byte;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 493
    :cond_2
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 494
    check-cast p0, Ljava/lang/Short;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Short;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 495
    :cond_3
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 496
    check-cast p0, Ljava/lang/Integer;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Integer;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 497
    :cond_4
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 498
    check-cast p0, Ljava/lang/Long;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Long;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 499
    :cond_5
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 500
    check-cast p0, Ljava/lang/Float;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Float;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 501
    :cond_6
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 502
    check-cast p0, Ljava/lang/Double;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Double;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 503
    :cond_7
    instance-of v0, p0, Lorg/bson/types/Decimal128;

    if-eqz v0, :cond_8

    .line 504
    check-cast p0, Lorg/bson/types/Decimal128;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/Decimal128;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 505
    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 506
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/String;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 507
    :cond_9
    instance-of v0, p0, [B

    if-eqz v0, :cond_a

    .line 508
    check-cast p0, [B

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf([B)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 509
    :cond_a
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_b

    .line 510
    check-cast p0, Ljava/util/Date;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/util/Date;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 511
    :cond_b
    instance-of v0, p0, Lorg/bson/types/ObjectId;

    if-eqz v0, :cond_c

    .line 512
    check-cast p0, Lorg/bson/types/ObjectId;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/ObjectId;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 513
    :cond_c
    instance-of v0, p0, Ljava/util/UUID;

    if-eqz v0, :cond_d

    .line 514
    check-cast p0, Ljava/util/UUID;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/util/UUID;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 515
    :cond_d
    instance-of v0, p0, Lio/realm/RealmAny;

    if-eqz v0, :cond_e

    .line 516
    check-cast p0, Lio/realm/RealmAny;

    return-object p0

    .line 517
    :cond_e
    const-class v0, Lio/realm/RealmModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 518
    check-cast p0, Lio/realm/RealmModel;

    .line 520
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 524
    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Lio/realm/RealmModel;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 521
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "RealmObject is not a valid managed object."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 526
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type not supported on RealmAny: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/Short;)Lio/realm/RealmAny;
    .locals 2
    .param p0    # Ljava/lang/Short;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 182
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/IntegerRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/IntegerRealmAnyOperator;-><init>(Ljava/lang/Short;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/RealmAny;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 249
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/StringRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/StringRealmAnyOperator;-><init>(Ljava/lang/String;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/util/Date;)Lio/realm/RealmAny;
    .locals 2
    .param p0    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 271
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/DateRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/DateRealmAnyOperator;-><init>(Ljava/util/Date;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/util/UUID;)Lio/realm/RealmAny;
    .locals 2
    .param p0    # Ljava/util/UUID;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 304
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/UUIDRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/UUIDRealmAnyOperator;-><init>(Ljava/util/UUID;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Lorg/bson/types/Decimal128;)Lio/realm/RealmAny;
    .locals 2
    .param p0    # Lorg/bson/types/Decimal128;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 293
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/Decimal128RealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/Decimal128RealmAnyOperator;-><init>(Lorg/bson/types/Decimal128;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Lorg/bson/types/ObjectId;)Lio/realm/RealmAny;
    .locals 2
    .param p0    # Lorg/bson/types/ObjectId;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 282
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/ObjectIdRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/ObjectIdRealmAnyOperator;-><init>(Lorg/bson/types/ObjectId;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf([B)Lio/realm/RealmAny;
    .locals 2
    .param p0    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 260
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/BinaryRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/BinaryRealmAnyOperator;-><init>([B)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method


# virtual methods
.method public asBinary()[B
    .locals 2

    .line 426
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public asBoolean()Ljava/lang/Boolean;
    .locals 2

    .line 386
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public asByte()Ljava/lang/Byte;
    .locals 2

    .line 342
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public asDate()Ljava/util/Date;
    .locals 2

    .line 436
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public asDecimal128()Lorg/bson/types/Decimal128;
    .locals 2

    .line 466
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Lorg/bson/types/Decimal128;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bson/types/Decimal128;

    return-object v0
.end method

.method public asDouble()Ljava/lang/Double;
    .locals 2

    .line 406
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/lang/Double;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public asFloat()Ljava/lang/Float;
    .locals 2

    .line 396
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public asInteger()Ljava/lang/Integer;
    .locals 2

    .line 364
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public asLong()Ljava/lang/Long;
    .locals 2

    .line 375
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public asObjectId()Lorg/bson/types/ObjectId;
    .locals 2

    .line 446
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Lorg/bson/types/ObjectId;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bson/types/ObjectId;

    return-object v0
.end method

.method public asRealmModel(Ljava/lang/Class;)Lio/realm/RealmModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0, p1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1
.end method

.method public asShort()Ljava/lang/Short;
    .locals 2

    .line 353
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .locals 2

    .line 416
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public asUUID()Ljava/util/UUID;
    .locals 2

    .line 456
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    return-object v0
.end method

.method checkValidObject(Lio/realm/BaseRealm;)V
    .locals 1

    .line 567
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0, p1}, Lio/realm/RealmAnyOperator;->checkValidObject(Lio/realm/BaseRealm;)V

    return-void
.end method

.method public final coercedEquals(Lio/realm/RealmAny;)Z
    .locals 1
    .param p1    # Lio/realm/RealmAny;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 558
    :cond_0
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    iget-object p1, p1, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0, p1}, Lio/realm/RealmAnyOperator;->coercedEquals(Lio/realm/RealmAnyOperator;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 551
    :cond_0
    instance-of v0, p1, Lio/realm/RealmAny;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 552
    :cond_1
    check-cast p1, Lio/realm/RealmAny;

    .line 553
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    iget-object p1, p1, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final getNativePtr()J
    .locals 2

    .line 141
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0}, Lio/realm/RealmAnyOperator;->getNativePtr()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Lio/realm/RealmAny$Type;
    .locals 1

    .line 150
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0}, Lio/realm/RealmAnyOperator;->getType()Lio/realm/RealmAny$Type;

    move-result-object v0

    return-object v0
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 160
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0}, Lio/realm/RealmAnyOperator;->getTypedClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 538
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNull()Z
    .locals 2

    .line 332
    invoke-virtual {p0}, Lio/realm/RealmAny;->getType()Lio/realm/RealmAny$Type;

    move-result-object v0

    sget-object v1, Lio/realm/RealmAny$Type;->NULL:Lio/realm/RealmAny$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 563
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
