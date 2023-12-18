.class public Lio/realm/internal/TableQuery;
.super Ljava/lang/Object;
.source "TableQuery.java"

# interfaces
.implements Lio/realm/internal/NativeObject;


# static fields
.field private static final DEBUG:Z = false

.field private static final nativeFinalizerPtr:J


# instance fields
.field private final nativePtr:J

.field private queryValidated:Z

.field private final realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

.field private final table:Lio/realm/internal/Table;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    invoke-static {}, Lio/realm/internal/TableQuery;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/TableQuery;->nativeFinalizerPtr:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lio/realm/RealmAnyNativeFunctionsImpl;

    invoke-direct {v0}, Lio/realm/RealmAnyNativeFunctionsImpl;-><init>()V

    iput-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 56
    iput-object p2, p0, Lio/realm/internal/TableQuery;->table:Lio/realm/internal/Table;

    .line 57
    iput-wide p3, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    .line 59
    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    return-void
.end method

.method public static buildDistinctDescriptor([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DISTINCT("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    array-length v1, p0

    const-string v2, ""

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 146
    invoke-static {v4}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    const-string v2, ", "

    goto :goto_0

    :cond_0
    const-string p0, ")"

    .line 151
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildSortDescriptor([Ljava/lang/String;[Lio/realm/Sort;)Ljava/lang/String;
    .locals 5

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SORT("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    const/4 v2, 0x0

    .line 118
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 119
    aget-object v3, p0, v2

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 122
    invoke-static {v3}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    .line 123
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 124
    aget-object v3, p1, v2

    sget-object v4, Lio/realm/Sort;->ASCENDING:Lio/realm/Sort;

    if-ne v3, v4, :cond_0

    const-string v3, "ASC"

    goto :goto_1

    :cond_0
    const-string v3, "DESC"

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    const-string v1, ", "

    goto :goto_0

    :cond_1
    const-string p0, ")"

    .line 129
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static escapeFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, " "

    const-string v1, "\\ "

    .line 47
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private native nativeAverageDecimal128(JJ)[J
.end method

.method private native nativeAverageDouble(JJ)D
.end method

.method private native nativeAverageFloat(JJ)D
.end method

.method private native nativeAverageInt(JJ)D
.end method

.method private native nativeAverageRealmAny(JJ)[J
.end method

.method private native nativeBeginGroup(J)V
.end method

.method private native nativeCount(J)J
.end method

.method private native nativeEndGroup(J)V
.end method

.method private native nativeFind(J)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private native nativeMaximumDecimal128(JJ)[J
.end method

.method private native nativeMaximumDouble(JJ)Ljava/lang/Double;
.end method

.method private native nativeMaximumFloat(JJ)Ljava/lang/Float;
.end method

.method private native nativeMaximumInt(JJ)Ljava/lang/Long;
.end method

.method private native nativeMaximumRealmAny(JJ)Lio/realm/internal/core/NativeRealmAny;
.end method

.method private native nativeMaximumTimestamp(JJ)Ljava/lang/Long;
.end method

.method private native nativeMinimumDecimal128(JJ)[J
.end method

.method private native nativeMinimumDouble(JJ)Ljava/lang/Double;
.end method

.method private native nativeMinimumFloat(JJ)Ljava/lang/Float;
.end method

.method private native nativeMinimumInt(JJ)Ljava/lang/Long;
.end method

.method private native nativeMinimumRealmAny(JJ)Lio/realm/internal/core/NativeRealmAny;
.end method

.method private native nativeMinimumTimestamp(JJ)Ljava/lang/Long;
.end method

.method private native nativeNot(J)V
.end method

.method private native nativeOr(J)V
.end method

.method private native nativeRawDescriptor(JLjava/lang/String;J)V
.end method

.method private native nativeRawPredicate(JLjava/lang/String;[JJ)V
.end method

.method private native nativeRemove(J)J
.end method

.method private native nativeSumDecimal128(JJ)[J
.end method

.method private native nativeSumDouble(JJ)D
.end method

.method private native nativeSumFloat(JJ)D
.end method

.method private native nativeSumInt(JJ)J
.end method

.method private native nativeSumRealmAny(JJ)[J
.end method

.method private native nativeValidateQuery(J)Ljava/lang/String;
.end method

.method private rawDescriptor(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;)V
    .locals 6
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 192
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1}, Lio/realm/internal/objectstore/OsKeyPathMapping;->getNativePtr()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    move-wide v4, v3

    move-object v0, p0

    move-object v3, p2

    .line 192
    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeRawDescriptor(JLjava/lang/String;J)V

    return-void
.end method

.method private throwImmutable()V
    .locals 2

    .line 569
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mutable method call during read transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public alwaysFalse()Lio/realm/internal/TableQuery;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [J

    const/4 v2, 0x0

    const-string v3, "FALSEPREDICATE"

    .line 339
    invoke-virtual {p0, v2, v3, v1}, Lio/realm/internal/TableQuery;->rawPredicateWithPointers(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[J)V

    .line 340
    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public alwaysTrue()Lio/realm/internal/TableQuery;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [J

    const/4 v2, 0x0

    const-string v3, "TRUEPREDICATE"

    .line 333
    invoke-virtual {p0, v2, v3, v1}, Lio/realm/internal/TableQuery;->rawPredicateWithPointers(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[J)V

    .line 334
    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public averageDecimal128(J)Lorg/bson/types/Decimal128;
    .locals 4

    .line 500
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 501
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeAverageDecimal128(JJ)[J

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 503
    aget-wide v0, p1, p2

    const/4 p2, 0x0

    aget-wide v2, p1, p2

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object p1

    return-object p1

    .line 506
    :cond_0
    new-instance p1, Lorg/bson/types/Decimal128;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lorg/bson/types/Decimal128;-><init>(J)V

    return-object p1
.end method

.method public averageDouble(J)D
    .locals 2

    .line 472
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 473
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeAverageDouble(JJ)D

    move-result-wide p1

    return-wide p1
.end method

.method public averageFloat(J)D
    .locals 2

    .line 440
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 441
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeAverageFloat(JJ)D

    move-result-wide p1

    return-wide p1
.end method

.method public averageInt(J)D
    .locals 2

    .line 418
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 419
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeAverageInt(JJ)D

    move-result-wide p1

    return-wide p1
.end method

.method public averageRealmAny(J)Lorg/bson/types/Decimal128;
    .locals 4

    .line 494
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 495
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeAverageRealmAny(JJ)[J

    move-result-object p1

    const/4 p2, 0x1

    .line 496
    aget-wide v0, p1, p2

    const/4 p2, 0x0

    aget-wide v2, p1, p2

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object p1

    return-object p1
.end method

.method public beginGroup()Lio/realm/internal/TableQuery;
    .locals 2

    .line 91
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeBeginGroup(J)V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public beginsWith(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 252
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " BEGINSWITH $0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 253
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public beginsWithInsensitive(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 258
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " BEGINSWITH[c] $0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 259
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public between(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 246
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= $0 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " <= $1)"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object p4, v1, p3

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 247
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public contains(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 288
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " CONTAINS $0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 289
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public containsEntry(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 314
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "[$0] == $1"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object p4, v1, p3

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 315
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public containsInsensitive(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 294
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " CONTAINS[c] $0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 295
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public containsKey(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 302
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ANY "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ".@keys == $0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 303
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public containsValue(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 308
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ANY "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ".@values == $0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 309
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public count()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 558
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 559
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public distinct(Lio/realm/internal/objectstore/OsKeyPathMapping;[Ljava/lang/String;)Lio/realm/internal/TableQuery;
    .locals 0
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 157
    invoke-static {p2}, Lio/realm/internal/TableQuery;->buildDistinctDescriptor([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 158
    invoke-direct {p0, p1, p2}, Lio/realm/internal/TableQuery;->rawDescriptor(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;)V

    return-object p0
.end method

.method public endGroup()Lio/realm/internal/TableQuery;
    .locals 2

    .line 97
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeEndGroup(J)V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public endsWith(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 264
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " ENDSWITH $0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 265
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public endsWithInsensitive(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 270
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " ENDSWITH[c] $0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 271
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public equalTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 198
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " = $0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 199
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public equalToInsensitive(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 210
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " =[c] $0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 211
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public find()J
    .locals 2

    .line 392
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 393
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeFind(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 69
    sget-wide v0, Lio/realm/internal/TableQuery;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    return-wide v0
.end method

.method public getTable()Lio/realm/internal/Table;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/realm/internal/TableQuery;->table:Lio/realm/internal/Table;

    return-object v0
.end method

.method public greaterThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 222
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " > $0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 223
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public greaterThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 228
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " >= $0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 229
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public in(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 5
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 345
    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 347
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->beginGroup()Lio/realm/internal/TableQuery;

    .line 350
    array-length v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p3, v3

    if-nez v1, :cond_0

    .line 351
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->or()Lio/realm/internal/TableQuery;

    :cond_0
    if-nez v4, :cond_1

    .line 353
    invoke-virtual {p0, p1, p2}, Lio/realm/internal/TableQuery;->isNull(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;)Lio/realm/internal/TableQuery;

    goto :goto_1

    .line 355
    :cond_1
    invoke-virtual {p0, p1, p2, v4}, Lio/realm/internal/TableQuery;->equalTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v1, v2

    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->endGroup()Lio/realm/internal/TableQuery;

    .line 361
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public inInsensitive(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 5
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 366
    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 368
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->beginGroup()Lio/realm/internal/TableQuery;

    .line 371
    array-length v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p3, v3

    if-nez v1, :cond_0

    .line 372
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->or()Lio/realm/internal/TableQuery;

    :cond_0
    if-nez v4, :cond_1

    .line 374
    invoke-virtual {p0, p1, p2}, Lio/realm/internal/TableQuery;->isNull(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;)Lio/realm/internal/TableQuery;

    goto :goto_1

    .line 376
    :cond_1
    invoke-virtual {p0, p1, p2, v4}, Lio/realm/internal/TableQuery;->equalToInsensitive(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v1, v2

    goto :goto_0

    .line 380
    :cond_2
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->endGroup()Lio/realm/internal/TableQuery;

    .line 382
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public isEmpty(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;)Lio/realm/internal/TableQuery;
    .locals 2
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ".@count = 0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [J

    invoke-virtual {p0, p1, p2, v1}, Lio/realm/internal/TableQuery;->rawPredicateWithPointers(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[J)V

    .line 169
    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public isNotEmpty(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;)Lio/realm/internal/TableQuery;
    .locals 2
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ".@count != 0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [J

    invoke-virtual {p0, p1, p2, v1}, Lio/realm/internal/TableQuery;->rawPredicateWithPointers(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[J)V

    .line 175
    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public isNotNull(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;)Lio/realm/internal/TableQuery;
    .locals 2
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " != NULL"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [J

    invoke-virtual {p0, p1, p2, v1}, Lio/realm/internal/TableQuery;->rawPredicateWithPointers(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[J)V

    .line 328
    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public isNull(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;)Lio/realm/internal/TableQuery;
    .locals 2
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " = NULL"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [J

    invoke-virtual {p0, p1, p2, v1}, Lio/realm/internal/TableQuery;->rawPredicateWithPointers(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[J)V

    .line 322
    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public lessThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 234
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " < $0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 235
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public lessThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 240
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " <= $0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 241
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public like(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 276
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " LIKE $0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 277
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public likeInsensitive(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 282
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " LIKE[c] $0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 283
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public limit(J)Lio/realm/internal/TableQuery;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LIMIT("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lio/realm/internal/TableQuery;->rawDescriptor(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;)V

    return-object p0
.end method

.method public maximumDate(J)Ljava/util/Date;
    .locals 2

    .line 522
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 523
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeMaximumTimestamp(JJ)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 525
    new-instance p2, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public maximumDecimal128(J)Lorg/bson/types/Decimal128;
    .locals 4

    .line 511
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 512
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeMaximumDecimal128(JJ)[J

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 514
    aget-wide v0, p1, p2

    const/4 p2, 0x0

    aget-wide v2, p1, p2

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public maximumDouble(J)Ljava/lang/Double;
    .locals 2

    .line 462
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 463
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeMaximumDouble(JJ)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public maximumFloat(J)Ljava/lang/Float;
    .locals 2

    .line 430
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 431
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeMaximumFloat(JJ)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public maximumInt(J)Ljava/lang/Long;
    .locals 2

    .line 408
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 409
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeMaximumInt(JJ)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public maximumRealmAny(J)Lio/realm/internal/core/NativeRealmAny;
    .locals 2

    .line 484
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 485
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeMaximumRealmAny(JJ)Lio/realm/internal/core/NativeRealmAny;

    move-result-object p1

    return-object p1
.end method

.method public minimumDate(J)Ljava/util/Date;
    .locals 2

    .line 531
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 532
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeMinimumTimestamp(JJ)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 534
    new-instance p2, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public minimumDecimal128(J)Lorg/bson/types/Decimal128;
    .locals 4

    .line 540
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 541
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeMinimumDecimal128(JJ)[J

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 543
    aget-wide v0, p1, p2

    const/4 p2, 0x0

    aget-wide v2, p1, p2

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public minimumDouble(J)Ljava/lang/Double;
    .locals 2

    .line 467
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 468
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeMinimumDouble(JJ)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public minimumFloat(J)Ljava/lang/Float;
    .locals 2

    .line 435
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 436
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeMinimumFloat(JJ)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public minimumInt(J)Ljava/lang/Long;
    .locals 2

    .line 413
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 414
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeMinimumInt(JJ)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public minimumRealmAny(J)Lio/realm/internal/core/NativeRealmAny;
    .locals 2

    .line 489
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 490
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeMinimumRealmAny(JJ)Lio/realm/internal/core/NativeRealmAny;

    move-result-object p1

    return-object p1
.end method

.method public not()Lio/realm/internal/TableQuery;
    .locals 2

    .line 109
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeNot(J)V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public notEqualTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 204
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " != $0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 205
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public notEqualToInsensitive(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 3
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 216
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " !=[c] $0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmAny;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    .line 217
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public or()Lio/realm/internal/TableQuery;
    .locals 2

    .line 103
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeOr(J)V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public varargs rawPredicate(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    .locals 1
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 180
    iget-object v0, p0, Lio/realm/internal/TableQuery;->realmAnyNativeFunctions:Lio/realm/RealmAnyNativeFunctionsImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Lio/realm/RealmAnyNativeFunctionsImpl;->callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V

    return-object p0
.end method

.method public varargs rawPredicateWithPointers(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[J)V
    .locals 7
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 185
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1}, Lio/realm/internal/objectstore/OsKeyPathMapping;->getNativePtr()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    move-wide v5, v3

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    .line 185
    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeRawPredicate(JLjava/lang/String;[JJ)V

    return-void
.end method

.method public remove()J
    .locals 2

    .line 563
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 564
    iget-object v0, p0, Lio/realm/internal/TableQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/realm/internal/TableQuery;->throwImmutable()V

    .line 565
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeRemove(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public sort(Lio/realm/internal/objectstore/OsKeyPathMapping;[Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/internal/TableQuery;
    .locals 0
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 135
    invoke-static {p2, p3}, Lio/realm/internal/TableQuery;->buildSortDescriptor([Ljava/lang/String;[Lio/realm/Sort;)Ljava/lang/String;

    move-result-object p2

    .line 136
    invoke-direct {p0, p1, p2}, Lio/realm/internal/TableQuery;->rawDescriptor(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;)V

    return-object p0
.end method

.method public sumDecimal128(J)Lorg/bson/types/Decimal128;
    .locals 4

    .line 452
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 453
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeSumDecimal128(JJ)[J

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 455
    aget-wide v0, p1, p2

    const/4 p2, 0x0

    aget-wide v2, p1, p2

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public sumDouble(J)D
    .locals 2

    .line 447
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 448
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeSumDouble(JJ)D

    move-result-wide p1

    return-wide p1
.end method

.method public sumFloat(J)D
    .locals 2

    .line 425
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 426
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeSumFloat(JJ)D

    move-result-wide p1

    return-wide p1
.end method

.method public sumInt(J)J
    .locals 2

    .line 403
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 404
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeSumInt(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public sumRealmAny(J)Lorg/bson/types/Decimal128;
    .locals 4

    .line 478
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 479
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeSumRealmAny(JJ)[J

    move-result-object p1

    const/4 p2, 0x1

    .line 480
    aget-wide v0, p1, p2

    const/4 p2, 0x0

    aget-wide v2, p1, p2

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object p1

    return-object p1
.end method

.method public validateQuery()V
    .locals 2

    .line 80
    iget-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    if-nez v0, :cond_1

    .line 81
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeValidateQuery(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    goto :goto_0

    .line 84
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
