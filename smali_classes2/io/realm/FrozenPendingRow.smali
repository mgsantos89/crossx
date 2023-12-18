.class public final enum Lio/realm/FrozenPendingRow;
.super Ljava/lang/Enum;
.source "FrozenPendingRow.java"

# interfaces
.implements Lio/realm/internal/Row;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/FrozenPendingRow;",
        ">;",
        "Lio/realm/internal/Row;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/FrozenPendingRow;

.field public static final enum INSTANCE:Lio/realm/FrozenPendingRow;

.field private static final QUERY_NOT_RETURNED_MESSAGE:Ljava/lang/String; = "This object was frozen while a query for it was still running."


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lio/realm/FrozenPendingRow;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/realm/FrozenPendingRow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/FrozenPendingRow;->INSTANCE:Lio/realm/FrozenPendingRow;

    .line 38
    filled-new-array {v0}, [Lio/realm/FrozenPendingRow;

    move-result-object v0

    sput-object v0, Lio/realm/FrozenPendingRow;->$VALUES:[Lio/realm/FrozenPendingRow;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/FrozenPendingRow;
    .locals 1

    .line 38
    const-class v0, Lio/realm/FrozenPendingRow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/FrozenPendingRow;

    return-object p0
.end method

.method public static values()[Lio/realm/FrozenPendingRow;
    .locals 1

    .line 38
    sget-object v0, Lio/realm/FrozenPendingRow;->$VALUES:[Lio/realm/FrozenPendingRow;

    invoke-virtual {v0}, [Lio/realm/FrozenPendingRow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/FrozenPendingRow;

    return-object v0
.end method


# virtual methods
.method public checkIfAttached()V
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object was frozen while a query for it was still running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createEmbeddedObject(JLio/realm/RealmFieldType;)J
    .locals 0

    .line 256
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public freeze(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/Row;
    .locals 0

    .line 276
    sget-object p1, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    return-object p1
.end method

.method public getBinaryByteArray(J)[B
    .locals 0

    .line 106
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBoolean(J)Z
    .locals 0

    .line 81
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColumnCount()J
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object was frozen while a query for it was still running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnKey(Ljava/lang/String;)J
    .locals 1

    .line 56
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This object was frozen while a query for it was still running."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object was frozen while a query for it was still running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnType(J)Lio/realm/RealmFieldType;
    .locals 0

    .line 61
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDate(J)Ljava/util/Date;
    .locals 0

    .line 96
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDecimal128(J)Lorg/bson/types/Decimal128;
    .locals 0

    .line 111
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDouble(J)D
    .locals 0

    .line 91
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFloat(J)F
    .locals 0

    .line 86
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLink(J)J
    .locals 0

    .line 131
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLong(J)J
    .locals 0

    .line 76
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getModelList(J)Lio/realm/internal/OsList;
    .locals 0

    .line 141
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getModelMap(J)Lio/realm/internal/OsMap;
    .locals 0

    .line 156
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getModelSet(J)Lio/realm/internal/OsSet;
    .locals 0

    .line 171
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNativeRealmAny(J)Lio/realm/internal/core/NativeRealmAny;
    .locals 0

    .line 126
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getObjectId(J)Lorg/bson/types/ObjectId;
    .locals 0

    .line 116
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getObjectKey()J
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object was frozen while a query for it was still running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRealmAnyMap(J)Lio/realm/internal/OsMap;
    .locals 0

    .line 151
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRealmAnySet(J)Lio/realm/internal/OsSet;
    .locals 0

    .line 166
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getString(J)Ljava/lang/String;
    .locals 0

    .line 101
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTable()Lio/realm/internal/Table;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object was frozen while a query for it was still running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUUID(J)Ljava/util/UUID;
    .locals 0

    .line 121
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;
    .locals 0

    .line 146
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValueMap(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;
    .locals 0

    .line 161
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValueSet(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;
    .locals 0

    .line 176
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasColumn(Ljava/lang/String;)Z
    .locals 1

    .line 271
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This object was frozen while a query for it was still running."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isLoaded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNull(J)Z
    .locals 0

    .line 231
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isNullLink(J)Z
    .locals 0

    .line 136
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nullifyLink(J)V
    .locals 0

    .line 226
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBinaryByteArray(J[B)V
    .locals 0

    .line 216
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBoolean(JZ)V
    .locals 0

    .line 186
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDate(JLjava/util/Date;)V
    .locals 0

    .line 201
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDecimal128(JLorg/bson/types/Decimal128;)V
    .locals 0

    .line 241
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDouble(JD)V
    .locals 0

    .line 196
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFloat(JF)V
    .locals 0

    .line 191
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLink(JJ)V
    .locals 0

    .line 221
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLong(JJ)V
    .locals 0

    .line 181
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNull(J)V
    .locals 0

    .line 236
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setObjectId(JLorg/bson/types/ObjectId;)V
    .locals 0

    .line 246
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRealmAny(JJ)V
    .locals 0

    .line 211
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setString(JLjava/lang/String;)V
    .locals 0

    .line 206
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUUID(JLjava/util/UUID;)V
    .locals 0

    .line 251
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
