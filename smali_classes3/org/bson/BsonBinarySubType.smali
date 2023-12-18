.class public final enum Lorg/bson/BsonBinarySubType;
.super Ljava/lang/Enum;
.source "BsonBinarySubType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bson/BsonBinarySubType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bson/BsonBinarySubType;

.field public static final enum BINARY:Lorg/bson/BsonBinarySubType;

.field public static final enum FUNCTION:Lorg/bson/BsonBinarySubType;

.field public static final enum MD5:Lorg/bson/BsonBinarySubType;

.field public static final enum OLD_BINARY:Lorg/bson/BsonBinarySubType;

.field public static final enum USER_DEFINED:Lorg/bson/BsonBinarySubType;

.field public static final enum UUID_LEGACY:Lorg/bson/BsonBinarySubType;

.field public static final enum UUID_STANDARD:Lorg/bson/BsonBinarySubType;


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 28
    new-instance v0, Lorg/bson/BsonBinarySubType;

    const-string v1, "BINARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/bson/BsonBinarySubType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/bson/BsonBinarySubType;->BINARY:Lorg/bson/BsonBinarySubType;

    .line 33
    new-instance v1, Lorg/bson/BsonBinarySubType;

    const-string v2, "FUNCTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/bson/BsonBinarySubType;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lorg/bson/BsonBinarySubType;->FUNCTION:Lorg/bson/BsonBinarySubType;

    .line 38
    new-instance v2, Lorg/bson/BsonBinarySubType;

    const-string v3, "OLD_BINARY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/bson/BsonBinarySubType;-><init>(Ljava/lang/String;IB)V

    sput-object v2, Lorg/bson/BsonBinarySubType;->OLD_BINARY:Lorg/bson/BsonBinarySubType;

    .line 43
    new-instance v3, Lorg/bson/BsonBinarySubType;

    const-string v4, "UUID_LEGACY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/bson/BsonBinarySubType;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lorg/bson/BsonBinarySubType;->UUID_LEGACY:Lorg/bson/BsonBinarySubType;

    .line 48
    new-instance v4, Lorg/bson/BsonBinarySubType;

    const-string v5, "UUID_STANDARD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lorg/bson/BsonBinarySubType;-><init>(Ljava/lang/String;IB)V

    sput-object v4, Lorg/bson/BsonBinarySubType;->UUID_STANDARD:Lorg/bson/BsonBinarySubType;

    .line 53
    new-instance v5, Lorg/bson/BsonBinarySubType;

    const-string v6, "MD5"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lorg/bson/BsonBinarySubType;-><init>(Ljava/lang/String;IB)V

    sput-object v5, Lorg/bson/BsonBinarySubType;->MD5:Lorg/bson/BsonBinarySubType;

    .line 58
    new-instance v6, Lorg/bson/BsonBinarySubType;

    const/4 v7, 0x6

    const/16 v8, -0x80

    const-string v9, "USER_DEFINED"

    invoke-direct {v6, v9, v7, v8}, Lorg/bson/BsonBinarySubType;-><init>(Ljava/lang/String;IB)V

    sput-object v6, Lorg/bson/BsonBinarySubType;->USER_DEFINED:Lorg/bson/BsonBinarySubType;

    .line 24
    filled-new-array/range {v0 .. v6}, [Lorg/bson/BsonBinarySubType;

    move-result-object v0

    sput-object v0, Lorg/bson/BsonBinarySubType;->$VALUES:[Lorg/bson/BsonBinarySubType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-byte p3, p0, Lorg/bson/BsonBinarySubType;->value:B

    return-void
.end method

.method public static isUuid(B)Z
    .locals 1

    .line 70
    sget-object v0, Lorg/bson/BsonBinarySubType;->UUID_LEGACY:Lorg/bson/BsonBinarySubType;

    invoke-virtual {v0}, Lorg/bson/BsonBinarySubType;->getValue()B

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/bson/BsonBinarySubType;->UUID_STANDARD:Lorg/bson/BsonBinarySubType;

    invoke-virtual {v0}, Lorg/bson/BsonBinarySubType;->getValue()B

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bson/BsonBinarySubType;
    .locals 1

    .line 24
    const-class v0, Lorg/bson/BsonBinarySubType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bson/BsonBinarySubType;

    return-object p0
.end method

.method public static values()[Lorg/bson/BsonBinarySubType;
    .locals 1

    .line 24
    sget-object v0, Lorg/bson/BsonBinarySubType;->$VALUES:[Lorg/bson/BsonBinarySubType;

    invoke-virtual {v0}, [Lorg/bson/BsonBinarySubType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bson/BsonBinarySubType;

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    .line 83
    iget-byte v0, p0, Lorg/bson/BsonBinarySubType;->value:B

    return v0
.end method
