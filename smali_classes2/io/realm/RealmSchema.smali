.class public abstract Lio/realm/RealmSchema;
.super Ljava/lang/Object;
.source "RealmSchema.java"


# static fields
.field static final EMPTY_STRING_MSG:Ljava/lang/String; = "Null or empty class names are not allowed"


# instance fields
.field private final classToSchema:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/RealmObjectSchema;",
            ">;"
        }
    .end annotation
.end field

.field private final classToTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/internal/Table;",
            ">;"
        }
    .end annotation
.end field

.field private final columnIndices:Lio/realm/internal/ColumnIndices;

.field private final dynamicClassToSchema:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/realm/RealmObjectSchema;",
            ">;"
        }
    .end annotation
.end field

.field private final dynamicClassToTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/realm/internal/Table;",
            ">;"
        }
    .end annotation
.end field

.field private keyPathMapping:Lio/realm/internal/objectstore/OsKeyPathMapping;

.field final realm:Lio/realm/BaseRealm;


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/ColumnIndices;)V
    .locals 1
    .param p2    # Lio/realm/internal/ColumnIndices;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->dynamicClassToTable:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->classToTable:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->classToSchema:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->dynamicClassToSchema:Ljava/util/Map;

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lio/realm/RealmSchema;->keyPathMapping:Lio/realm/internal/objectstore/OsKeyPathMapping;

    .line 63
    iput-object p1, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    .line 64
    iput-object p2, p0, Lio/realm/RealmSchema;->columnIndices:Lio/realm/internal/ColumnIndices;

    return-void
.end method

.method private checkColumnKeys()V
    .locals 2

    .line 256
    invoke-virtual {p0}, Lio/realm/RealmSchema;->haveColumnInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to use column key before set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isProxyClass(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)Z"
        }
    .end annotation

    .line 226
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method checkHasTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 148
    invoke-static {p1}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    iget-object v0, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    invoke-static {p1}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public abstract create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
.end method

.method public createKeyPathMapping()V
    .locals 3

    .line 265
    new-instance v0, Lio/realm/internal/objectstore/OsKeyPathMapping;

    iget-object v1, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v1, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lio/realm/internal/objectstore/OsKeyPathMapping;-><init>(J)V

    iput-object v0, p0, Lio/realm/RealmSchema;->keyPathMapping:Lio/realm/internal/objectstore/OsKeyPathMapping;

    return-void
.end method

.method public varargs abstract createWithPrimaryKeyField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Lio/realm/FieldAttribute;",
            ")",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getAll()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/realm/RealmObjectSchema;",
            ">;"
        }
    .end annotation
.end method

.method final getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Lio/realm/internal/ColumnInfo;"
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Lio/realm/RealmSchema;->checkColumnKeys()V

    .line 235
    iget-object v0, p0, Lio/realm/RealmSchema;->columnIndices:Lio/realm/internal/ColumnIndices;

    invoke-virtual {v0, p1}, Lio/realm/internal/ColumnIndices;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    return-object p1
.end method

