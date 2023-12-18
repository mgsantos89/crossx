.class public Lio/realm/internal/OsMap;
.super Ljava/lang/Object;
.source "OsMap.java"

# interfaces
.implements Lio/realm/internal/NativeObject;


# static fields
.field public static final NOT_FOUND:I = -0x1

.field private static final nativeFinalizerPtr:J


# instance fields
.field private final context:Lio/realm/internal/NativeContext;

.field private final nativePtr:J

.field private final targetTable:Lio/realm/internal/Table;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    invoke-static {}, Lio/realm/internal/OsMap;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsMap;->nativeFinalizerPtr:J

    return-void
.end method

.method private constructor <init>(Lio/realm/internal/OsSharedRealm;JLio/realm/internal/Table;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p2, p0, Lio/realm/internal/OsMap;->nativePtr:J

    .line 60
    iput-object p4, p0, Lio/realm/internal/OsMap;->targetTable:Lio/realm/internal/Table;

    .line 61
    iget-object p1, p1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    iput-object p1, p0, Lio/realm/internal/OsMap;->context:Lio/realm/internal/NativeContext;

    .line 62
    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/UncheckedRow;J)V
    .locals 7

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Lio/realm/internal/UncheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v1

    invoke-virtual {p1}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v3

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lio/realm/internal/OsMap;->nativeCreate(JJJ)[J

    move-result-object p1

    const/4 p2, 0x0

    .line 47
    aget-wide p2, p1, p2

    iput-wide p2, p0, Lio/realm/internal/OsMap;->nativePtr:J

    const/4 p2, 0x1

    .line 48
    aget-wide v1, p1, p2

    const-wide/16 v3, -0x1

    cmp-long p3, v1, v3

    if-eqz p3, :cond_0

    .line 49
    new-instance p3, Lio/realm/internal/Table;

    aget-wide v1, p1, p2

    invoke-direct {p3, v0, v1, v2}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/OsSharedRealm;J)V

    iput-object p3, p0, Lio/realm/internal/OsMap;->targetTable:Lio/realm/internal/Table;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lio/realm/internal/OsMap;->targetTable:Lio/realm/internal/Table;

    .line 53
    :goto_0
    iget-object p1, v0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    iput-object p1, p0, Lio/realm/internal/OsMap;->context:Lio/realm/internal/NativeContext;

    .line 54
    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    return-void
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeContainsBinary(J[B)Z
.end method

.method private static native nativeContainsBoolean(JZ)Z
.end method

.method private static native nativeContainsDate(JJ)Z
.end method

.method private static native nativeContainsDecimal128(JJJ)Z
.end method

.method private static native nativeContainsDouble(JD)Z
.end method

.method private static native nativeContainsFloat(JF)Z
.end method

.method private static native nativeContainsKey(JLjava/lang/String;)Z
.end method

.method private static native nativeContainsLong(JJ)Z
.end method

.method private static native nativeContainsNull(J)Z
.end method

.method private static native nativeContainsObjectId(JLjava/lang/String;)Z
.end method

.method private static native nativeContainsRealmAny(JJ)Z
.end method

.method private static native nativeContainsRealmModel(JJJ)Z
.end method

.method private static native nativeContainsString(JLjava/lang/String;)Z
.end method

.method private static native nativeContainsUUID(JLjava/lang/String;)Z
.end method

.method private static native nativeCreate(JJJ)[J
.end method

.method private static native nativeCreateAndPutEmbeddedObject(JLjava/lang/String;)J
.end method

.method private static native nativeFreeze(JJ)J
.end method

.method private static native nativeGetEntryForModel(JI)[Ljava/lang/Object;
.end method

.method private static native nativeGetEntryForPrimitive(JI)[Ljava/lang/Object;
.end method

.method private static native nativeGetEntryForRealmAny(JI)[Ljava/lang/Object;
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetRealmAnyPtr(JLjava/lang/String;)J
.end method

.method private static native nativeGetRow(JLjava/lang/String;)J
.end method

.method private static native nativeGetValue(JLjava/lang/String;)Ljava/lang/Object;
.end method

.method private static native nativeIsValid(J)Z
.end method

.method private static native nativeKeys(J)J
.end method

.method private static native nativePutBinary(JLjava/lang/String;[B)V
.end method

.method private static native nativePutBoolean(JLjava/lang/String;Z)V
.end method

.method private static native nativePutDate(JLjava/lang/String;J)V
.end method

.method private static native nativePutDecimal128(JLjava/lang/String;JJ)V
.end method

.method private static native nativePutDouble(JLjava/lang/String;D)V
.end method

.method private static native nativePutFloat(JLjava/lang/String;F)V
.end method

.method private static native nativePutLong(JLjava/lang/String;J)V
.end method

.method private static native nativePutNull(JLjava/lang/String;)V
.end method

.method private static native nativePutObjectId(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativePutRealmAny(JLjava/lang/String;J)V
.end method

.method private static native nativePutRow(JLjava/lang/String;J)V
.end method

.method private static native nativePutString(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativePutUUID(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeRemove(JLjava/lang/String;)V
.end method

.method private static native nativeSize(J)J
.end method

.method private static native nativeStartListening(JLio/realm/internal/ObservableMap;)V
.end method

.method private static native nativeStopListening(J)V
.end method

.method private static native nativeValues(J)J
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 136
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsMap;->nativeClear(J)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .line 84
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsMap;->nativeContainsKey(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public containsPrimitiveValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 93
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsMap;->nativeContainsNull(J)Z

    move-result p1

    return p1

    .line 94
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 95
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsMap;->nativeContainsLong(JJ)Z

    move-result p1

    return p1

    .line 96
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 97
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsMap;->nativeContainsLong(JJ)Z

    move-result p1

    return p1

    .line 98
    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 99
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsMap;->nativeContainsDouble(JD)Z

    move-result p1

    return p1

    .line 100
    :cond_3
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_4

    .line 101
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsMap;->nativeContainsLong(JJ)Z

    move-result p1

    return p1

    .line 102
    :cond_4
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_5

    .line 103
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsMap;->nativeContainsLong(JJ)Z

    move-result p1

    return p1

    .line 104
    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 105
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsMap;->nativeContainsBoolean(JZ)Z

    move-result p1

    return p1

    .line 106
    :cond_6
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 107
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsMap;->nativeContainsString(JLjava/lang/String;)Z

    move-result p1

    return p1

    .line 108
    :cond_7
    instance-of v0, p1, [Ljava/lang/Byte;

    if-eqz v0, :cond_8

    .line 109
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, [Ljava/lang/Byte;

    invoke-static {p1}, Lio/realm/internal/android/TypeUtils;->convertNonPrimitiveBinaryToPrimitive([Ljava/lang/Byte;)[B

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsMap;->nativeContainsBinary(J[B)Z

    move-result p1

    return p1

    .line 110
    :cond_8
    instance-of v0, p1, [B

    if-eqz v0, :cond_9

    .line 111
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, [B

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsMap;->nativeContainsBinary(J[B)Z

    move-result p1

    return p1

    .line 112
    :cond_9
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_a

    .line 113
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsMap;->nativeContainsFloat(JF)Z

    move-result p1

    return p1

    .line 114
    :cond_a
    instance-of v0, p1, Ljava/util/UUID;

    if-eqz v0, :cond_b

    .line 115
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsMap;->nativeContainsUUID(JLjava/lang/String;)Z

    move-result p1

    return p1

    .line 116
    :cond_b
    instance-of v0, p1, Lorg/bson/types/ObjectId;

    if-eqz v0, :cond_c

    .line 117
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Lorg/bson/types/ObjectId;

    invoke-virtual {p1}, Lorg/bson/types/ObjectId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsMap;->nativeContainsObjectId(JLjava/lang/String;)Z

    move-result p1

    return p1

    .line 118
    :cond_c
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_d

    .line 119
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsMap;->nativeContainsDate(JJ)Z

    move-result p1

    return p1

    .line 120
    :cond_d
    instance-of v0, p1, Lorg/bson/types/Decimal128;

    if-eqz v0, :cond_e

    .line 121
    check-cast p1, Lorg/bson/types/Decimal128;

    .line 122
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->getHigh()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->getLow()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lio/realm/internal/OsMap;->nativeContainsDecimal128(JJJ)Z

    move-result p1

    return p1

    .line 124
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid object type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containsRealmAnyValue(J)Z
    .locals 2

    .line 128
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsMap;->nativeContainsRealmAny(JJ)Z

    move-result p1

    return p1
.end method

.method public containsRealmModel(JJ)Z
    .locals 6

    .line 132
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lio/realm/internal/OsMap;->nativeContainsRealmModel(JJJ)Z

    move-result p1

    return p1
.end method

.method public createAndPutEmbeddedObject(Ljava/lang/Object;)J
    .locals 2

    .line 233
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsMap;->nativeCreateAndPutEmbeddedObject(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public freeze(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/OsMap;
    .locals 5

    .line 148
    new-instance v0, Lio/realm/internal/OsMap;

    iget-wide v1, p0, Lio/realm/internal/OsMap;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lio/realm/internal/OsMap;->nativeFreeze(JJ)J

    move-result-wide v1

    iget-object v3, p0, Lio/realm/internal/OsMap;->targetTable:Lio/realm/internal/Table;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/realm/internal/OsMap;-><init>(Lio/realm/internal/OsSharedRealm;JLio/realm/internal/Table;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 225
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsMap;->nativeGetValue(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEntryForPrimitive(I)Lio/realm/internal/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/realm/internal/util/Pair<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 238
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsMap;->nativeGetEntryForPrimitive(JI)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 239
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 242
    new-instance v1, Lio/realm/internal/util/Pair;

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-direct {v1, v0, p1}, Lio/realm/internal/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public getKeyObjRowPair(I)Lio/realm/internal/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/realm/internal/util/Pair<",
            "TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 247
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsMap;->nativeGetEntryForModel(JI)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 248
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    .line 249
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    .line 253
    new-instance p1, Lio/realm/internal/util/Pair;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lio/realm/internal/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 257
    :cond_0
    new-instance p1, Lio/realm/internal/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lio/realm/internal/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public getKeyRealmAnyPair(I)Lio/realm/internal/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/realm/internal/util/Pair<",
            "TK;",
            "Lio/realm/internal/core/NativeRealmAny;",
            ">;"
        }
    .end annotation

    .line 262
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsMap;->nativeGetEntryForRealmAny(JI)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 263
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 264
    new-instance v1, Lio/realm/internal/core/NativeRealmAny;

    const/4 v2, 0x1

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lio/realm/internal/core/NativeRealmAny;-><init>(J)V

    .line 267
    new-instance p1, Lio/realm/internal/util/Pair;

    invoke-direct {p1, v0, v1}, Lio/realm/internal/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public getModelRowKey(Ljava/lang/Object;)J
    .locals 2

    .line 220
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsMap;->nativeGetRow(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 76
    sget-wide v0, Lio/realm/internal/OsMap;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    return-wide v0
.end method

.method public getRealmAnyPtr(Ljava/lang/Object;)J
    .locals 2

    .line 229
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsMap;->nativeGetRealmAnyPtr(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTargetTable()Lio/realm/internal/Table;
    .locals 1

    .line 66
    iget-object v0, p0, Lio/realm/internal/OsMap;->targetTable:Lio/realm/internal/Table;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 88
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsMap;->nativeIsValid(J)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_1

    .line 160
    :try_start_0
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsMap;->nativePutNull(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Value cannot be null"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 163
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 165
    :cond_0
    throw p1

    .line 169
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 170
    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Lio/realm/internal/OsMap;->nativePutLong(JLjava/lang/String;J)V

    goto/16 :goto_0

    .line 172
    :cond_2
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v2, p2

    invoke-static {v0, v1, p1, v2, v3}, Lio/realm/internal/OsMap;->nativePutLong(JLjava/lang/String;J)V

    goto/16 :goto_0

    .line 174
    :cond_3
    const-class v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 175
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    int-to-long v2, p2

    invoke-static {v0, v1, p1, v2, v3}, Lio/realm/internal/OsMap;->nativePutLong(JLjava/lang/String;J)V

    goto/16 :goto_0

    .line 176
    :cond_4
    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 177
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    int-to-long v2, p2

    invoke-static {v0, v1, p1, v2, v3}, Lio/realm/internal/OsMap;->nativePutLong(JLjava/lang/String;J)V

    goto/16 :goto_0

    .line 178
    :cond_5
    const-class v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 179
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsMap;->nativePutFloat(JLjava/lang/String;F)V

    goto/16 :goto_0

    .line 180
    :cond_6
    const-class v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 181
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Lio/realm/internal/OsMap;->nativePutDouble(JLjava/lang/String;D)V

    goto/16 :goto_0

    .line 182
    :cond_7
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 183
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsMap;->nativePutString(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :cond_8
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 185
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsMap;->nativePutBoolean(JLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 186
    :cond_9
    const-class v1, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 187
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Lio/realm/internal/OsMap;->nativePutDate(JLjava/lang/String;J)V

    goto/16 :goto_0

    .line 188
    :cond_a
    const-class v1, Lorg/bson/types/Decimal128;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 189
    check-cast p2, Lorg/bson/types/Decimal128;

    .line 190
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2}, Lorg/bson/types/Decimal128;->getHigh()J

    move-result-wide v3

    invoke-virtual {p2}, Lorg/bson/types/Decimal128;->getLow()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lio/realm/internal/OsMap;->nativePutDecimal128(JLjava/lang/String;JJ)V

    goto :goto_0

    .line 191
    :cond_b
    const-class v1, [Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 192
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    check-cast p2, [Ljava/lang/Byte;

    invoke-static {p2}, Lio/realm/internal/android/TypeUtils;->convertNonPrimitiveBinaryToPrimitive([Ljava/lang/Byte;)[B

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsMap;->nativePutBinary(JLjava/lang/String;[B)V

    goto :goto_0

    .line 193
    :cond_c
    const-class v1, [B

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 194
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsMap;->nativePutBinary(JLjava/lang/String;[B)V

    goto :goto_0

    .line 195
    :cond_d
    const-class v1, Lorg/bson/types/ObjectId;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 196
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lorg/bson/types/ObjectId;

    invoke-virtual {p2}, Lorg/bson/types/ObjectId;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsMap;->nativePutObjectId(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_e
    const-class v1, Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 198
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsMap;->nativePutUUID(JLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 200
    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Class \'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\' not supported."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putRealmAny(Ljava/lang/Object;J)V
    .locals 2

    .line 210
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/OsMap;->nativePutRealmAny(JLjava/lang/String;J)V

    return-void
.end method

.method public putRow(Ljava/lang/Object;J)V
    .locals 2

    .line 206
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/OsMap;->nativePutRow(JLjava/lang/String;J)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 2

    .line 216
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsMap;->nativeRemove(JLjava/lang/String;)V

    return-void
.end method

.method public size()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsMap;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public startListening(Lio/realm/internal/ObservableMap;)V
    .locals 2

    .line 271
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsMap;->nativeStartListening(JLio/realm/internal/ObservableMap;)V

    return-void
.end method

.method public stopListening()V
    .locals 2

    .line 275
    iget-wide v0, p0, Lio/realm/internal/OsMap;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsMap;->nativeStopListening(J)V

    return-void
.end method

.method public tableAndKeyPtrs()Lio/realm/internal/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/internal/util/Pair<",
            "Lio/realm/internal/Table;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Lio/realm/internal/util/Pair;

    iget-object v1, p0, Lio/realm/internal/OsMap;->targetTable:Lio/realm/internal/Table;

    iget-wide v2, p0, Lio/realm/internal/OsMap;->nativePtr:J

    invoke-static {v2, v3}, Lio/realm/internal/OsMap;->nativeKeys(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/internal/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public tableAndValuePtrs()Lio/realm/internal/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/internal/util/Pair<",
            "Lio/realm/internal/Table;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Lio/realm/internal/util/Pair;

    iget-object v1, p0, Lio/realm/internal/OsMap;->targetTable:Lio/realm/internal/Table;

    iget-wide v2, p0, Lio/realm/internal/OsMap;->nativePtr:J

    invoke-static {v2, v3}, Lio/realm/internal/OsMap;->nativeValues(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/internal/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
