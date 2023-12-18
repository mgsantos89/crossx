.class public final enum Lorg/bson/BsonType;
.super Ljava/lang/Enum;
.source "BsonType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bson/BsonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bson/BsonType;

.field public static final enum ARRAY:Lorg/bson/BsonType;

.field public static final enum BINARY:Lorg/bson/BsonType;

.field public static final enum BOOLEAN:Lorg/bson/BsonType;

.field public static final enum DATE_TIME:Lorg/bson/BsonType;

.field public static final enum DB_POINTER:Lorg/bson/BsonType;

.field public static final enum DECIMAL128:Lorg/bson/BsonType;

.field public static final enum DOCUMENT:Lorg/bson/BsonType;

.field public static final enum DOUBLE:Lorg/bson/BsonType;

.field public static final enum END_OF_DOCUMENT:Lorg/bson/BsonType;

.field public static final enum INT32:Lorg/bson/BsonType;

.field public static final enum INT64:Lorg/bson/BsonType;

.field public static final enum JAVASCRIPT:Lorg/bson/BsonType;

.field public static final enum JAVASCRIPT_WITH_SCOPE:Lorg/bson/BsonType;

.field private static final LOOKUP_TABLE:[Lorg/bson/BsonType;

.field public static final enum MAX_KEY:Lorg/bson/BsonType;

.field public static final enum MIN_KEY:Lorg/bson/BsonType;

.field public static final enum NULL:Lorg/bson/BsonType;

.field public static final enum OBJECT_ID:Lorg/bson/BsonType;

.field public static final enum REGULAR_EXPRESSION:Lorg/bson/BsonType;

.field public static final enum STRING:Lorg/bson/BsonType;

.field public static final enum SYMBOL:Lorg/bson/BsonType;

.field public static final enum TIMESTAMP:Lorg/bson/BsonType;

.field public static final enum UNDEFINED:Lorg/bson/BsonType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 28
    new-instance v1, Lorg/bson/BsonType;

    move-object v0, v1

    const-string v2, "END_OF_DOCUMENT"

    const/4 v15, 0x0

    invoke-direct {v1, v2, v15, v15}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    .line 33
    new-instance v2, Lorg/bson/BsonType;

    move-object v1, v2

    const-string v3, "DOUBLE"

    const/4 v14, 0x1

    invoke-direct {v2, v3, v14, v14}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/bson/BsonType;->DOUBLE:Lorg/bson/BsonType;

    .line 37
    new-instance v3, Lorg/bson/BsonType;

    move-object v2, v3

    const-string v4, "STRING"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/bson/BsonType;->STRING:Lorg/bson/BsonType;

    .line 41
    new-instance v4, Lorg/bson/BsonType;

    move-object v3, v4

    const-string v5, "DOCUMENT"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v6}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/bson/BsonType;->DOCUMENT:Lorg/bson/BsonType;

    .line 45
    new-instance v5, Lorg/bson/BsonType;

    move-object v4, v5

    const-string v6, "ARRAY"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v7}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/bson/BsonType;->ARRAY:Lorg/bson/BsonType;

    .line 49
    new-instance v6, Lorg/bson/BsonType;

    move-object v5, v6

    const-string v7, "BINARY"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v8}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/bson/BsonType;->BINARY:Lorg/bson/BsonType;

    .line 53
    new-instance v7, Lorg/bson/BsonType;

    move-object v6, v7

    const-string v8, "UNDEFINED"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v9}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/bson/BsonType;->UNDEFINED:Lorg/bson/BsonType;

    .line 57
    new-instance v8, Lorg/bson/BsonType;

    move-object v7, v8

    const-string v9, "OBJECT_ID"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v10}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/bson/BsonType;->OBJECT_ID:Lorg/bson/BsonType;

    .line 61
    new-instance v9, Lorg/bson/BsonType;

    move-object v8, v9

    const-string v10, "BOOLEAN"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v11}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/bson/BsonType;->BOOLEAN:Lorg/bson/BsonType;

    .line 65
    new-instance v10, Lorg/bson/BsonType;

    move-object v9, v10

    const-string v11, "DATE_TIME"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12, v12}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/bson/BsonType;->DATE_TIME:Lorg/bson/BsonType;

    .line 69
    new-instance v11, Lorg/bson/BsonType;

    move-object v10, v11

    const-string v12, "NULL"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13, v13}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/bson/BsonType;->NULL:Lorg/bson/BsonType;

    .line 73
    new-instance v12, Lorg/bson/BsonType;

    move-object v11, v12

    const-string v13, "REGULAR_EXPRESSION"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14, v14}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/bson/BsonType;->REGULAR_EXPRESSION:Lorg/bson/BsonType;

    .line 77
    new-instance v13, Lorg/bson/BsonType;

    move-object v12, v13

    const-string v14, "DB_POINTER"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v15}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/bson/BsonType;->DB_POINTER:Lorg/bson/BsonType;

    .line 81
    new-instance v14, Lorg/bson/BsonType;

    move-object v13, v14

    const-string v15, "JAVASCRIPT"

    move-object/from16 v22, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0, v0}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/bson/BsonType;->JAVASCRIPT:Lorg/bson/BsonType;

    .line 85
    new-instance v0, Lorg/bson/BsonType;

    const/16 v23, 0x1

    move-object v14, v0

    const-string v15, "SYMBOL"

    move-object/from16 v24, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1, v1}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bson/BsonType;->SYMBOL:Lorg/bson/BsonType;

    .line 89
    new-instance v0, Lorg/bson/BsonType;

    const/16 v25, 0x0

    move-object v15, v0

    const-string v1, "JAVASCRIPT_WITH_SCOPE"

    move-object/from16 v26, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bson/BsonType;->JAVASCRIPT_WITH_SCOPE:Lorg/bson/BsonType;

    .line 93
    new-instance v0, Lorg/bson/BsonType;

    move-object/from16 v16, v0

    const-string v1, "INT32"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bson/BsonType;->INT32:Lorg/bson/BsonType;

    .line 97
    new-instance v0, Lorg/bson/BsonType;

    move-object/from16 v17, v0

    const-string v1, "TIMESTAMP"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v2}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bson/BsonType;->TIMESTAMP:Lorg/bson/BsonType;

    .line 101
    new-instance v0, Lorg/bson/BsonType;

    move-object/from16 v18, v0

    const-string v1, "INT64"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v2}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bson/BsonType;->INT64:Lorg/bson/BsonType;

    .line 107
    new-instance v0, Lorg/bson/BsonType;

    move-object/from16 v19, v0

    const-string v1, "DECIMAL128"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v2}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bson/BsonType;->DECIMAL128:Lorg/bson/BsonType;

    .line 111
    new-instance v0, Lorg/bson/BsonType;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const/16 v2, 0xff

    move-object/from16 v27, v3

    const-string v3, "MIN_KEY"

    invoke-direct {v0, v3, v1, v2}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bson/BsonType;->MIN_KEY:Lorg/bson/BsonType;

    .line 115
    new-instance v1, Lorg/bson/BsonType;

    move-object/from16 v21, v1

    const/16 v2, 0x15

    const/16 v3, 0x7f

    move-object/from16 v28, v0

    const-string v0, "MAX_KEY"

    invoke-direct {v1, v0, v2, v3}, Lorg/bson/BsonType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/bson/BsonType;->MAX_KEY:Lorg/bson/BsonType;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v22, v28

    .line 24
    filled-new-array/range {v0 .. v21}, [Lorg/bson/BsonType;

    move-result-object v0

    sput-object v0, Lorg/bson/BsonType;->$VALUES:[Lorg/bson/BsonType;

    .line 117
    invoke-virtual/range {v22 .. v22}, Lorg/bson/BsonType;->getValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/bson/BsonType;

    sput-object v0, Lorg/bson/BsonType;->LOOKUP_TABLE:[Lorg/bson/BsonType;

    .line 122
    invoke-static {}, Lorg/bson/BsonType;->values()[Lorg/bson/BsonType;

    move-result-object v0

    array-length v1, v0

    move/from16 v15, v25

    :goto_0
    if-ge v15, v1, :cond_0

    aget-object v2, v0, v15

    .line 123
    sget-object v3, Lorg/bson/BsonType;->LOOKUP_TABLE:[Lorg/bson/BsonType;

    invoke-virtual {v2}, Lorg/bson/BsonType;->getValue()I

    move-result v4

    aput-object v2, v3, v4

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    iput p3, p0, Lorg/bson/BsonType;->value:I

    return-void
.end method

.method public static findByValue(I)Lorg/bson/BsonType;
    .locals 1

    .line 147
    sget-object v0, Lorg/bson/BsonType;->LOOKUP_TABLE:[Lorg/bson/BsonType;

    and-int/lit16 p0, p0, 0xff

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bson/BsonType;
    .locals 1

    .line 24
    const-class v0, Lorg/bson/BsonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bson/BsonType;

    return-object p0
.end method

.method public static values()[Lorg/bson/BsonType;
    .locals 1

    .line 24
    sget-object v0, Lorg/bson/BsonType;->$VALUES:[Lorg/bson/BsonType;

    invoke-virtual {v0}, [Lorg/bson/BsonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bson/BsonType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 137
    iget v0, p0, Lorg/bson/BsonType;->value:I

    return v0
.end method

.method public isContainer()Z
    .locals 1

    .line 156
    sget-object v0, Lorg/bson/BsonType;->DOCUMENT:Lorg/bson/BsonType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/bson/BsonType;->ARRAY:Lorg/bson/BsonType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
