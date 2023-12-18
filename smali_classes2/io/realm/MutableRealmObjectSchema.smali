.class Lio/realm/MutableRealmObjectSchema;
.super Lio/realm/RealmObjectSchema;
.source "MutableRealmObjectSchema.java"


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/RealmSchema;Lio/realm/internal/Table;)V
    .locals 1

    .line 42
    new-instance v0, Lio/realm/RealmObjectSchema$DynamicColumnIndices;

    invoke-direct {v0, p3}, Lio/realm/RealmObjectSchema$DynamicColumnIndices;-><init>(Lio/realm/internal/Table;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lio/realm/RealmObjectSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/RealmSchema;Lio/realm/internal/Table;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method private addModifiers(Ljava/lang/String;[Lio/realm/FieldAttribute;)V
    .locals 3

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 390
    :try_start_0
    array-length v1, p2

    if-lez v1, :cond_2

    .line 391
    sget-object v1, Lio/realm/FieldAttribute;->INDEXED:Lio/realm/FieldAttribute;

    invoke-static {p2, v1}, Lio/realm/MutableRealmObjectSchema;->containsAttribute([Lio/realm/FieldAttribute;Lio/realm/FieldAttribute;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->addIndex(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    const/4 v0, 0x1

    .line 396
    :cond_0
    sget-object v1, Lio/realm/FieldAttribute;->PRIMARY_KEY:Lio/realm/FieldAttribute;

    invoke-static {p2, v1}, Lio/realm/MutableRealmObjectSchema;->containsAttribute([Lio/realm/FieldAttribute;Lio/realm/FieldAttribute;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 398
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->addPrimaryKey(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 406
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v1

    if-eqz v0, :cond_1

    .line 408
    iget-object p1, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1, v1, v2}, Lio/realm/internal/Table;->removeSearchIndex(J)V

    .line 410
    :cond_1
    check-cast p2, Ljava/lang/RuntimeException;

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method private checkAddPrimaryKeyForSync()V
    .locals 2

    .line 439
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->isSyncConfiguration()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 440
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\'addPrimaryKey\' is not supported by synced Realms."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkEmpty(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null or empty class names are not allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkFieldNameIsAvailable(Ljava/lang/String;)V
    .locals 4

    .line 433
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0, p1}, Lio/realm/internal/Table;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 434
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field already exists in \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/realm/MutableRealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkForObjectStoreInvalidPrimaryKeyTypes(Ljava/lang/String;Lio/realm/RealmFieldType;)V
    .locals 2

    .line 459
    sget-object v0, Lio/realm/MutableRealmObjectSchema$1;->$SwitchMap$io$realm$RealmFieldType:[I

    invoke-virtual {p2}, Lio/realm/RealmFieldType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    return-void

    .line 463
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Date fields cannot be marked as primary keys: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 461
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Boolean fields cannot be marked as primary keys: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private checkForObjectStoreInvalidPrimaryKeyTypes(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 451
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    .line 452
    :cond_0
    sget-object v0, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-direct {p0, p1, v0}, Lio/realm/MutableRealmObjectSchema;->checkForObjectStoreInvalidPrimaryKeyTypes(Ljava/lang/String;Lio/realm/RealmFieldType;)V

    .line 454
    :cond_1
    const-class v0, Ljava/util/Date;

    if-ne p2, v0, :cond_2

    .line 455
    sget-object p2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    invoke-direct {p0, p1, p2}, Lio/realm/MutableRealmObjectSchema;->checkForObjectStoreInvalidPrimaryKeyTypes(Ljava/lang/String;Lio/realm/RealmFieldType;)V

    :cond_2
    return-void
.end method

.method private checkNewFieldName(Ljava/lang/String;)V
    .locals 0

    .line 428
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 429
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldNameIsAvailable(Ljava/lang/String;)V

    return-void
.end method

.method static containsAttribute([Lio/realm/FieldAttribute;Lio/realm/FieldAttribute;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 416
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 419
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public varargs addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Lio/realm/FieldAttribute;",
            ")",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation

    .line 90
    sget-object v0, Lio/realm/MutableRealmObjectSchema;->SUPPORTED_LIST_SIMPLE_FIELDS:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema$FieldMetaData;

    if-nez v0, :cond_2

    .line 92
    sget-object p3, Lio/realm/MutableRealmObjectSchema;->SUPPORTED_LINKED_FIELDS:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 94
    const-class p3, Lio/realm/RealmModel;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 95
    new-instance p3, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Use \'addRealmObjectField()\' instead to add fields that link to other RealmObjects: %s(%s)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 99
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Realm doesn\'t support this field type: %s(%s)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 93
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Use addRealmObjectField() instead to add fields that link to other RealmObjects: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 105
    :cond_2
    sget-object v1, Lio/realm/FieldAttribute;->PRIMARY_KEY:Lio/realm/FieldAttribute;

    invoke-static {p3, v1}, Lio/realm/MutableRealmObjectSchema;->containsAttribute([Lio/realm/FieldAttribute;Lio/realm/FieldAttribute;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    invoke-direct {p0}, Lio/realm/MutableRealmObjectSchema;->checkAddPrimaryKeyForSync()V

    .line 107
    invoke-direct {p0, p1, p2}, Lio/realm/MutableRealmObjectSchema;->checkForObjectStoreInvalidPrimaryKeyTypes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 110
    :cond_3
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkNewFieldName(Ljava/lang/String;)V

    .line 111
    iget-boolean p2, v0, Lio/realm/RealmObjectSchema$FieldMetaData;->defaultNullable:Z

    .line 112
    sget-object v1, Lio/realm/FieldAttribute;->REQUIRED:Lio/realm/FieldAttribute;

    invoke-static {p3, v1}, Lio/realm/MutableRealmObjectSchema;->containsAttribute([Lio/realm/FieldAttribute;Lio/realm/FieldAttribute;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x0

    .line 116
    :cond_4
    iget-object v1, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    iget-object v0, v0, Lio/realm/RealmObjectSchema$FieldMetaData;->fieldType:Lio/realm/RealmFieldType;

    invoke-virtual {v1, v0, p1, p2}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    move-result-wide v0

    .line 118
    :try_start_0
    invoke-direct {p0, p1, p3}, Lio/realm/MutableRealmObjectSchema;->addModifiers(Ljava/lang/String;[Lio/realm/FieldAttribute;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 121
    iget-object p2, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p2, v0, v1}, Lio/realm/internal/Table;->removeColumn(J)V

    .line 122
    throw p1
.end method

.method public addIndex(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 3

    .line 250
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldExists(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 253
    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    iget-object p1, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->addSearchIndex(J)V

    return-object p0

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " already has an index."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPrimaryKey(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 4

    .line 275
    invoke-direct {p0}, Lio/realm/MutableRealmObjectSchema;->checkAddPrimaryKeyForSync()V

    .line 276
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldExists(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p0}, Lio/realm/MutableRealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 284
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 285
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->getFieldType(Ljava/lang/String;)Lio/realm/RealmFieldType;

    move-result-object v2

    .line 286
    invoke-direct {p0, p1, v2}, Lio/realm/MutableRealmObjectSchema;->checkForObjectStoreInvalidPrimaryKeyTypes(Ljava/lang/String;Lio/realm/RealmFieldType;)V

    .line 287
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 289
    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->addSearchIndex(J)V

    .line 291
    :cond_0
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p0}, Lio/realm/MutableRealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsObjectStore;->setPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 280
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Field \'%s\' has been already defined as primary key."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 281
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addRealmDictionaryField(Ljava/lang/String;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;
    .locals 3

    .line 184
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldNameIsAvailable(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_LINK_MAP:Lio/realm/RealmFieldType;

    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p2}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/Table;->addColumnDictionaryLink(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J

    return-object p0
.end method

.method public addRealmDictionaryField(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmObjectSchema;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation

    .line 165
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldNameIsAvailable(Ljava/lang/String;)V

    .line 168
    sget-object v0, Lio/realm/MutableRealmObjectSchema;->SUPPORTED_DICTIONARY_SIMPLE_FIELDS:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema$FieldMetaData;

    if-nez v0, :cond_2

    .line 170
    const-class v0, Lio/realm/RealmObjectSchema;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lio/realm/RealmModel;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "RealmDictionary does not support dictionaries with this type: %s(%s)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Use \'addRealmDictionaryField(String name, RealmObjectSchema schema)\' instead to add dictionaries that link to other RealmObjects: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 178
    :cond_2
    iget-object p2, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    iget-object v1, v0, Lio/realm/RealmObjectSchema$FieldMetaData;->collectionType:Lio/realm/RealmFieldType;

    iget-boolean v0, v0, Lio/realm/RealmObjectSchema$FieldMetaData;->defaultNullable:Z

    invoke-virtual {p2, v1, p1, v0}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    return-object p0
.end method

.method public addRealmListField(Ljava/lang/String;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;
    .locals 3

    .line 138
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldNameIsAvailable(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p2}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/Table;->addColumnLink(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J

    return-object p0
.end method

.method public addRealmListField(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmObjectSchema;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation

    .line 146
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldNameIsAvailable(Ljava/lang/String;)V

    .line 149
    sget-object v0, Lio/realm/MutableRealmObjectSchema;->SUPPORTED_LIST_SIMPLE_FIELDS:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema$FieldMetaData;

    if-nez v0, :cond_2

    .line 151
    const-class v0, Lio/realm/RealmObjectSchema;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lio/realm/RealmModel;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "RealmList does not support lists with this type: %s(%s)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Use \'addRealmListField(String name, RealmObjectSchema schema)\' instead to add lists that link to other RealmObjects: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 159
    :cond_2
    iget-object p2, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    iget-object v1, v0, Lio/realm/RealmObjectSchema$FieldMetaData;->collectionType:Lio/realm/RealmFieldType;

    iget-boolean v0, v0, Lio/realm/RealmObjectSchema$FieldMetaData;->defaultNullable:Z

    invoke-virtual {p2, v1, p1, v0}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    return-object p0
.end method

.method public addRealmObjectField(Ljava/lang/String;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;
    .locals 3

    .line 129
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldNameIsAvailable(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 132
    invoke-virtual {p2}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object p2

    .line 131
    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/Table;->addColumnLink(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J

    return-object p0
.end method

.method public addRealmSetField(Ljava/lang/String;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;
    .locals 3

    .line 192
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldNameIsAvailable(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    sget-object v1, Lio/realm/RealmFieldType;->LINK_SET:Lio/realm/RealmFieldType;

    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p2}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/Table;->addColumnSetLink(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J

    return-object p0
.end method

.method public addRealmSetField(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmObjectSchema;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation

    .line 200
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldNameIsAvailable(Ljava/lang/String;)V

    .line 203
    sget-object v0, Lio/realm/MutableRealmObjectSchema;->SUPPORTED_SET_SIMPLE_FIELDS:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema$FieldMetaData;

    if-nez v0, :cond_2

    .line 205
    const-class v0, Lio/realm/RealmObjectSchema;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lio/realm/RealmModel;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "RealmSet does not support sets with this type: %s(%s)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Use \'addRealmSetField(String name, RealmObjectSchema schema)\' instead to add sets that link to other RealmObjects: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 213
    :cond_2
    iget-object p2, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    iget-object v1, v0, Lio/realm/RealmObjectSchema$FieldMetaData;->collectionType:Lio/realm/RealmFieldType;

    iget-boolean v0, v0, Lio/realm/RealmObjectSchema$FieldMetaData;->defaultNullable:Z

    invoke-virtual {p2, v1, p1, v0}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    return-object p0
.end method

.method getPropertyClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 377
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/Table;->getLinkTarget(J)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {v0}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 379
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Property \'%s\' not found."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 4

    .line 219
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkNotInSync()V

    .line 220
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->hasField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 225
    invoke-virtual {p0}, Lio/realm/MutableRealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 226
    iget-object v3, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v3, v3, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v3, v2}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    iget-object v3, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v3, v3, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v3, v2, p1}, Lio/realm/internal/OsObjectStore;->setPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    iget-object p1, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->removeColumn(J)V

    return-object p0

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " does not exist."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIndex(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 3

    .line 262
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkNotInSync()V

    .line 263
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldExists(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 266
    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    iget-object p1, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->removeSearchIndex(J)V

    return-object p0

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field is not indexed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePrimaryKey()Lio/realm/RealmObjectSchema;
    .locals 3

    .line 297
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkNotInSync()V

    .line 298
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p0}, Lio/realm/MutableRealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v1, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v1, v0}, Lio/realm/internal/Table;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 303
    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->removeSearchIndex(J)V

    .line 306
    :cond_0
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p0}, Lio/realm/MutableRealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/realm/internal/OsObjectStore;->setPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 300
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/realm/MutableRealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t have a primary key."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public renameField(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 2

    .line 235
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkNotInSync()V

    .line 236
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldExists(Ljava/lang/String;)V

    .line 238
    invoke-static {p2}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0, p2}, Lio/realm/MutableRealmObjectSchema;->checkFieldNameIsAvailable(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 241
    iget-object p1, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1, p2}, Lio/realm/internal/Table;->renameColumn(JLjava/lang/String;)V

    return-object p0
.end method

.method public setClassName(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 6

    .line 47
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkNotInSync()V

    .line 48
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkEmpty(Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lio/realm/internal/Table;->CLASS_NAME_MAX_LENGTH:I

    if-gt v1, v2, :cond_3

    .line 56
    iget-object v1, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v1, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1, v0}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 61
    iget-object v1, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v2}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 63
    iget-object v3, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v3, v3, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v3, v2}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 65
    iget-object v4, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v4, v4, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Lio/realm/internal/OsObjectStore;->setPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2, v1, v0}, Lio/realm/internal/OsSharedRealm;->renameTable(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    .line 70
    :try_start_0
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v0, p1, v3}, Lio/realm/internal/OsObjectStore;->setPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lio/realm/internal/OsSharedRealm;->renameTable(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    throw p1

    :cond_1
    :goto_0
    return-object p0

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class already exists: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget v2, Lio/realm/internal/Table;->CLASS_NAME_MAX_LENGTH:I

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Class name is too long. Limit is %1$d characters: \'%2$s\' (%3$d)"

    .line 51
    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNullable(Ljava/lang/String;Z)Lio/realm/RealmObjectSchema;
    .locals 0

    xor-int/lit8 p2, p2, 0x1

    .line 348
    invoke-virtual {p0, p1, p2}, Lio/realm/MutableRealmObjectSchema;->setRequired(Ljava/lang/String;Z)Lio/realm/RealmObjectSchema;

    return-object p0
.end method

.method public setRequired(Ljava/lang/String;Z)Lio/realm/RealmObjectSchema;
    .locals 5

    .line 312
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0, p1}, Lio/realm/internal/Table;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 313
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->isRequired(Ljava/lang/String;)Z

    move-result v2

    .line 314
    iget-object v3, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v3

    .line 316
    sget-object v4, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-eq v3, v4, :cond_7

    .line 319
    sget-object v4, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-eq v3, v4, :cond_6

    if-eqz p2, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Field is already required: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    .line 326
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Field is already nullable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    .line 331
    :try_start_0
    iget-object p1, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->convertColumnToNotNullable(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 334
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "has null value(s) in property"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 335
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 337
    :cond_4
    throw p1

    .line 341
    :cond_5
    iget-object p1, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->convertColumnToNullable(J)V

    :goto_2
    return-object p0

    .line 320
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot modify the required state for RealmList references: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 317
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot modify the required state for RealmObject references: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public transform(Lio/realm/RealmObjectSchema$Function;)Lio/realm/RealmObjectSchema;
    .locals 7

    if-eqz p1, :cond_2

    .line 358
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v1, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v1}, Lio/realm/internal/Table;->where()Lio/realm/internal/TableQuery;

    move-result-object v1

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->createFromQuery(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;)Lio/realm/internal/OsResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->createSnapshot()Lio/realm/internal/OsResults;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lio/realm/internal/OsResults;->size()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 363
    invoke-virtual {v0}, Lio/realm/internal/OsResults;->size()J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 365
    new-instance v3, Lio/realm/DynamicRealmObject;

    iget-object v4, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    new-instance v5, Lio/realm/internal/CheckedRow;

    invoke-virtual {v0, v2}, Lio/realm/internal/OsResults;->getUncheckedRow(I)Lio/realm/internal/UncheckedRow;

    move-result-object v6

    invoke-direct {v5, v6}, Lio/realm/internal/CheckedRow;-><init>(Lio/realm/internal/UncheckedRow;)V

    invoke-direct {v3, v4, v5}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Row;)V

    .line 366
    invoke-virtual {v3}, Lio/realm/DynamicRealmObject;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 367
    invoke-interface {p1, v3}, Lio/realm/RealmObjectSchema$Function;->apply(Lio/realm/DynamicRealmObject;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Too many results to iterate: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object p0
.end method
