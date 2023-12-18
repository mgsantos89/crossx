.class public Lio/realm/internal/OsSet;
.super Ljava/lang/Object;
.source "OsSet.java"

# interfaces
.implements Lio/realm/internal/NativeObject;
.implements Lio/realm/internal/OsCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsSet$ExternalCollectionOperation;
    }
.end annotation


# static fields
.field public static final NOT_FOUND:I = -0x1

.field private static final VALUE_FOUND:I = 0x1

.field private static final VALUE_NOT_FOUND:I

.field private static final nativeFinalizerPtr:J


# instance fields
.field private final context:Lio/realm/internal/NativeContext;

.field private final nativePtr:J

.field private final osSharedRealm:Lio/realm/internal/OsSharedRealm;

.field private final targetTable:Lio/realm/internal/Table;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    invoke-static {}, Lio/realm/internal/OsSet;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsSet;->nativeFinalizerPtr:J

    return-void
.end method

.method private constructor <init>(Lio/realm/internal/OsSharedRealm;JLio/realm/internal/Table;)V
    .locals 0
    .param p4    # Lio/realm/internal/Table;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lio/realm/internal/OsSet;->osSharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 70
    iput-wide p2, p0, Lio/realm/internal/OsSet;->nativePtr:J

    .line 71
    iget-object p1, p1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    iput-object p1, p0, Lio/realm/internal/OsSet;->context:Lio/realm/internal/NativeContext;

    .line 72
    iput-object p4, p0, Lio/realm/internal/OsSet;->targetTable:Lio/realm/internal/Table;

    .line 73
    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/UncheckedRow;J)V
    .locals 7

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Lio/realm/internal/UncheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/OsSet;->osSharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 55
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v1

    invoke-virtual {p1}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v3

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lio/realm/internal/OsSet;->nativeCreate(JJJ)[J

    move-result-object p1

    const/4 p2, 0x0

    .line 56
    aget-wide p2, p1, p2

    iput-wide p2, p0, Lio/realm/internal/OsSet;->nativePtr:J

    .line 57
    iget-object p2, v0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    iput-object p2, p0, Lio/realm/internal/OsSet;->context:Lio/realm/internal/NativeContext;

    .line 58
    invoke-virtual {p2, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    const/4 p2, 0x1

    .line 60
    aget-wide v1, p1, p2

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-eqz p3, :cond_0

    .line 61
    new-instance p3, Lio/realm/internal/Table;

    aget-wide v1, p1, p2

    invoke-direct {p3, v0, v1, v2}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/OsSharedRealm;J)V

    iput-object p3, p0, Lio/realm/internal/OsSet;->targetTable:Lio/realm/internal/Table;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lio/realm/internal/OsSet;->targetTable:Lio/realm/internal/Table;

    :goto_0
    return-void
.end method

.method private static native nativeAddAllRealmAnyCollection(JJ)Z
.end method

.method private static native nativeAddBinary(J[B)[J
.end method

.method private static native nativeAddBoolean(JZ)[J
.end method

.method private static native nativeAddDate(JJ)[J
.end method

.method private static native nativeAddDecimal128(JJJ)[J
.end method

.method private static native nativeAddDouble(JD)[J
.end method

.method private static native nativeAddFloat(JF)[J
.end method

.method private static native nativeAddLong(JJ)[J
.end method

.method private static native nativeAddNull(J)[J
.end method

.method private static native nativeAddObjectId(JLjava/lang/String;)[J
.end method

.method private static native nativeAddRealmAny(JJ)[J
.end method

.method private static native nativeAddRow(JJ)[J
.end method

.method private static native nativeAddString(JLjava/lang/String;)[J
.end method

.method private static native nativeAddUUID(JLjava/lang/String;)[J
.end method

.method private static native nativeAsymmetricDifference(JJ)Z
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeContainsAll(JJ)Z
.end method

.method private static native nativeContainsAllRealmAnyCollection(JJ)Z
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

.method private static native nativeContainsLong(JJ)Z
.end method

.method private static native nativeContainsNull(J)Z
.end method

.method private static native nativeContainsObjectId(JLjava/lang/String;)Z
.end method

.method private static native nativeContainsRealmAny(JJ)Z
.end method

.method private static native nativeContainsRow(JJ)Z
.end method

.method private static native nativeContainsString(JLjava/lang/String;)Z
.end method

.method private static native nativeContainsUUID(JLjava/lang/String;)Z
.end method

.method private static native nativeCreate(JJJ)[J
.end method

.method private static native nativeDeleteAll(J)V
.end method

.method private static native nativeFreeze(JJ)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetQuery(J)J
.end method

.method private static native nativeGetRealmAny(JI)J
.end method

.method private static native nativeGetRow(JI)J
.end method

.method private static native nativeGetValueAtIndex(JI)Ljava/lang/Object;
.end method

.method private static native nativeIntersect(JJ)Z
.end method

.method private static native nativeIsValid(J)Z
.end method

.method private static native nativeRemoveAllRealmAnyCollection(JJ)Z
.end method

.method private static native nativeRemoveBinary(J[B)[J
.end method

.method private static native nativeRemoveBoolean(JZ)[J
.end method

.method private static native nativeRemoveDate(JJ)[J
.end method

.method private static native nativeRemoveDecimal128(JJJ)[J
.end method

.method private static native nativeRemoveDouble(JD)[J
.end method

.method private static native nativeRemoveFloat(JF)[J
.end method

.method private static native nativeRemoveLong(JJ)[J
.end method

.method private static native nativeRemoveNull(J)[J
.end method

.method private static native nativeRemoveObjectId(JLjava/lang/String;)[J
.end method

.method private static native nativeRemoveRealmAny(JJ)[J
.end method

.method private static native nativeRemoveRow(JJ)[J
.end method

.method private static native nativeRemoveString(JLjava/lang/String;)[J
.end method

.method private static native nativeRemoveUUID(JLjava/lang/String;)[J
.end method

.method private static native nativeRetainAllRealmAnyCollection(JJ)Z
.end method

.method private static native nativeSize(J)J
.end method

.method private static native nativeStartListening(JLio/realm/internal/ObservableSet;)V
.end method

.method private static native nativeStopListening(J)V
.end method

.method private static native nativeUnion(JJ)Z
.end method

.method private retainAllInternal(Lio/realm/internal/core/NativeRealmAnyCollection;)Z
    .locals 4

    .line 621
    invoke-virtual {p0}, Lio/realm/internal/OsSet;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 626
    :cond_0
    invoke-virtual {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->getSize()I

    move-result v0

    if-nez v0, :cond_1

    .line 627
    invoke-virtual {p0}, Lio/realm/internal/OsSet;->clear()V

    const/4 p1, 0x1

    return p1

    .line 631
    :cond_1
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeRetainAllRealmAnyCollection(JJ)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public add(Ljava/lang/Boolean;)Z
    .locals 5
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 142
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeAddNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 144
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeAddBoolean(JZ)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 146
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public add(Ljava/lang/Byte;)Z
    .locals 5
    .param p1    # Ljava/lang/Byte;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 278
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeAddNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 280
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/lang/Byte;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeAddLong(JJ)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 282
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public add(Ljava/lang/Double;)Z
    .locals 5
    .param p1    # Ljava/lang/Double;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 342
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeAddNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 344
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeAddDouble(JD)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 346
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public add(Ljava/lang/Float;)Z
    .locals 5
    .param p1    # Ljava/lang/Float;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 310
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeAddNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 312
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeAddFloat(JF)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 314
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public add(Ljava/lang/Integer;)Z
    .locals 5
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 198
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeAddNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 200
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeAddLong(JJ)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 202
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public add(Ljava/lang/Long;)Z
    .locals 5
    .param p1    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 230
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeAddNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 232
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeAddLong(JJ)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 234
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public add(Ljava/lang/Short;)Z
    .locals 5
    .param p1    # Ljava/lang/Short;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 254
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeAddNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 256
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/lang/Short;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeAddLong(JJ)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 258
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public add(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 174
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeAddNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 176
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeAddString(JLjava/lang/String;)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 178
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public add(Ljava/util/Date;)Z
    .locals 5
    .param p1    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 406
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeAddNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 408
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeAddDate(JJ)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 410
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public add(Ljava/util/UUID;)Z
    .locals 5
    .param p1    # Ljava/util/UUID;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 502
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeAddNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 504
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeAddUUID(JLjava/lang/String;)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 506
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public add(Lorg/bson/types/Decimal128;)Z
    .locals 6
    .param p1    # Lorg/bson/types/Decimal128;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 438
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeAddNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 440
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->getLow()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->getHigh()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lio/realm/internal/OsSet;->nativeAddDecimal128(JJJ)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 442
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public add(Lorg/bson/types/ObjectId;)Z
    .locals 5
    .param p1    # Lorg/bson/types/ObjectId;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 470
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeAddNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 472
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Lorg/bson/types/ObjectId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeAddObjectId(JLjava/lang/String;)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 474
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public add([B)Z
    .locals 5
    .param p1    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 374
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeAddNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 376
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeAddBinary(J[B)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 378
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public addRealmAny(J)Z
    .locals 4

    .line 550
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsSet;->nativeAddRealmAny(JJ)[J

    move-result-object p1

    const/4 p2, 0x1

    .line 551
    aget-wide v0, p1, p2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public addRow(J)Z
    .locals 4

    .line 528
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsSet;->nativeAddRow(JJ)[J

    move-result-object p1

    const/4 p2, 0x1

    .line 529
    aget-wide v0, p1, p2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public asymmetricDifference(Lio/realm/internal/OsSet;)Z
    .locals 4

    .line 576
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/OsSet;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeAsymmetricDifference(JJ)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 2

    .line 584
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeClear(J)V

    return-void
.end method

.method public collectionFunnel(Lio/realm/internal/core/NativeRealmAnyCollection;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z
    .locals 2

    .line 113
    sget-object v0, Lio/realm/internal/OsSet$1;->$SwitchMap$io$realm$internal$OsSet$ExternalCollectionOperation:[I

    invoke-virtual {p2}, Lio/realm/internal/OsSet$ExternalCollectionOperation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lio/realm/internal/OsSet;->retainAllInternal(Lio/realm/internal/core/NativeRealmAnyCollection;)Z

    move-result p1

    return p1

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_1
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->getNativePtr()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsSet;->nativeRemoveAllRealmAnyCollection(JJ)Z

    move-result p1

    return p1

    .line 117
    :cond_2
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->getNativePtr()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsSet;->nativeAddAllRealmAnyCollection(JJ)Z

    move-result p1

    return p1

    .line 115
    :cond_3
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->getNativePtr()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsSet;->nativeContainsAllRealmAnyCollection(JJ)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Boolean;)Z
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 133
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeContainsNull(J)Z

    move-result p1

    return p1

    .line 135
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeContainsBoolean(JZ)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Double;)Z
    .locals 4
    .param p1    # Ljava/lang/Double;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 333
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeContainsNull(J)Z

    move-result p1

    return p1

    .line 335
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeContainsDouble(JD)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Float;)Z
    .locals 2
    .param p1    # Ljava/lang/Float;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 301
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeContainsNull(J)Z

    move-result p1

    return p1

    .line 303
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeContainsFloat(JF)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Long;)Z
    .locals 4
    .param p1    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 221
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeContainsNull(J)Z

    move-result p1

    return p1

    .line 223
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeContainsLong(JJ)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 165
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeContainsNull(J)Z

    move-result p1

    return p1

    .line 167
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeContainsString(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/util/Date;)Z
    .locals 4
    .param p1    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 397
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeContainsNull(J)Z

    move-result p1

    return p1

    .line 399
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeContainsDate(JJ)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/util/UUID;)Z
    .locals 2
    .param p1    # Ljava/util/UUID;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 493
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeContainsNull(J)Z

    move-result p1

    return p1

    .line 495
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeContainsUUID(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public contains(Lorg/bson/types/Decimal128;)Z
    .locals 6
    .param p1    # Lorg/bson/types/Decimal128;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 429
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeContainsNull(J)Z

    move-result p1

    return p1

    .line 431
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->getLow()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->getHigh()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lio/realm/internal/OsSet;->nativeContainsDecimal128(JJJ)Z

    move-result p1

    return p1
.end method

.method public contains(Lorg/bson/types/ObjectId;)Z
    .locals 2
    .param p1    # Lorg/bson/types/ObjectId;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 461
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeContainsNull(J)Z

    move-result p1

    return p1

    .line 463
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Lorg/bson/types/ObjectId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeContainsObjectId(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public contains([B)Z
    .locals 2
    .param p1    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 365
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeContainsNull(J)Z

    move-result p1

    return p1

    .line 367
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeContainsBinary(J[B)Z

    move-result p1

    return p1
.end method

.method public containsAll(Lio/realm/internal/OsSet;)Z
    .locals 4

    .line 568
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/OsSet;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeContainsAll(JJ)Z

    move-result p1

    return p1
.end method

.method public containsRealmAny(J)Z
    .locals 2

    .line 546
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsSet;->nativeContainsRealmAny(JJ)Z

    move-result p1

    return p1
.end method

.method public containsRow(J)Z
    .locals 2

    .line 524
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsSet;->nativeContainsRow(JJ)Z

    move-result p1

    return p1
.end method

.method public deleteAll()V
    .locals 2

    .line 100
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeDeleteAll(J)V

    return-void
.end method

.method public freeze(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/OsSet;
    .locals 4

    .line 588
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeFreeze(JJ)J

    move-result-wide v0

    .line 589
    new-instance v2, Lio/realm/internal/OsSet;

    iget-object v3, p0, Lio/realm/internal/OsSet;->targetTable:Lio/realm/internal/Table;

    invoke-direct {v2, p1, v0, v1, v3}, Lio/realm/internal/OsSet;-><init>(Lio/realm/internal/OsSharedRealm;JLio/realm/internal/Table;)V

    return-object v2
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 87
    sget-wide v0, Lio/realm/internal/OsSet;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    return-wide v0
.end method

.method public getQuery()Lio/realm/internal/TableQuery;
    .locals 5

    .line 96
    new-instance v0, Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/internal/OsSet;->context:Lio/realm/internal/NativeContext;

    iget-object v2, p0, Lio/realm/internal/OsSet;->targetTable:Lio/realm/internal/Table;

    iget-wide v3, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v3, v4}, Lio/realm/internal/OsSet;->nativeGetQuery(J)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lio/realm/internal/TableQuery;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    return-object v0
.end method

.method public getRealmAny(I)J
    .locals 2

    .line 560
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeGetRealmAny(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRow(I)J
    .locals 2

    .line 538
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeGetRow(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTargetTable()Lio/realm/internal/Table;
    .locals 1

    .line 77
    iget-object v0, p0, Lio/realm/internal/OsSet;->targetTable:Lio/realm/internal/Table;

    return-object v0
.end method

.method public getValueAtIndex(I)Ljava/lang/Object;
    .locals 2

    .line 104
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeGetValueAtIndex(JI)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public intersect(Lio/realm/internal/OsSet;)Z
    .locals 4

    .line 580
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/OsSet;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeIntersect(JJ)Z

    move-result p1

    return p1
.end method

.method public isValid()Z
    .locals 2

    .line 92
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeIsValid(J)Z

    move-result v0

    return v0
.end method

.method public notifyChangeListeners(JLio/realm/internal/ObserverPairList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/realm/internal/ObserverPairList<",
            "Lio/realm/internal/ObservableSet$SetObserverPair<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 606
    new-instance v0, Lio/realm/internal/OsCollectionChangeSet;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/realm/internal/OsCollectionChangeSet;-><init>(JZ)V

    .line 607
    new-instance p1, Lio/realm/SetChangeSet;

    invoke-direct {p1, v0}, Lio/realm/SetChangeSet;-><init>(Lio/realm/internal/OsCollectionChangeSet;)V

    .line 608
    invoke-virtual {p1}, Lio/realm/SetChangeSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 612
    :cond_0
    new-instance p2, Lio/realm/internal/ObservableSet$Callback;

    invoke-direct {p2, p1}, Lio/realm/internal/ObservableSet$Callback;-><init>(Lio/realm/SetChangeSet;)V

    invoke-virtual {p3, p2}, Lio/realm/internal/ObserverPairList;->foreach(Lio/realm/internal/ObserverPairList$Callback;)V

    return-void
.end method

.method public remove(Ljava/lang/Boolean;)Z
    .locals 5
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 152
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeRemoveNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 154
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeRemoveBoolean(JZ)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 156
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public remove(Ljava/lang/Byte;)Z
    .locals 5
    .param p1    # Ljava/lang/Byte;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 288
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeRemoveNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 290
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/lang/Byte;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeRemoveLong(JJ)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 292
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public remove(Ljava/lang/Double;)Z
    .locals 5
    .param p1    # Ljava/lang/Double;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 352
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeRemoveNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 354
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeRemoveDouble(JD)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 356
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public remove(Ljava/lang/Float;)Z
    .locals 5
    .param p1    # Ljava/lang/Float;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 320
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeRemoveNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 322
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeRemoveFloat(JF)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 324
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public remove(Ljava/lang/Integer;)Z
    .locals 5
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 208
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeRemoveNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 210
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeRemoveLong(JJ)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 212
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public remove(Ljava/lang/Long;)Z
    .locals 5
    .param p1    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 240
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeRemoveNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 242
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeRemoveLong(JJ)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 244
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public remove(Ljava/lang/Short;)Z
    .locals 5
    .param p1    # Ljava/lang/Short;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 264
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeRemoveNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 266
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/lang/Short;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeRemoveLong(JJ)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 268
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 184
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeRemoveNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 186
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeRemoveString(JLjava/lang/String;)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 188
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public remove(Ljava/util/Date;)Z
    .locals 5
    .param p1    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 416
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeRemoveNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 418
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeRemoveDate(JJ)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 420
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public remove(Ljava/util/UUID;)Z
    .locals 5
    .param p1    # Ljava/util/UUID;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 512
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeRemoveNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 514
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeRemoveUUID(JLjava/lang/String;)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 516
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public remove(Lorg/bson/types/Decimal128;)Z
    .locals 6
    .param p1    # Lorg/bson/types/Decimal128;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 448
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeRemoveNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 450
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->getLow()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->getHigh()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lio/realm/internal/OsSet;->nativeRemoveDecimal128(JJJ)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 452
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public remove(Lorg/bson/types/ObjectId;)Z
    .locals 5
    .param p1    # Lorg/bson/types/ObjectId;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 480
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeRemoveNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 482
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Lorg/bson/types/ObjectId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeRemoveObjectId(JLjava/lang/String;)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 484
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public remove([B)Z
    .locals 5
    .param p1    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 384
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeRemoveNull(J)[J

    move-result-object p1

    goto :goto_0

    .line 386
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeRemoveBinary(J[B)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 388
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public removeRealmAny(J)Z
    .locals 4

    .line 555
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsSet;->nativeRemoveRealmAny(JJ)[J

    move-result-object p1

    const/4 p2, 0x1

    .line 556
    aget-wide v0, p1, p2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public removeRow(J)Z
    .locals 4

    .line 533
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsSet;->nativeRemoveRow(JJ)[J

    move-result-object p1

    const/4 p2, 0x1

    .line 534
    aget-wide v0, p1, p2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public size()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public startListening(Lio/realm/internal/ObservableSet;)V
    .locals 2

    .line 597
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSet;->nativeStartListening(JLio/realm/internal/ObservableSet;)V

    return-void
.end method

.method public stopListening()V
    .locals 2

    .line 601
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeStopListening(J)V

    return-void
.end method

.method public union(Lio/realm/internal/OsSet;)Z
    .locals 4

    .line 572
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/OsSet;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSet;->nativeUnion(JJ)Z

    move-result p1

    return p1
.end method
