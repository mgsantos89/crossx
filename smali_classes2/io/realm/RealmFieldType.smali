.class public final enum Lio/realm/RealmFieldType;
.super Ljava/lang/Enum;
.source "RealmFieldType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/RealmFieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/RealmFieldType;

.field public static final enum BINARY:Lio/realm/RealmFieldType;

.field public static final enum BINARY_LIST:Lio/realm/RealmFieldType;

.field public static final enum BINARY_SET:Lio/realm/RealmFieldType;

.field public static final enum BOOLEAN:Lio/realm/RealmFieldType;

.field public static final enum BOOLEAN_LIST:Lio/realm/RealmFieldType;

.field public static final enum BOOLEAN_SET:Lio/realm/RealmFieldType;

.field public static final enum DATE:Lio/realm/RealmFieldType;

.field public static final enum DATE_LIST:Lio/realm/RealmFieldType;

.field public static final enum DATE_SET:Lio/realm/RealmFieldType;

.field public static final enum DECIMAL128:Lio/realm/RealmFieldType;

.field public static final enum DECIMAL128_LIST:Lio/realm/RealmFieldType;

.field public static final enum DECIMAL128_SET:Lio/realm/RealmFieldType;

.field public static final enum DOUBLE:Lio/realm/RealmFieldType;

.field public static final enum DOUBLE_LIST:Lio/realm/RealmFieldType;

.field public static final enum DOUBLE_SET:Lio/realm/RealmFieldType;

.field public static final enum FLOAT:Lio/realm/RealmFieldType;

.field public static final enum FLOAT_LIST:Lio/realm/RealmFieldType;

.field public static final enum FLOAT_SET:Lio/realm/RealmFieldType;

.field public static final enum INTEGER:Lio/realm/RealmFieldType;

.field public static final enum INTEGER_LIST:Lio/realm/RealmFieldType;

.field public static final enum INTEGER_SET:Lio/realm/RealmFieldType;

.field public static final enum LINKING_OBJECTS:Lio/realm/RealmFieldType;

.field public static final enum LINK_SET:Lio/realm/RealmFieldType;

.field public static final enum LIST:Lio/realm/RealmFieldType;

.field public static final enum MIXED:Lio/realm/RealmFieldType;

.field public static final enum MIXED_LIST:Lio/realm/RealmFieldType;

.field public static final enum MIXED_SET:Lio/realm/RealmFieldType;

.field public static final enum OBJECT:Lio/realm/RealmFieldType;

.field public static final enum OBJECT_ID:Lio/realm/RealmFieldType;

.field public static final enum OBJECT_ID_LIST:Lio/realm/RealmFieldType;

.field public static final enum OBJECT_ID_SET:Lio/realm/RealmFieldType;

.field public static final enum STRING:Lio/realm/RealmFieldType;

.field public static final enum STRING_LIST:Lio/realm/RealmFieldType;

.field public static final enum STRING_SET:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_BINARY_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_BOOLEAN_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_DATE_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_DECIMAL128_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_DOUBLE_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_FLOAT_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_INTEGER_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_LINK_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_MIXED_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_OBJECT_ID_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_STRING_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_UUID_MAP:Lio/realm/RealmFieldType;

.field public static final enum TYPED_LINK:Lio/realm/RealmFieldType;

.field public static final enum UUID:Lio/realm/RealmFieldType;

.field public static final enum UUID_LIST:Lio/realm/RealmFieldType;

.field public static final enum UUID_SET:Lio/realm/RealmFieldType;

