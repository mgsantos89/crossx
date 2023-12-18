.class public Lio/realm/internal/CheckedRow;
.super Lio/realm/internal/UncheckedRow;
.source "CheckedRow.java"


# instance fields
.field private originalRow:Lio/realm/internal/UncheckedRow;


# direct methods
.method private constructor <init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/UncheckedRow;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/UncheckedRow;)V

    .line 44
    iput-object p1, p0, Lio/realm/internal/CheckedRow;->originalRow:Lio/realm/internal/UncheckedRow;

    return-void
.end method

.method public static get(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)Lio/realm/internal/CheckedRow;
    .locals 2

    .line 56
    invoke-virtual {p1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2, p3}, Lio/realm/internal/Table;->nativeGetRowPtr(JJ)J

    move-result-wide p2

    .line 57
    new-instance v0, Lio/realm/internal/CheckedRow;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/realm/internal/CheckedRow;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    return-object v0
.end method

.method public static getFromRow(Lio/realm/internal/UncheckedRow;)Lio/realm/internal/CheckedRow;
    .locals 1

    .line 66
    new-instance v0, Lio/realm/internal/CheckedRow;

    invoke-direct {v0, p0}, Lio/realm/internal/CheckedRow;-><init>(Lio/realm/internal/UncheckedRow;)V

    return-object v0
.end method


