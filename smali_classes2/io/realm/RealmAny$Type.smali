.class public final enum Lio/realm/RealmAny$Type;
.super Ljava/lang/Enum;
.source "RealmAny.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmAny;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/RealmAny$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/RealmAny$Type;

.field public static final enum BINARY:Lio/realm/RealmAny$Type;

.field public static final enum BOOLEAN:Lio/realm/RealmAny$Type;

.field public static final enum DATE:Lio/realm/RealmAny$Type;

.field public static final enum DECIMAL128:Lio/realm/RealmAny$Type;

.field public static final enum DOUBLE:Lio/realm/RealmAny$Type;

.field public static final enum FLOAT:Lio/realm/RealmAny$Type;

.field public static final enum INTEGER:Lio/realm/RealmAny$Type;

.field public static final enum NULL:Lio/realm/RealmAny$Type;

.field public static final enum OBJECT:Lio/realm/RealmAny$Type;

.field public static final enum OBJECT_ID:Lio/realm/RealmAny$Type;

.field public static final enum STRING:Lio/realm/RealmAny$Type;

.field public static final enum UUID:Lio/realm/RealmAny$Type;

.field private static final realmFieldToRealmAnyTypeMap:[Lio/realm/RealmAny$Type;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final realmFieldType:Lio/realm/RealmFieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 574
    new-instance v0, Lio/realm/RealmAny$Type;

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-class v2, Ljava/lang/Long;

    const-string v3, "INTEGER"

    const/4 v12, 0x0

    invoke-direct {v0, v3, v12, v1, v2}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v0, Lio/realm/RealmAny$Type;->INTEGER:Lio/realm/RealmAny$Type;

    .line 575
    new-instance v1, Lio/realm/RealmAny$Type;

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-class v3, Ljava/lang/Boolean;

    const-string v4, "BOOLEAN"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v1, Lio/realm/RealmAny$Type;->BOOLEAN:Lio/realm/RealmAny$Type;

    .line 576
    new-instance v2, Lio/realm/RealmAny$Type;

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-class v4, Ljava/lang/String;

    const-string v5, "STRING"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v2, Lio/realm/RealmAny$Type;->STRING:Lio/realm/RealmAny$Type;

    .line 577
    new-instance v3, Lio/realm/RealmAny$Type;

    sget-object v4, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    const-class v5, [Ljava/lang/Byte;

    const-string v6, "BINARY"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v3, Lio/realm/RealmAny$Type;->BINARY:Lio/realm/RealmAny$Type;

    .line 578
    new-instance v4, Lio/realm/RealmAny$Type;

    sget-object v5, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const-class v6, Ljava/util/Date;

    const-string v7, "DATE"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5, v6}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v4, Lio/realm/RealmAny$Type;->DATE:Lio/realm/RealmAny$Type;

    .line 579
    new-instance v5, Lio/realm/RealmAny$Type;

    sget-object v6, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const-class v7, Ljava/lang/Float;

    const-string v8, "FLOAT"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v6, v7}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v5, Lio/realm/RealmAny$Type;->FLOAT:Lio/realm/RealmAny$Type;

    .line 580
    new-instance v6, Lio/realm/RealmAny$Type;

    sget-object v7, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const-class v8, Ljava/lang/Double;

    const-string v9, "DOUBLE"

    const/4 v10, 0x6

    invoke-direct {v6, v9, v10, v7, v8}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v6, Lio/realm/RealmAny$Type;->DOUBLE:Lio/realm/RealmAny$Type;

    .line 581
    new-instance v7, Lio/realm/RealmAny$Type;

    sget-object v8, Lio/realm/RealmFieldType;->DECIMAL128:Lio/realm/RealmFieldType;

    const-class v9, Lorg/bson/types/Decimal128;

    const-string v10, "DECIMAL128"

    const/4 v11, 0x7

    invoke-direct {v7, v10, v11, v8, v9}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v7, Lio/realm/RealmAny$Type;->DECIMAL128:Lio/realm/RealmAny$Type;

    .line 582
    new-instance v8, Lio/realm/RealmAny$Type;

    sget-object v9, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    const-class v10, Lorg/bson/types/ObjectId;

    const-string v11, "OBJECT_ID"

    const/16 v13, 0x8

    invoke-direct {v8, v11, v13, v9, v10}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v8, Lio/realm/RealmAny$Type;->OBJECT_ID:Lio/realm/RealmAny$Type;

    .line 583
    new-instance v9, Lio/realm/RealmAny$Type;

    sget-object v10, Lio/realm/RealmFieldType;->TYPED_LINK:Lio/realm/RealmFieldType;

    const-class v11, Lio/realm/RealmModel;

    const-string v13, "OBJECT"

    const/16 v14, 0x9

    invoke-direct {v9, v13, v14, v10, v11}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v9, Lio/realm/RealmAny$Type;->OBJECT:Lio/realm/RealmAny$Type;

    .line 584
    new-instance v10, Lio/realm/RealmAny$Type;

    sget-object v11, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    const-class v13, Ljava/util/UUID;

    const-string v14, "UUID"

    const/16 v15, 0xa

    invoke-direct {v10, v14, v15, v11, v13}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v10, Lio/realm/RealmAny$Type;->UUID:Lio/realm/RealmAny$Type;

    .line 585
    new-instance v11, Lio/realm/RealmAny$Type;

    const/16 v13, 0xb

    const/4 v14, 0x0

    const-string v15, "NULL"

    invoke-direct {v11, v15, v13, v14, v14}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v11, Lio/realm/RealmAny$Type;->NULL:Lio/realm/RealmAny$Type;

    .line 573
    filled-new-array/range {v0 .. v11}, [Lio/realm/RealmAny$Type;

    move-result-object v0

    sput-object v0, Lio/realm/RealmAny$Type;->$VALUES:[Lio/realm/RealmAny$Type;

    const/16 v0, 0x13

    new-array v0, v0, [Lio/realm/RealmAny$Type;

    .line 587
    sput-object v0, Lio/realm/RealmAny$Type;->realmFieldToRealmAnyTypeMap:[Lio/realm/RealmAny$Type;

    .line 590
    invoke-static {}, Lio/realm/RealmAny$Type;->values()[Lio/realm/RealmAny$Type;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v12, v1, :cond_1

    aget-object v2, v0, v12

    .line 591
    sget-object v3, Lio/realm/RealmAny$Type;->NULL:Lio/realm/RealmAny$Type;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 593
    :cond_0
    iget-object v3, v2, Lio/realm/RealmAny$Type;->realmFieldType:Lio/realm/RealmFieldType;

    invoke-virtual {v3}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v3

    .line 594
    sget-object v4, Lio/realm/RealmAny$Type;->realmFieldToRealmAnyTypeMap:[Lio/realm/RealmAny$Type;

    aput-object v2, v4, v3

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 598
    :cond_1
    sget-object v0, Lio/realm/RealmAny$Type;->realmFieldToRealmAnyTypeMap:[Lio/realm/RealmAny$Type;

    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v1

    sget-object v2, Lio/realm/RealmAny$Type;->OBJECT:Lio/realm/RealmAny$Type;

    aput-object v2, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmFieldType;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 610
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 611
    iput-object p3, p0, Lio/realm/RealmAny$Type;->realmFieldType:Lio/realm/RealmFieldType;

    .line 612
    iput-object p4, p0, Lio/realm/RealmAny$Type;->clazz:Ljava/lang/Class;

    return-void
.end method

.method public static fromNativeValue(I)Lio/realm/RealmAny$Type;
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 602
    sget-object p0, Lio/realm/RealmAny$Type;->NULL:Lio/realm/RealmAny$Type;

    return-object p0

    .line 604
    :cond_0
    sget-object v0, Lio/realm/RealmAny$Type;->realmFieldToRealmAnyTypeMap:[Lio/realm/RealmAny$Type;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/RealmAny$Type;
    .locals 1

    .line 573
    const-class v0, Lio/realm/RealmAny$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/RealmAny$Type;

    return-object p0
.end method

.method public static values()[Lio/realm/RealmAny$Type;
    .locals 1

    .line 573
    sget-object v0, Lio/realm/RealmAny$Type;->$VALUES:[Lio/realm/RealmAny$Type;

    invoke-virtual {v0}, [Lio/realm/RealmAny$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/RealmAny$Type;

    return-object v0
.end method


# virtual methods
.method public getTypedClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lio/realm/RealmAny$Type;->clazz:Ljava/lang/Class;

    return-object v0
.end method