.method protected final getColumnInfo(Ljava/lang/String;)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 239
    invoke-direct {p0}, Lio/realm/RealmSchema;->checkColumnKeys()V

    .line 240
    iget-object v0, p0, Lio/realm/RealmSchema;->columnIndices:Lio/realm/internal/ColumnIndices;

    invoke-virtual {v0, p1}, Lio/realm/internal/ColumnIndices;->getColumnInfo(Ljava/lang/String;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    return-object p1
.end method

.method final getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;
    .locals 1

    .line 252
    iget-object v0, p0, Lio/realm/RealmSchema;->keyPathMapping:Lio/realm/internal/objectstore/OsKeyPathMapping;

    return-object v0
.end method

.method getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lio/realm/RealmSchema;->classToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema;

    if-eqz v0, :cond_0

    return-object v0

    .line 193
    :cond_0
    invoke-static {p1}, Lio/realm/internal/Util;->getOriginalModelClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 194
    invoke-direct {p0, v1, p1}, Lio/realm/RealmSchema;->isProxyClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    iget-object v0, p0, Lio/realm/RealmSchema;->classToSchema:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema;

    :cond_1
    if-nez v0, :cond_2

    .line 199
    invoke-virtual {p0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 200
    new-instance v2, Lio/realm/ImmutableRealmObjectSchema;

    iget-object v3, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {p0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    invoke-direct {v2, v3, p0, v0, v4}, Lio/realm/ImmutableRealmObjectSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/RealmSchema;Lio/realm/internal/Table;Lio/realm/internal/ColumnInfo;)V

    .line 201
    iget-object v0, p0, Lio/realm/RealmSchema;->classToSchema:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 203
    :cond_2
    invoke-direct {p0, v1, p1}, Lio/realm/RealmSchema;->isProxyClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 205
    iget-object v1, p0, Lio/realm/RealmSchema;->classToSchema:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method getSchemaForClass(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 3

    .line 213
    invoke-static {p1}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lio/realm/RealmSchema;->dynamicClassToSchema:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmObjectSchema;

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v1}, Lio/realm/RealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    :cond_0
    iget-object v1, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    new-instance v1, Lio/realm/ImmutableRealmObjectSchema;

    iget-object p1, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {p1}, Lio/realm/BaseRealm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lio/realm/ImmutableRealmObjectSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/RealmSchema;Lio/realm/internal/Table;)V

    .line 220
    iget-object p1, p0, Lio/realm/RealmSchema;->dynamicClassToSchema:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    .line 217
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " doesn\'t exist in this Realm."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getTable(Ljava/lang/Class;)Lio/realm/internal/Table;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Lio/realm/internal/Table;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lio/realm/RealmSchema;->classToTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/Table;

    if-eqz v0, :cond_0

    return-object v0

    .line 169
    :cond_0
    invoke-static {p1}, Lio/realm/internal/Util;->getOriginalModelClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 170
    invoke-direct {p0, v1, p1}, Lio/realm/RealmSchema;->isProxyClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    iget-object v0, p0, Lio/realm/RealmSchema;->classToTable:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/Table;

    :cond_1
    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    .line 176
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/internal/RealmProxyMediator;->getSimpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v2, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 178
    iget-object v2, p0, Lio/realm/RealmSchema;->classToTable:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_2
    invoke-direct {p0, v1, p1}, Lio/realm/RealmSchema;->isProxyClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    iget-object v1, p0, Lio/realm/RealmSchema;->classToTable:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method getTable(Ljava/lang/String;)Lio/realm/internal/Table;
    .locals 2

    .line 155
    invoke-static {p1}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 156
    iget-object v0, p0, Lio/realm/RealmSchema;->dynamicClassToTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/Table;

    if-eqz v0, :cond_0

    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lio/realm/RealmSchema;->dynamicClassToTable:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method final haveColumnInfo()Z
    .locals 1

    .line 230
    iget-object v0, p0, Lio/realm/RealmSchema;->columnIndices:Lio/realm/internal/ColumnIndices;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final putToClassNameToSchemaMap(Ljava/lang/String;Lio/realm/RealmObjectSchema;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lio/realm/RealmSchema;->dynamicClassToSchema:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method refresh()V
    .locals 1

    .line 272
    iget-object v0, p0, Lio/realm/RealmSchema;->columnIndices:Lio/realm/internal/ColumnIndices;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lio/realm/internal/ColumnIndices;->refresh()V

    .line 275
    :cond_0
    iget-object v0, p0, Lio/realm/RealmSchema;->dynamicClassToTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 276
    iget-object v0, p0, Lio/realm/RealmSchema;->classToTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 277
    iget-object v0, p0, Lio/realm/RealmSchema;->classToSchema:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 278
    iget-object v0, p0, Lio/realm/RealmSchema;->dynamicClassToSchema:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method final removeFromClassNameToSchemaMap(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 1

    .line 248
    iget-object v0, p0, Lio/realm/RealmSchema;->dynamicClassToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmObjectSchema;

    return-object p1
.end method

.method public abstract rename(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;
.end method