.field private static final basicTypes:[Lio/realm/RealmFieldType;

.field private static final listTypes:[Lio/realm/RealmFieldType;

.field private static final mapTypes:[Lio/realm/RealmFieldType;

.field private static final setTypes:[Lio/realm/RealmFieldType;


# instance fields
.field private final nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 55

    .line 82
    new-instance v1, Lio/realm/RealmFieldType;

    move-object v0, v1

    const-string v2, "INTEGER"

    const/4 v15, 0x0

    invoke-direct {v1, v2, v15, v15}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    .line 83
    new-instance v2, Lio/realm/RealmFieldType;

    move-object v1, v2

    const-string v3, "BOOLEAN"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    .line 84
    new-instance v3, Lio/realm/RealmFieldType;

    move-object v2, v3

    const-string v4, "STRING"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    .line 85
    new-instance v4, Lio/realm/RealmFieldType;

    move-object v3, v4

    const-string v5, "BINARY"

    const/4 v6, 0x3

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    .line 86
    new-instance v5, Lio/realm/RealmFieldType;

    move-object v4, v5

    const-string v6, "DATE"

    const/16 v9, 0x8

    invoke-direct {v5, v6, v7, v9}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    .line 87
    new-instance v6, Lio/realm/RealmFieldType;

    move-object v5, v6

    const-string v7, "FLOAT"

    const/4 v8, 0x5

    const/16 v10, 0x9

    invoke-direct {v6, v7, v8, v10}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    .line 88
    new-instance v7, Lio/realm/RealmFieldType;

    move-object v6, v7

    const-string v8, "DOUBLE"

    const/4 v12, 0x6

    const/16 v11, 0xa

    invoke-direct {v7, v8, v12, v11}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    .line 89
    new-instance v8, Lio/realm/RealmFieldType;

    move-object v7, v8

    const-string v13, "OBJECT"

    const/4 v14, 0x7

    const/16 v15, 0xc

    invoke-direct {v8, v13, v14, v15}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    .line 90
    new-instance v13, Lio/realm/RealmFieldType;

    move-object v8, v13

    const-string v14, "DECIMAL128"

    const/16 v15, 0xb

    invoke-direct {v13, v14, v9, v15}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/realm/RealmFieldType;->DECIMAL128:Lio/realm/RealmFieldType;

    .line 91
    new-instance v13, Lio/realm/RealmFieldType;

    move-object v9, v13

    const-string v14, "OBJECT_ID"

    const/16 v12, 0xf

    invoke-direct {v13, v14, v10, v12}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    .line 92
    new-instance v13, Lio/realm/RealmFieldType;

    move-object v10, v13

    const-string v14, "UUID"

    const/16 v15, 0x11

    invoke-direct {v13, v14, v11, v15}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    .line 93
    new-instance v13, Lio/realm/RealmFieldType;

    move-object v11, v13

    const-string v14, "MIXED"

    const/4 v12, 0x6

    const/16 v15, 0xb

    invoke-direct {v13, v14, v15, v12}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/realm/RealmFieldType;->MIXED:Lio/realm/RealmFieldType;

    .line 94
    new-instance v13, Lio/realm/RealmFieldType;

    const/16 v15, 0xf

    move-object v12, v13

    const-string v14, "TYPED_LINK"

    move-object/from16 v50, v0

    const/16 v0, 0x10

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v0}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/realm/RealmFieldType;->TYPED_LINK:Lio/realm/RealmFieldType;

    .line 96
    new-instance v14, Lio/realm/RealmFieldType;

    move-object v13, v14

    const-string v15, "LIST"

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0, v0}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    .line 97
    new-instance v0, Lio/realm/RealmFieldType;

    move-object v14, v0

    const-string v15, "LINKING_OBJECTS"

    move-object/from16 v51, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1, v1}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->LINKING_OBJECTS:Lio/realm/RealmFieldType;

    .line 99
    new-instance v0, Lio/realm/RealmFieldType;

    const/16 v1, 0xf

    const/16 v52, 0x0

    move-object v15, v0

    move-object/from16 v53, v2

    const-string v2, "INTEGER_LIST"

    move-object/from16 v54, v3

    const/16 v3, 0x80

    invoke-direct {v0, v2, v1, v3}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->INTEGER_LIST:Lio/realm/RealmFieldType;

    .line 100
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v16, v0

    const-string v1, "BOOLEAN_LIST"

    const/16 v2, 0x81

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->BOOLEAN_LIST:Lio/realm/RealmFieldType;

    .line 101
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v17, v0

    const-string v1, "STRING_LIST"

    const/16 v2, 0x82

    const/16 v3, 0x11

    invoke-direct {v0, v1, v3, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    .line 102
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v18, v0

    const/16 v1, 0x84

    const-string v2, "BINARY_LIST"

    const/16 v3, 0x12

    invoke-direct {v0, v2, v3, v1}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->BINARY_LIST:Lio/realm/RealmFieldType;

    .line 103
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const/16 v2, 0x88

    const-string v3, "DATE_LIST"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->DATE_LIST:Lio/realm/RealmFieldType;

    .line 104
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const/16 v2, 0x89

    const-string v3, "FLOAT_LIST"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->FLOAT_LIST:Lio/realm/RealmFieldType;

    .line 105
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const/16 v2, 0x8a

    const-string v3, "DOUBLE_LIST"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->DOUBLE_LIST:Lio/realm/RealmFieldType;

    .line 106
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const/16 v2, 0x8b

    const-string v3, "DECIMAL128_LIST"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->DECIMAL128_LIST:Lio/realm/RealmFieldType;

    .line 107
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const/16 v2, 0x8f

    const-string v3, "OBJECT_ID_LIST"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->OBJECT_ID_LIST:Lio/realm/RealmFieldType;

    .line 108
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const/16 v2, 0x91

    const-string v3, "UUID_LIST"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->UUID_LIST:Lio/realm/RealmFieldType;

    .line 109
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const/16 v2, 0x86

    const-string v3, "MIXED_LIST"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->MIXED_LIST:Lio/realm/RealmFieldType;

    .line 111
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v26, v0

    const-string v1, "STRING_TO_INTEGER_MAP"

    const/16 v2, 0x1a

    const/16 v3, 0x200

    invoke-direct {v0, v1, v2, v3}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_TO_INTEGER_MAP:Lio/realm/RealmFieldType;

    .line 112
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v27, v0

    const/16 v1, 0x1b

    const/16 v2, 0x201

    const-string v3, "STRING_TO_BOOLEAN_MAP"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_TO_BOOLEAN_MAP:Lio/realm/RealmFieldType;

    .line 113
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v28, v0

    const/16 v1, 0x1c

    const/16 v2, 0x202

    const-string v3, "STRING_TO_STRING_MAP"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_TO_STRING_MAP:Lio/realm/RealmFieldType;

    .line 114
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v29, v0

    const/16 v1, 0x1d

    const/16 v2, 0x204

    const-string v3, "STRING_TO_BINARY_MAP"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_TO_BINARY_MAP:Lio/realm/RealmFieldType;

    .line 115
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v30, v0

    const/16 v1, 0x1e

    const/16 v2, 0x208

    const-string v3, "STRING_TO_DATE_MAP"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_TO_DATE_MAP:Lio/realm/RealmFieldType;

    .line 116
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v31, v0

    const/16 v1, 0x1f

    const/16 v2, 0x209

    const-string v3, "STRING_TO_FLOAT_MAP"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_TO_FLOAT_MAP:Lio/realm/RealmFieldType;

    .line 117
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v32, v0

    const/16 v1, 0x20

    const/16 v2, 0x20a

    const-string v3, "STRING_TO_DOUBLE_MAP"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_TO_DOUBLE_MAP:Lio/realm/RealmFieldType;

    .line 118
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v33, v0

    const/16 v1, 0x21

    const/16 v2, 0x20b

    const-string v3, "STRING_TO_DECIMAL128_MAP"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_TO_DECIMAL128_MAP:Lio/realm/RealmFieldType;

    .line 119
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v34, v0

    const/16 v1, 0x22

    const/16 v2, 0x20f

    const-string v3, "STRING_TO_OBJECT_ID_MAP"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_TO_OBJECT_ID_MAP:Lio/realm/RealmFieldType;

    .line 120
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v35, v0

    const/16 v1, 0x23

    const/16 v2, 0x211

    const-string v3, "STRING_TO_UUID_MAP"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_TO_UUID_MAP:Lio/realm/RealmFieldType;

    .line 121
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v36, v0

    const/16 v1, 0x24

    const/16 v2, 0x206

    const-string v3, "STRING_TO_MIXED_MAP"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_TO_MIXED_MAP:Lio/realm/RealmFieldType;

    .line 122
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v37, v0

    const/16 v1, 0x25

    const/16 v2, 0x20c

    const-string v3, "STRING_TO_LINK_MAP"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_TO_LINK_MAP:Lio/realm/RealmFieldType;

    .line 124
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v38, v0

    const-string v1, "INTEGER_SET"

    const/16 v2, 0x26

    const/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->INTEGER_SET:Lio/realm/RealmFieldType;

    .line 125
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v39, v0

    const/16 v1, 0x27

    const/16 v2, 0x101

    const-string v3, "BOOLEAN_SET"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->BOOLEAN_SET:Lio/realm/RealmFieldType;

    .line 126
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v40, v0

    const/16 v1, 0x28

    const/16 v2, 0x102

    const-string v3, "STRING_SET"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_SET:Lio/realm/RealmFieldType;

    .line 127
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v41, v0

    const/16 v1, 0x29

    const/16 v2, 0x104

    const-string v3, "BINARY_SET"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->BINARY_SET:Lio/realm/RealmFieldType;

    .line 128
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v42, v0

    const/16 v1, 0x2a

    const/16 v2, 0x108

    const-string v3, "DATE_SET"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->DATE_SET:Lio/realm/RealmFieldType;

    .line 129
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v43, v0

    const/16 v1, 0x2b

    const/16 v2, 0x109

    const-string v3, "FLOAT_SET"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->FLOAT_SET:Lio/realm/RealmFieldType;

    .line 130
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v44, v0

    const/16 v1, 0x2c

    const/16 v2, 0x10a

    const-string v3, "DOUBLE_SET"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->DOUBLE_SET:Lio/realm/RealmFieldType;

    .line 131
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v45, v0

    const/16 v1, 0x2d

    const/16 v2, 0x10b

    const-string v3, "DECIMAL128_SET"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->DECIMAL128_SET:Lio/realm/RealmFieldType;

    .line 132
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v46, v0

    const/16 v1, 0x2e

    const/16 v2, 0x10f

    const-string v3, "OBJECT_ID_SET"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->OBJECT_ID_SET:Lio/realm/RealmFieldType;

    .line 133
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v47, v0

    const/16 v1, 0x2f

    const/16 v2, 0x111

    const-string v3, "UUID_SET"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->UUID_SET:Lio/realm/RealmFieldType;

    .line 134
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v48, v0

    const/16 v1, 0x30

    const/16 v2, 0x10c

    const-string v3, "LINK_SET"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->LINK_SET:Lio/realm/RealmFieldType;

    .line 135
    new-instance v0, Lio/realm/RealmFieldType;

    move-object/from16 v49, v0

    const/16 v1, 0x31

    const/16 v2, 0x106

    const-string v3, "MIXED_SET"

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->MIXED_SET:Lio/realm/RealmFieldType;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    .line 79
    filled-new-array/range {v0 .. v49}, [Lio/realm/RealmFieldType;

    move-result-object v0

    sput-object v0, Lio/realm/RealmFieldType;->$VALUES:[Lio/realm/RealmFieldType;

    const/16 v0, 0x12

    new-array v1, v0, [Lio/realm/RealmFieldType;

    .line 139
    sput-object v1, Lio/realm/RealmFieldType;->basicTypes:[Lio/realm/RealmFieldType;

    new-array v1, v0, [Lio/realm/RealmFieldType;

    .line 140
    sput-object v1, Lio/realm/RealmFieldType;->listTypes:[Lio/realm/RealmFieldType;

    new-array v1, v0, [Lio/realm/RealmFieldType;

    .line 141
    sput-object v1, Lio/realm/RealmFieldType;->mapTypes:[Lio/realm/RealmFieldType;

    new-array v0, v0, [Lio/realm/RealmFieldType;

    .line 142
    sput-object v0, Lio/realm/RealmFieldType;->setTypes:[Lio/realm/RealmFieldType;

    .line 145
    invoke-static {}, Lio/realm/RealmFieldType;->values()[Lio/realm/RealmFieldType;

    move-result-object v0

    array-length v1, v0

    move/from16 v15, v52

    :goto_0
    if-ge v15, v1, :cond_3

    aget-object v2, v0, v15

    .line 146
    iget v3, v2, Lio/realm/RealmFieldType;->nativeValue:I

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    .line 148
    sget-object v5, Lio/realm/RealmFieldType;->basicTypes:[Lio/realm/RealmFieldType;

    aput-object v2, v5, v3

    const/16 v5, 0x100

    :goto_1
    const/16 v6, 0x200

    goto :goto_2

    :cond_0
    const/16 v5, 0x100

    if-ge v3, v5, :cond_1

    .line 150
    sget-object v6, Lio/realm/RealmFieldType;->listTypes:[Lio/realm/RealmFieldType;

    add-int/lit8 v3, v3, -0x80

    aput-object v2, v6, v3

    goto :goto_1

    :cond_1
    const/16 v6, 0x200

    if-ge v3, v6, :cond_2

    .line 152
    sget-object v7, Lio/realm/RealmFieldType;->setTypes:[Lio/realm/RealmFieldType;

    add-int/lit16 v3, v3, -0x100

    aput-object v2, v7, v3

    goto :goto_2

    .line 154
    :cond_2
    sget-object v7, Lio/realm/RealmFieldType;->mapTypes:[Lio/realm/RealmFieldType;

    add-int/lit16 v3, v3, -0x200

    aput-object v2, v7, v3

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 162
    iput p3, p0, Lio/realm/RealmFieldType;->nativeValue:I

    return-void
.end method

.method public static fromNativeValue(I)Lio/realm/RealmFieldType;
    .locals 4

    if-ltz p0, :cond_0

    .line 258
    sget-object v0, Lio/realm/RealmFieldType;->basicTypes:[Lio/realm/RealmFieldType;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 259
    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x80

    const/16 v1, 0x100

    if-gt v0, p0, :cond_1

    if-ge p0, v1, :cond_1

    add-int/lit8 v0, p0, -0x80

    .line 266
    sget-object v2, Lio/realm/RealmFieldType;->listTypes:[Lio/realm/RealmFieldType;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 267
    aget-object v0, v2, v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/16 v0, 0x200

    if-gt v1, p0, :cond_2

    if-ge p0, v0, :cond_2

    add-int/lit16 v1, p0, -0x100

    .line 275
    sget-object v2, Lio/realm/RealmFieldType;->setTypes:[Lio/realm/RealmFieldType;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 276
    aget-object v1, v2, v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    if-gt v0, p0, :cond_3

    add-int/lit16 v0, p0, -0x200

    .line 284
    sget-object v1, Lio/realm/RealmFieldType;->mapTypes:[Lio/realm/RealmFieldType;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 285
    aget-object v0, v1, v0

    if-eqz v0, :cond_3

    return-object v0

    .line 291
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid native Realm type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/RealmFieldType;
    .locals 1

    .line 79
    const-class v0, Lio/realm/RealmFieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/RealmFieldType;

    return-object p0
.end method

.method public static values()[Lio/realm/RealmFieldType;
    .locals 1

    .line 79
    sget-object v0, Lio/realm/RealmFieldType;->$VALUES:[Lio/realm/RealmFieldType;

    invoke-virtual {v0}, [Lio/realm/RealmFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/RealmFieldType;

    return-object v0
.end method


# virtual methods
.method public getNativeValue()I
    .locals 1

    .line 171
    iget v0, p0, Lio/realm/RealmFieldType;->nativeValue:I

    return v0
.end method

.method public isValid(Ljava/lang/Object;)Z
    .locals 4

    .line 181
    iget v0, p0, Lio/realm/RealmFieldType;->nativeValue:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    .line 246
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported Realm type:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :pswitch_0
    instance-of p1, p1, Lorg/bson/types/ObjectId;

    return p1

    .line 197
    :pswitch_1
    instance-of p1, p1, Lorg/bson/types/Decimal128;

    return p1

    .line 195
    :pswitch_2
    instance-of p1, p1, Ljava/lang/Double;

    return p1

    .line 193
    :pswitch_3
    instance-of p1, p1, Ljava/lang/Float;

    return p1

    .line 191
    :pswitch_4
    instance-of p1, p1, Ljava/util/Date;

    return p1

    :pswitch_5
    :sswitch_0
    return v2

    .line 201
    :sswitch_1
    instance-of p1, p1, Ljava/util/UUID;

    return p1

    .line 203
    :cond_0
    :sswitch_2
    instance-of p1, p1, Lio/realm/RealmAny;

    return p1

    .line 189
    :cond_1
    instance-of v0, p1, [B

    if-nez v0, :cond_3

    instance-of p1, p1, Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1

    .line 187
    :cond_4
    instance-of p1, p1, Ljava/lang/String;

    return p1

    .line 185
    :cond_5
    instance-of p1, p1, Ljava/lang/Boolean;

    return p1

    .line 183
    :cond_6
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_8

    instance-of p1, p1, Ljava/lang/Byte;

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    move v1, v2

    :cond_8
    :goto_1
    return v1

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_2
        0x11 -> :sswitch_1
        0x84 -> :sswitch_0
        0x86 -> :sswitch_0
        0x8f -> :sswitch_0
        0x91 -> :sswitch_0
        0x104 -> :sswitch_0
        0x106 -> :sswitch_0
        0x10f -> :sswitch_0
        0x111 -> :sswitch_0
        0x204 -> :sswitch_0
        0x206 -> :sswitch_0
        0x20f -> :sswitch_0
        0x211 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x88
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x100
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x108
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x200
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x208
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