# virtual methods
.method public freeze(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/Row;
    .locals 7

    .line 178
    invoke-virtual {p0}, Lio/realm/internal/CheckedRow;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    sget-object p1, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    return-object p1

    .line 181
    :cond_0
    new-instance v0, Lio/realm/internal/CheckedRow;

    iget-object v1, p0, Lio/realm/internal/CheckedRow;->context:Lio/realm/internal/NativeContext;

    iget-object v2, p0, Lio/realm/internal/CheckedRow;->parent:Lio/realm/internal/Table;

    invoke-virtual {v2, p1}, Lio/realm/internal/Table;->freeze(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {p0}, Lio/realm/internal/CheckedRow;->getNativePtr()J

    move-result-wide v3

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v5

    invoke-virtual {p0, v3, v4, v5, v6}, Lio/realm/internal/CheckedRow;->nativeFreeze(JJ)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lio/realm/internal/CheckedRow;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    return-object v0
.end method

.method public getModelList(J)Lio/realm/internal/OsList;
    .locals 3

    .line 102
    invoke-virtual {p0}, Lio/realm/internal/CheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 103
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-ne v0, v1, :cond_0

    .line 108
    invoke-super {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object p1

    return-object p1

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 106
    invoke-virtual {p0}, Lio/realm/internal/CheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Field \'%s\' is not a \'RealmList\'."

    .line 105
    invoke-static {v1, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getModelMap(J)Lio/realm/internal/OsMap;
    .locals 3

    .line 135
    invoke-virtual {p0}, Lio/realm/internal/CheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 136
    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_LINK_MAP:Lio/realm/RealmFieldType;

    if-ne v0, v1, :cond_0

    .line 141
    invoke-super {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->getRealmAnyMap(J)Lio/realm/internal/OsMap;

    move-result-object p1

    return-object p1

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 139
    invoke-virtual {p0}, Lio/realm/internal/CheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Field \'%s\' is not a \'RealmDictionary\'."

    .line 138
    invoke-static {v1, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getModelSet(J)Lio/realm/internal/OsSet;
    .locals 0

    .line 162
    invoke-super {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->getModelSet(J)Lio/realm/internal/OsSet;

    move-result-object p1

    return-object p1
.end method

.method public getRealmAnyMap(J)Lio/realm/internal/OsMap;
    .locals 3

    .line 124
    invoke-virtual {p0}, Lio/realm/internal/CheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 125
    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_MIXED_MAP:Lio/realm/RealmFieldType;

    if-ne v0, v1, :cond_0

    .line 130
    invoke-super {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->getRealmAnyMap(J)Lio/realm/internal/OsMap;

    move-result-object p1

    return-object p1

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 128
    invoke-virtual {p0}, Lio/realm/internal/CheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Field \'%s\' is not a \'RealmDictionary\'."

    .line 127
    invoke-static {v1, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRealmAnySet(J)Lio/realm/internal/OsSet;
    .locals 0

    .line 157
    invoke-super {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->getModelSet(J)Lio/realm/internal/OsSet;

    move-result-object p1

    return-object p1
.end method

.method public getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;
    .locals 3

    .line 113
    invoke-virtual {p0}, Lio/realm/internal/CheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    if-ne p3, v0, :cond_0

    .line 119
    invoke-super {p0, p1, p2, p3}, Lio/realm/internal/UncheckedRow;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object p1

    return-object p1

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 117
    invoke-virtual {p0}, Lio/realm/internal/CheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lio/realm/RealmFieldType;->name()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "The type of field \'%1$s\' is not \'RealmFieldType.%2$s\'."

    .line 116
    invoke-static {v1, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueMap(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;
    .locals 3

    .line 146
    invoke-virtual {p0}, Lio/realm/internal/CheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    if-ne p3, v0, :cond_0

    .line 152
    invoke-super {p0, p1, p2, p3}, Lio/realm/internal/UncheckedRow;->getValueMap(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object p1

    return-object p1

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 150
    invoke-virtual {p0}, Lio/realm/internal/CheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lio/realm/RealmFieldType;->name()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "The type of field \'%1$s\' is not \'RealmFieldType.%2$s\'."

    .line 149
    invoke-static {v1, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueSet(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;
    .locals 3

    .line 167
    invoke-virtual {p0}, Lio/realm/internal/CheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    if-ne p3, v0, :cond_0

    .line 173
    invoke-super {p0, p1, p2, p3}, Lio/realm/internal/UncheckedRow;->getValueSet(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object p1

    return-object p1

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 171
    invoke-virtual {p0}, Lio/realm/internal/CheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lio/realm/RealmFieldType;->name()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "The type of field \'%1$s\' is not \'RealmFieldType.%2$s\'."

    .line 170
    invoke-static {v1, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNull(J)Z
    .locals 0

    .line 81
    invoke-super {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->isNull(J)Z

    move-result p1

    return p1
.end method

.method public isNullLink(J)Z
    .locals 2

    .line 71
    invoke-virtual {p0, p1, p2}, Lio/realm/internal/CheckedRow;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 72
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 73
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->isNullLink(J)Z

    move-result p1

    return p1
.end method

.method protected native nativeGetBoolean(JJ)Z
.end method

.method protected native nativeGetByteArray(JJ)[B
.end method

.method protected native nativeGetColumnCount(J)J
.end method

.method protected native nativeGetColumnKey(JLjava/lang/String;)J
.end method

.method protected native nativeGetColumnType(JJ)I
.end method

.method protected native nativeGetDecimal128(JJ)[J
.end method

.method protected native nativeGetDouble(JJ)D
.end method

.method protected native nativeGetFloat(JJ)F
.end method

.method protected native nativeGetLink(JJ)J
.end method

.method protected native nativeGetLong(JJ)J
.end method

.method protected native nativeGetObjectId(JJ)Ljava/lang/String;
.end method

.method protected native nativeGetString(JJ)Ljava/lang/String;
.end method

.method protected native nativeGetTimestamp(JJ)J
.end method

.method protected native nativeIsNullLink(JJ)Z
.end method

.method protected native nativeNullifyLink(JJ)V
.end method

.method protected native nativeSetBoolean(JJZ)V
.end method

.method protected native nativeSetByteArray(JJ[B)V
.end method

.method protected native nativeSetDecimal128(JJJJ)V
.end method

.method protected native nativeSetDouble(JJD)V
.end method

.method protected native nativeSetFloat(JJF)V
.end method

.method protected native nativeSetLink(JJJ)V
.end method

.method protected native nativeSetLong(JJJ)V
.end method

.method protected native nativeSetObjectId(JJLjava/lang/String;)V
.end method

.method protected native nativeSetString(JJLjava/lang/String;)V
.end method

.method protected native nativeSetTimestamp(JJJ)V
.end method

.method public setNull(J)V
    .locals 2

    .line 92
    invoke-virtual {p0, p1, p2}, Lio/realm/internal/CheckedRow;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 93
    sget-object v1, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 94
    invoke-super {p0, p1, p2, v0}, Lio/realm/internal/UncheckedRow;->setBinaryByteArray(J[B)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-super {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->setNull(J)V

    :goto_0
    return-void
.end method
