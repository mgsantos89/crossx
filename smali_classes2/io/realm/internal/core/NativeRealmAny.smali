.class public Lio/realm/internal/core/NativeRealmAny;
.super Ljava/lang/Object;
.source "NativeRealmAny.java"

# interfaces
.implements Lio/realm/internal/NativeObject;


# static fields
.field private static final nativeFinalizerPtr:J


# instance fields
.field private final nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    invoke-static {}, Lio/realm/internal/core/NativeRealmAny;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/core/NativeRealmAny;->nativeFinalizerPtr:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 101
    invoke-static {}, Lio/realm/internal/core/NativeRealmAny;->nativeCreateNull()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lio/realm/internal/core/NativeRealmAny;->nativePtr:J

    .line 44
    sget-object p1, Lio/realm/internal/NativeContext;->dummyContext:Lio/realm/internal/NativeContext;

    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/RealmObjectProxy;)V
    .locals 2

    .line 88
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAny;->createRealmAnyLink(Lio/realm/internal/RealmObjectProxy;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 2

    .line 48
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAny;->nativeCreateBoolean(Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;)V
    .locals 2

    .line 60
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAny;->nativeCreateDouble(D)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;)V
    .locals 2

    .line 56
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAny;->nativeCreateFloat(F)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2

    .line 52
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAny;->nativeCreateLong(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 64
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAny;->nativeCreateString(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    .line 72
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAny;->nativeCreateDate(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 2

    .line 84
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAny;->nativeCreateUUID(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Lorg/bson/types/Decimal128;)V
    .locals 4

    .line 80
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->getLow()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->getHigh()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/core/NativeRealmAny;->nativeCreateDecimal128(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Lorg/bson/types/ObjectId;)V
    .locals 2

    .line 76
    invoke-virtual {p1}, Lorg/bson/types/ObjectId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAny;->nativeCreateObjectId(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(J)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 68
    invoke-static {p1}, Lio/realm/internal/core/NativeRealmAny;->nativeCreateBinary([B)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(J)V

    return-void
.end method

.method private static createRealmAnyLink(Lio/realm/internal/RealmObjectProxy;)J
    .locals 4

    .line 92
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p0

    .line 94
    invoke-interface {p0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v0

    .line 95
    invoke-interface {p0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    .line 97
    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/core/NativeRealmAny;->nativeCreateLink(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static native nativeAsBinary(J)[B
.end method

.method private static native nativeAsBoolean(J)Z
.end method

.method private static native nativeAsDate(J)J
.end method

.method private static native nativeAsDecimal128(J)[J
.end method

.method private static native nativeAsDouble(J)D
.end method

.method private static native nativeAsFloat(J)F
.end method

.method private static native nativeAsLong(J)J
.end method

.method private static native nativeAsObjectId(J)Ljava/lang/String;
.end method

.method private static native nativeAsString(J)Ljava/lang/String;
.end method

.method private static native nativeAsUUID(J)Ljava/lang/String;
.end method

.method private static native nativeCreateBinary([B)J
.end method

.method private static native nativeCreateBoolean(Z)J
.end method

.method private static native nativeCreateDate(J)J
.end method

.method private static native nativeCreateDecimal128(JJ)J
.end method

.method private static native nativeCreateDouble(D)J
.end method

.method private static native nativeCreateFloat(F)J
.end method

.method private static native nativeCreateLink(JJ)J
.end method

.method private static native nativeCreateLong(J)J
.end method

.method private static native nativeCreateNull()J
.end method

.method private static native nativeCreateObjectId(Ljava/lang/String;)J
.end method

.method private static native nativeCreateString(Ljava/lang/String;)J
.end method

.method private static native nativeCreateUUID(Ljava/lang/String;)J
.end method

.method private static native nativeEquals(JJ)Z
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetRealmModelRowKey(J)J
.end method

.method private static native nativeGetRealmModelTableName(JJ)Ljava/lang/String;
.end method

.method private static native nativeGetType(J)I
.end method


# virtual methods
.method public asBinary()[B
    .locals 2

    .line 139
    iget-wide v0, p0, Lio/realm/internal/core/NativeRealmAny;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAny;->nativeAsBinary(J)[B

    move-result-object v0

    return-object v0
.end method

.method public asBoolean()Z
    .locals 2

    .line 119
    iget-wide v0, p0, Lio/realm/internal/core/NativeRealmAny;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAny;->nativeAsBoolean(J)Z

    move-result v0

    return v0
.end method

.method public asDate()Ljava/util/Date;
    .locals 3

    .line 143
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lio/realm/internal/core/NativeRealmAny;->nativePtr:J

    invoke-static {v1, v2}, Lio/realm/internal/core/NativeRealmAny;->nativeAsDate(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public asDecimal128()Lorg/bson/types/Decimal128;
    .locals 5

    .line 151
    iget-wide v0, p0, Lio/realm/internal/core/NativeRealmAny;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAny;->nativeAsDecimal128(J)[J

    move-result-object v0

    const/4 v1, 0x1

    .line 152
    aget-wide v1, v0, v1

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    invoke-static {v1, v2, v3, v4}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object v0

    return-object v0
.end method

.method public asDouble()D
    .locals 2

    .line 131
    iget-wide v0, p0, Lio/realm/internal/core/NativeRealmAny;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAny;->nativeAsDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public asFloat()F
    .locals 2

    .line 127
    iget-wide v0, p0, Lio/realm/internal/core/NativeRealmAny;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAny;->nativeAsFloat(J)F

    move-result v0

    return v0
.end method

.method public asLong()J
    .locals 2

    .line 123
    iget-wide v0, p0, Lio/realm/internal/core/NativeRealmAny;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAny;->nativeAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public asObjectId()Lorg/bson/types/ObjectId;
    .locals 3

    .line 147
    new-instance v0, Lorg/bson/types/ObjectId;

    iget-wide v1, p0, Lio/realm/internal/core/NativeRealmAny;->nativePtr:J

    invoke-static {v1, v2}, Lio/realm/internal/core/NativeRealmAny;->nativeAsObjectId(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bson/types/ObjectId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .locals 2

    .line 135
    iget-wide v0, p0, Lio/realm/internal/core/NativeRealmAny;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAny;->nativeAsString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asUUID()Ljava/util/UUID;
    .locals 2

    .line 156
    iget-wide v0, p0, Lio/realm/internal/core/NativeRealmAny;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAny;->nativeAsUUID(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public coercedEquals(Lio/realm/internal/core/NativeRealmAny;)Z
    .locals 4

    .line 173
    iget-wide v0, p0, Lio/realm/internal/core/NativeRealmAny;->nativePtr:J

    iget-wide v2, p1, Lio/realm/internal/core/NativeRealmAny;->nativePtr:J

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/core/NativeRealmAny;->nativeEquals(JJ)Z

    move-result p1

    return p1
.end method

.method public getModelClass(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/RealmProxyMediator;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/internal/OsSharedRealm;",
            "Lio/realm/internal/RealmProxyMediator;",
            ")",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 160
    iget-wide v0, p0, Lio/realm/internal/core/NativeRealmAny;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/core/NativeRealmAny;->nativeGetRealmModelTableName(JJ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/realm/internal/Table;->getClassNameForTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {p2, p1}, Lio/realm/internal/RealmProxyMediator;->getClazz(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 111
    sget-wide v0, Lio/realm/internal/core/NativeRealmAny;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lio/realm/internal/core/NativeRealmAny;->nativePtr:J

    return-wide v0
.end method

.method public getRealmModelRowKey()J
    .locals 2

    .line 169
    iget-wide v0, p0, Lio/realm/internal/core/NativeRealmAny;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAny;->nativeGetRealmModelRowKey(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRealmModelTableName(Lio/realm/internal/OsSharedRealm;)Ljava/lang/String;
    .locals 4

    .line 165
    iget-wide v0, p0, Lio/realm/internal/core/NativeRealmAny;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/core/NativeRealmAny;->nativeGetRealmModelTableName(JJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getType()Lio/realm/RealmAny$Type;
    .locals 2

    .line 115
    iget-wide v0, p0, Lio/realm/internal/core/NativeRealmAny;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAny;->nativeGetType(J)I

    move-result v0

    invoke-static {v0}, Lio/realm/RealmAny$Type;->fromNativeValue(I)Lio/realm/RealmAny$Type;

    move-result-object v0

    return-object v0
.end method
