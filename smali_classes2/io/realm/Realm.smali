.class public Lio/realm/Realm;
.super Lio/realm/BaseRealm;
.source "Realm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/Realm$Callback;,
        Lio/realm/Realm$Transaction;
    }
.end annotation


# static fields
.field public static final DEFAULT_REALM_NAME:Ljava/lang/String; = "default.realm"

.field public static final ENCRYPTION_KEY_LENGTH:I = 0x40

.field private static final NULL_CONFIG_MSG:Ljava/lang/String; = "A non-null RealmConfiguration must be provided"

.field private static defaultConfiguration:Lio/realm/RealmConfiguration;

.field private static final defaultConfigurationLock:Ljava/lang/Object;


# instance fields
.field private final schema:Lio/realm/RealmSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/realm/Realm;->defaultConfigurationLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lio/realm/RealmCache;Lio/realm/internal/OsSharedRealm$VersionID;)V
    .locals 3

    .line 161
    invoke-virtual {p1}, Lio/realm/RealmCache;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    invoke-static {v0}, Lio/realm/Realm;->createExpectedSchemaInfo(Lio/realm/internal/RealmProxyMediator;)Lio/realm/internal/OsSchemaInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lio/realm/BaseRealm;-><init>(Lio/realm/RealmCache;Lio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$VersionID;)V

    .line 162
    new-instance p1, Lio/realm/ImmutableRealmSchema;

    new-instance p2, Lio/realm/internal/ColumnIndices;

    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    .line 163
    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    iget-object v1, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getSchemaInfo()Lio/realm/internal/OsSchemaInfo;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lio/realm/internal/ColumnIndices;-><init>(Lio/realm/internal/RealmProxyMediator;Lio/realm/internal/OsSchemaInfo;)V

    invoke-direct {p1, p0, p2}, Lio/realm/ImmutableRealmSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/ColumnIndices;)V

    iput-object p1, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    .line 168
    iget-object p1, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->isReadOnly()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 169
    iget-object p1, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Lio/realm/internal/RealmProxyMediator;->getModelClasses()Ljava/util/Set;

    move-result-object p2

    .line 171
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 172
    invoke-virtual {p1, v0}, Lio/realm/internal/RealmProxyMediator;->getSimpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1, v0}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->close()V

    .line 175
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    iget-object p2, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {p2}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 177
    invoke-static {v0}, Lio/realm/internal/Table;->getClassNameForTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Cannot open the read only Realm. \'%s\' is missing."

    .line 176
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private constructor <init>(Lio/realm/internal/OsSharedRealm;)V
    .locals 3

    .line 184
    invoke-direct {p0, p1}, Lio/realm/BaseRealm;-><init>(Lio/realm/internal/OsSharedRealm;)V

    .line 185
    new-instance v0, Lio/realm/ImmutableRealmSchema;

    new-instance v1, Lio/realm/internal/ColumnIndices;

    iget-object v2, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    .line 186
    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getSchemaInfo()Lio/realm/internal/OsSchemaInfo;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lio/realm/internal/ColumnIndices;-><init>(Lio/realm/internal/RealmProxyMediator;Lio/realm/internal/OsSchemaInfo;)V

    invoke-direct {v0, p0, v1}, Lio/realm/ImmutableRealmSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/ColumnIndices;)V

    iput-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    return-void
.end method

.method private static checkFilesDirAvailable(Landroid/content/Context;)V
    .locals 6

    .line 383
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 392
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 402
    fill-array-data v0, :array_0

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    .line 406
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x4

    .line 407
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget-wide v4, v0, v4

    .line 408
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    add-long/2addr v1, v4

    const-wide/16 v4, 0xc8

    cmp-long v4, v1, v4

    if-lez v4, :cond_3

    .line 417
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 418
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Context.getFilesDir() returns "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " which is not an existing directory. See https://issuetracker.google.com/issues/36918154"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 8
        0x1
        0x2
        0x5
        0xa
        0x10
    .end array-data
.end method

.method private checkHasPrimaryKey(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 1871
    invoke-virtual {p0, p1}, Lio/realm/Realm;->hasPrimaryKey(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1872
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A RealmObject with no @PrimaryKey cannot be updated: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkMaxDepth(I)V
    .locals 3

    if-ltz p1, :cond_0

    return-void

    .line 1883
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxDepth must be > 0. It was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNotNullObject(Lio/realm/RealmModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-void

    .line 1866
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null objects cannot be copied into Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkValidObjectForDetach(Lio/realm/RealmModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1892
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1895
    instance-of p1, p1, Lio/realm/DynamicRealmObject;

    if-nez p1, :cond_0

    return-void

    .line 1896
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DynamicRealmObject cannot be copied from Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1893
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only valid managed objects can be copied from Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1890
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null objects cannot be copied from Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static compactRealm(Lio/realm/RealmConfiguration;)Z
    .locals 0

    .line 1956
    invoke-static {p0}, Lio/realm/BaseRealm;->compactRealm(Lio/realm/RealmConfiguration;)Z

    move-result p0

    return p0
.end method

.method private copyOrUpdate(Lio/realm/RealmModel;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/RealmModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)TE;"
        }
    .end annotation

    .line 1835
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 1836
    invoke-virtual {p0}, Lio/realm/Realm;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1840
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lio/realm/internal/Util;->getOriginalModelClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/internal/RealmProxyMediator;->isEmbedded(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1844
    :try_start_0
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/RealmProxyMediator;->copyOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/RealmModel;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1850
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Attempting to create an object of type"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1851
    new-instance p2, Lio/realm/exceptions/RealmPrimaryKeyConstraintException;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/realm/exceptions/RealmPrimaryKeyConstraintException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1853
    :cond_0
    throw p1

    .line 1841
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Embedded objects cannot be copied into Realm by themselves. They need to be attached to a parent object"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1837
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "`copyOrUpdate` can only be called inside a write transaction."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createDetachedCopy(Lio/realm/RealmModel;ILjava/util/Map;)Lio/realm/RealmModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;I",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)TE;"
        }
    .end annotation

    .line 1859
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 1860
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/realm/internal/RealmProxyMediator;->createDetachedCopy(Lio/realm/RealmModel;ILjava/util/Map;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method private static createExpectedSchemaInfo(Lio/realm/internal/RealmProxyMediator;)Lio/realm/internal/OsSchemaInfo;
    .locals 1

    .line 190
    new-instance v0, Lio/realm/internal/OsSchemaInfo;

    invoke-virtual {p0}, Lio/realm/internal/RealmProxyMediator;->getExpectedObjectSchemaInfoMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/realm/internal/OsSchemaInfo;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static createInstance(Lio/realm/RealmCache;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/Realm;
    .locals 1

    .line 535
    new-instance v0, Lio/realm/Realm;

    invoke-direct {v0, p0, p1}, Lio/realm/Realm;-><init>(Lio/realm/RealmCache;Lio/realm/internal/OsSharedRealm$VersionID;)V

    return-object v0
.end method

.method static createInstance(Lio/realm/internal/OsSharedRealm;)Lio/realm/Realm;
    .locals 1

    .line 543
    new-instance v0, Lio/realm/Realm;

    invoke-direct {v0, p0}, Lio/realm/Realm;-><init>(Lio/realm/internal/OsSharedRealm;)V

    return-object v0
.end method

.method public static deleteRealm(Lio/realm/RealmConfiguration;)Z
    .locals 0

    .line 1940
    invoke-static {p0}, Lio/realm/BaseRealm;->deleteRealm(Lio/realm/RealmConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2038
    sget-object v0, Lio/realm/Realm;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDefaultConfiguration()Lio/realm/RealmConfiguration;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 513
    sget-object v0, Lio/realm/Realm;->defaultConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    :try_start_0
    sget-object v1, Lio/realm/Realm;->defaultConfiguration:Lio/realm/RealmConfiguration;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 515
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getDefaultInstance()Lio/realm/Realm;
    .locals 2

    .line 435
    invoke-static {}, Lio/realm/Realm;->getDefaultConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    .line 437
    sget-object v0, Lio/realm/BaseRealm;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call `Realm.init(Context)` before calling this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Set default configuration by using `Realm.setDefaultConfiguration(RealmConfiguration)`."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_1
    const-class v1, Lio/realm/Realm;

    invoke-static {v0, v1}, Lio/realm/RealmCache;->createRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;)Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    return-object v0
.end method

.method public static getDefaultModule()Ljava/lang/Object;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-string v0, "Could not create an instance of io.realm.DefaultRealmModule"

    const-string v1, "io.realm.DefaultRealmModule"

    .line 1985
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1986
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v3, 0x1

    .line 1987
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    .line 1988
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 1996
    new-instance v2, Lio/realm/exceptions/RealmException;

    invoke-direct {v2, v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 1994
    new-instance v2, Lio/realm/exceptions/RealmException;

    invoke-direct {v2, v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    .line 1992
    new-instance v2, Lio/realm/exceptions/RealmException;

    invoke-direct {v2, v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFullStringScanner(Ljava/io/InputStream;)Ljava/util/Scanner;
    .locals 2

    .line 1052
    new-instance v0, Ljava/util/Scanner;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string p1, "\\A"

    invoke-virtual {v0, p1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object p1

    return-object p1
.end method

.method public static getGlobalInstanceCount(Lio/realm/RealmConfiguration;)I
    .locals 2

    .line 2008
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2009
    new-instance v1, Lio/realm/Realm$2;

    invoke-direct {v1, v0}, Lio/realm/Realm$2;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-static {p0, v1}, Lio/realm/RealmCache;->invokeWithGlobalRefCount(Lio/realm/RealmConfiguration;Lio/realm/RealmCache$Callback;)V

    .line 2015
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public static getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;
    .locals 1

    if-eqz p0, :cond_0

    .line 464
    const-class v0, Lio/realm/Realm;

    invoke-static {p0, v0}, Lio/realm/RealmCache;->createRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;)Lio/realm/BaseRealm;

    move-result-object p0

    check-cast p0, Lio/realm/Realm;

    return-object p0

    .line 462
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-null RealmConfiguration must be provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstanceAsync(Lio/realm/RealmConfiguration;Lio/realm/Realm$Callback;)Lio/realm/RealmAsyncTask;
    .locals 1

    if-eqz p0, :cond_0

    .line 486
    const-class v0, Lio/realm/Realm;

    invoke-static {p0, p1, v0}, Lio/realm/RealmCache;->createRealmOrGetFromCacheAsync(Lio/realm/RealmConfiguration;Lio/realm/BaseRealm$InstanceCallback;Ljava/lang/Class;)Lio/realm/RealmAsyncTask;

    move-result-object p0

    return-object p0

    .line 484
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A non-null RealmConfiguration must be provided"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLocalInstanceCount(Lio/realm/RealmConfiguration;)I
    .locals 0

    .line 2026
    invoke-static {p0}, Lio/realm/RealmCache;->getLocalThreadCount(Lio/realm/RealmConfiguration;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lio/realm/Realm;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    .line 263
    invoke-static {p0, v1}, Lio/realm/Realm;->initializeRealm(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static initializeRealm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 336
    sget-object v0, Lio/realm/BaseRealm;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    .line 341
    invoke-static {p0}, Lio/realm/Realm;->checkFilesDirAvailable(Landroid/content/Context;)V

    .line 344
    invoke-static {p0}, Lio/realm/Realm;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    invoke-static {p0}, Lio/realm/internal/RealmCore;->loadLibrary(Landroid/content/Context;)V

    .line 349
    new-instance v0, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v0, p0}, Lio/realm/RealmConfiguration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-static {v0}, Lio/realm/Realm;->setDefaultConfiguration(Lio/realm/RealmConfiguration;)V

    .line 351
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    move-result-object v0

    new-instance v1, Lio/realm/Realm$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/realm/Realm$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lio/realm/Realm$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lio/realm/Realm$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, p0, p1, v1, v2}, Lio/realm/internal/ObjectServerFacade;->initialize(Landroid/content/Context;Ljava/lang/String;Lio/realm/internal/ObjectServerFacade$RealmCacheAccessor;Lio/realm/internal/ObjectServerFacade$RealmInstanceFactory;)V

    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lio/realm/BaseRealm;->applicationContext:Landroid/content/Context;

    goto :goto_0

    .line 364
    :cond_0
    sput-object p0, Lio/realm/BaseRealm;->applicationContext:Landroid/content/Context;

    .line 366
    :goto_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v0, ".realm.temp"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lio/realm/internal/OsSharedRealm;->initialize(Ljava/io/File;)V

    goto :goto_1

    .line 345
    :cond_1
    new-instance p0, Lio/realm/exceptions/RealmError;

    const-string p1, "Could not initialize Realm: Instant apps are not currently supported."

    invoke-direct {p0, p1}, Lio/realm/exceptions/RealmError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 339
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-null context required."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method private static isInstantApp(Landroid/content/Context;)Z
    .locals 5

    .line 317
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.android.gms.instantapps.InstantApps"

    .line 321
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPackageManagerCompat"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 322
    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 323
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "com.google.android.gms.instantapps.PackageManagerCompat"

    .line 325
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isInstantApp"

    new-array v3, v0, [Ljava/lang/Class;

    .line 326
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 327
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method static synthetic lambda$initializeRealm$0(Lio/realm/RealmConfiguration;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/Realm;
    .locals 1

    .line 354
    const-class v0, Lio/realm/Realm;

    invoke-static {p0, v0, p1}, Lio/realm/RealmCache;->createRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/BaseRealm;

    move-result-object p0

    check-cast p0, Lio/realm/Realm;

    return-object p0
.end method

.method public static migrateRealm(Lio/realm/RealmConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1908
    invoke-static {p0, v0}, Lio/realm/Realm;->migrateRealm(Lio/realm/RealmConfiguration;Lio/realm/RealmMigration;)V

    return-void
.end method

.method public static migrateRealm(Lio/realm/RealmConfiguration;Lio/realm/RealmMigration;)V
    .locals 0
    .param p1    # Lio/realm/RealmMigration;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1921
    invoke-static {p0, p1}, Lio/realm/BaseRealm;->migrateRealm(Lio/realm/RealmConfiguration;Lio/realm/RealmMigration;)V

    return-void
.end method

.method public static removeDefaultConfiguration()V
    .locals 2

    .line 523
    sget-object v0, Lio/realm/Realm;->defaultConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 524
    :try_start_0
    sput-object v1, Lio/realm/Realm;->defaultConfiguration:Lio/realm/RealmConfiguration;

    .line 525
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setDefaultConfiguration(Lio/realm/RealmConfiguration;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 501
    sget-object v0, Lio/realm/Realm;->defaultConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    :try_start_0
    sput-object p0, Lio/realm/Realm;->defaultConfiguration:Lio/realm/RealmConfiguration;

    .line 503
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 499
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-null RealmConfiguration must be provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addChangeListener(Lio/realm/RealmChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/Realm;",
            ">;)V"
        }
    .end annotation

    .line 1584
    invoke-virtual {p0, p1}, Lio/realm/Realm;->addListener(Lio/realm/RealmChangeListener;)V

    return-void
.end method

.method public asFlowable()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lio/realm/Realm;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/realm/rx/RxObservableFactory;->from(Lio/realm/Realm;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic beginTransaction()V
    .locals 0

    .line 138
    invoke-super {p0}, Lio/realm/BaseRealm;->beginTransaction()V

    return-void
.end method

.method public bridge synthetic cancelTransaction()V
    .locals 0

    .line 138
    invoke-super {p0}, Lio/realm/BaseRealm;->cancelTransaction()V

    return-void
.end method

.method public bridge synthetic close()V
    .locals 0

    .line 138
    invoke-super {p0}, Lio/realm/BaseRealm;->close()V

    return-void
.end method

.method public bridge synthetic commitTransaction()V
    .locals 0

    .line 138
    invoke-super {p0}, Lio/realm/BaseRealm;->commitTransaction()V

    return-void
.end method

.method public copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)TE;"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1524
    invoke-virtual {p0, p1, v0}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;I)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public copyFromRealm(Lio/realm/RealmModel;I)Lio/realm/RealmModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;I)TE;"
        }
    .end annotation

    .line 1550
    invoke-direct {p0, p2}, Lio/realm/Realm;->checkMaxDepth(I)V

    .line 1551
    invoke-direct {p0, p1}, Lio/realm/Realm;->checkValidObjectForDetach(Lio/realm/RealmModel;)V

    .line 1552
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/Realm;->createDetachedCopy(Lio/realm/RealmModel;ILjava/util/Map;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1458
    invoke-virtual {p0, p1, v0}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public copyFromRealm(Ljava/lang/Iterable;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;I)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1484
    invoke-direct {p0, p2}, Lio/realm/Realm;->checkMaxDepth(I)V

    if-nez p1, :cond_0

    .line 1487
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 1491
    :cond_0
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 1492
    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 1494
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1496
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1497
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmModel;

    .line 1498
    invoke-direct {p0, v2}, Lio/realm/Realm;->checkValidObjectForDetach(Lio/realm/RealmModel;)V

    .line 1499
    invoke-direct {p0, v2, p2, v1}, Lio/realm/Realm;->createDetachedCopy(Lio/realm/RealmModel;ILjava/util/Map;)Lio/realm/RealmModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public varargs copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;[",
            "Lio/realm/ImportFlag;",
            ")TE;"
        }
    .end annotation

    .line 1205
    invoke-direct {p0, p1}, Lio/realm/Realm;->checkNotNullObject(Lio/realm/RealmModel;)V

    .line 1207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Lio/realm/internal/Util;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lio/realm/Realm;->copyOrUpdate(Lio/realm/RealmModel;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public varargs copyToRealm(Ljava/lang/Iterable;[Lio/realm/ImportFlag;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;[",
            "Lio/realm/ImportFlag;",
            ")",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1248
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 1251
    :cond_0
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 1252
    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 1254
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1256
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1257
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmModel;

    .line 1258
    invoke-direct {p0, v2}, Lio/realm/Realm;->checkNotNullObject(Lio/realm/RealmModel;)V

    const/4 v3, 0x0

    .line 1259
    invoke-static {p2}, Lio/realm/internal/Util;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lio/realm/Realm;->copyOrUpdate(Lio/realm/RealmModel;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/RealmModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public varargs copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;[",
            "Lio/realm/ImportFlag;",
            ")TE;"
        }
    .end annotation

    .line 1226
    invoke-direct {p0, p1}, Lio/realm/Realm;->checkNotNullObject(Lio/realm/RealmModel;)V

    .line 1227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/Realm;->checkHasPrimaryKey(Ljava/lang/Class;)V

    .line 1228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Lio/realm/internal/Util;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0, p2}, Lio/realm/Realm;->copyOrUpdate(Lio/realm/RealmModel;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public varargs copyToRealmOrUpdate(Ljava/lang/Iterable;[Lio/realm/ImportFlag;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;[",
            "Lio/realm/ImportFlag;",
            ")",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1420
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 1424
    :cond_0
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 1425
    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 1427
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1429
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1430
    invoke-static {p2}, Lio/realm/internal/Util;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    .line 1431
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmModel;

    .line 1432
    invoke-direct {p0, v2}, Lio/realm/Realm;->checkNotNullObject(Lio/realm/RealmModel;)V

    const/4 v3, 0x1

    .line 1433
    invoke-direct {p0, v2, v3, v1, p2}, Lio/realm/Realm;->copyOrUpdate(Lio/realm/RealmModel;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/RealmModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public createAllFromJson(Ljava/lang/Class;Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 724
    :cond_0
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 726
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 728
    :try_start_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V

    .line 729
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 730
    iget-object p2, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {p2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object p2

    invoke-virtual {p2, p1, p0, v0}, Lio/realm/internal/RealmProxyMediator;->createUsingJsonStream(Ljava/lang/Class;Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/RealmModel;

    goto :goto_0

    .line 732
    :cond_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->endArray()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 735
    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public createAllFromJson(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 642
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 648
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    invoke-virtual {p0, p1, v0}, Lio/realm/Realm;->createAllFromJson(Ljava/lang/Class;Lorg/json/JSONArray;)V

    return-void

    :catch_0
    move-exception p1

    .line 650
    new-instance p2, Lio/realm/exceptions/RealmException;

    const-string v0, "Could not create JSON array from string"

    invoke-direct {p2, v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public createAllFromJson(Ljava/lang/Class;Lorg/json/JSONArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 571
    :cond_0
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    const/4 v0, 0x0

    move v1, v0

    .line 573
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 575
    :try_start_0
    iget-object v2, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, p1, p0, v3, v0}, Lio/realm/internal/RealmProxyMediator;->createOrUpdateUsingJsonObject(Ljava/lang/Class;Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/RealmModel;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 577
    new-instance p2, Lio/realm/exceptions/RealmException;

    const-string v0, "Could not map JSON"

    invoke-direct {p2, v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_1
    return-void
.end method

.method public createEmbeddedObject(Ljava/lang/Class;Lio/realm/RealmModel;Ljava/lang/String;)Lio/realm/RealmModel;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/RealmModel;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 1142
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    const-string v1, "parentObject"

    .line 1143
    invoke-static {p2, v1}, Lio/realm/internal/Util;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "parentProperty"

    .line 1144
    invoke-static {p3, v1}, Lio/realm/internal/Util;->checkEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    invoke-static {p2}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1149
    iget-object v1, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v1, p1}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1150
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1151
    iget-object v4, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v4, v2}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v5

    .line 1153
    move-object v2, p2

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    iget-object v4, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    move-object v0, p0

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/realm/Realm;->getEmbeddedObjectRow(Ljava/lang/String;Lio/realm/internal/RealmObjectProxy;Ljava/lang/String;Lio/realm/RealmSchema;Lio/realm/RealmObjectSchema;)Lio/realm/internal/Row;

    move-result-object v3

    .line 1156
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    iget-object v1, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    .line 1159
    invoke-virtual {v1, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x1

    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v1, p1

    move-object v2, p0

    move-object v6, v7

    .line 1156
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/RealmProxyMediator;->newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0

    .line 1146
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only valid, managed objects can be a parent to an embedded object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createObject(Ljava/lang/Class;)Lio/realm/RealmModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1068
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 1069
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    .line 1070
    invoke-virtual {v0, p1}, Lio/realm/internal/RealmProxyMediator;->isEmbedded(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1073
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1

    .line 1071
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "This class is marked embedded. Use `createEmbeddedObject(class, parent, property)` instead:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lio/realm/internal/RealmProxyMediator;->getSimpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createObject(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/RealmModel;
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 1119
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 1120
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    .line 1121
    invoke-virtual {v0, p1}, Lio/realm/internal/RealmProxyMediator;->isEmbedded(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1124
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1

    .line 1122
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This class is marked embedded. Use `createEmbeddedObject(class, parent, property)` instead:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lio/realm/internal/RealmProxyMediator;->getSimpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public createObjectFromJson(Ljava/lang/Class;Ljava/io/InputStream;)Lio/realm/RealmModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/io/InputStream;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 970
    :cond_0
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 973
    iget-object v1, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v2, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    .line 974
    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/realm/internal/RealmProxyMediator;->getSimpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 973
    invoke-static {v1, v2}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 979
    :try_start_0
    invoke-direct {p0, p2}, Lio/realm/Realm;->getFullStringScanner(Ljava/io/InputStream;)Ljava/util/Scanner;

    move-result-object v0

    .line 980
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 981
    iget-object v1, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p0, p2, v2}, Lio/realm/internal/RealmProxyMediator;->createOrUpdateUsingJsonObject(Ljava/lang/Class;Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/RealmModel;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 987
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 984
    :try_start_1
    new-instance p2, Lio/realm/exceptions/RealmException;

    const-string v1, "Failed to read JSON"

    invoke-direct {p2, v1, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 987
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 989
    :cond_1
    throw p1

    .line 991
    :cond_2
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 993
    :try_start_2
    iget-object p2, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {p2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object p2

    invoke-virtual {p2, p1, p0, v0}, Lio/realm/internal/RealmProxyMediator;->createUsingJsonStream(Ljava/lang/Class;Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/RealmModel;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 995
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    :cond_3
    :goto_1
    return-object p1

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 996
    throw p1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public createObjectFromJson(Ljava/lang/Class;Ljava/lang/String;)Lio/realm/RealmModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 885
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 891
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    invoke-virtual {p0, p1, v0}, Lio/realm/Realm;->createObjectFromJson(Ljava/lang/Class;Lorg/json/JSONObject;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 893
    new-instance p2, Lio/realm/exceptions/RealmException;

    const-string v0, "Could not create Json object from string"

    invoke-direct {p2, v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public createObjectFromJson(Ljava/lang/Class;Lorg/json/JSONObject;)Lio/realm/RealmModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lorg/json/JSONObject;",
            ")TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 816
    :cond_0
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 819
    :try_start_0
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, p2, v1}, Lio/realm/internal/RealmProxyMediator;->createOrUpdateUsingJsonObject(Ljava/lang/Class;Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/RealmModel;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 821
    new-instance p2, Lio/realm/exceptions/RealmException;

    const-string v0, "Could not map JSON"

    invoke-direct {p2, v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;
    .locals 9
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .line 1182
    iget-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 1184
    iget-object v1, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    .line 1185
    invoke-static {v0, p2}, Lio/realm/internal/OsObject;->createWithPrimaryKey(Lio/realm/internal/Table;Ljava/lang/Object;)Lio/realm/internal/UncheckedRow;

    move-result-object v5

    iget-object p2, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    .line 1186
    invoke-virtual {p2, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v6

    move-object v3, p1

    move-object v4, p0

    move v7, p3

    move-object v8, p4

    .line 1184
    invoke-virtual/range {v2 .. v8}, Lio/realm/internal/RealmProxyMediator;->newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .line 1090
    iget-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 1092
    iget-object v1, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v2, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    .line 1093
    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/realm/internal/RealmProxyMediator;->getSimpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 1092
    invoke-static {v1, v2}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1097
    iget-object v1, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    .line 1098
    invoke-static {v0}, Lio/realm/internal/OsObject;->create(Lio/realm/internal/Table;)Lio/realm/internal/UncheckedRow;

    move-result-object v5

    iget-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    .line 1099
    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v6

    move-object v3, p1

    move-object v4, p0

    move v7, p2

    move-object v8, p3

    .line 1097
    invoke-virtual/range {v2 .. v8}, Lio/realm/internal/RealmProxyMediator;->newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1

    .line 1094
    :cond_0
    new-instance p1, Lio/realm/exceptions/RealmException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1095
    invoke-virtual {v0}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "\'%s\' has a primary key, use \'createObject(Class<E>, Object)\' instead."

    .line 1094
    invoke-static {p2, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createOrUpdateAllFromJson(Ljava/lang/Class;Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 768
    :cond_0
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 769
    invoke-direct {p0, p1}, Lio/realm/Realm;->checkHasPrimaryKey(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 775
    :try_start_0
    invoke-direct {p0, p2}, Lio/realm/Realm;->getFullStringScanner(Ljava/io/InputStream;)Ljava/util/Scanner;

    move-result-object v0

    .line 776
    new-instance p2, Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 777
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 778
    iget-object v2, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p0, v3, v4}, Lio/realm/internal/RealmProxyMediator;->createOrUpdateUsingJsonObject(Ljava/lang/Class;Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/RealmModel;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 784
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 781
    :try_start_1
    new-instance p2, Lio/realm/exceptions/RealmException;

    const-string v1, "Failed to read JSON"

    invoke-direct {p2, v1, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_3

    .line 784
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 786
    :cond_3
    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public createOrUpdateAllFromJson(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 681
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 684
    :cond_0
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 685
    invoke-direct {p0, p1}, Lio/realm/Realm;->checkHasPrimaryKey(Ljava/lang/Class;)V

    .line 689
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    invoke-virtual {p0, p1, v0}, Lio/realm/Realm;->createOrUpdateAllFromJson(Ljava/lang/Class;Lorg/json/JSONArray;)V

    return-void

    :catch_0
    move-exception p1

    .line 691
    new-instance p2, Lio/realm/exceptions/RealmException;

    const-string v0, "Could not create JSON array from string"

    invoke-direct {p2, v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public createOrUpdateAllFromJson(Ljava/lang/Class;Lorg/json/JSONArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 610
    :cond_0
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 611
    invoke-direct {p0, p1}, Lio/realm/Realm;->checkHasPrimaryKey(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 612
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 614
    :try_start_0
    iget-object v1, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p0, v2, v3}, Lio/realm/internal/RealmProxyMediator;->createOrUpdateUsingJsonObject(Ljava/lang/Class;Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/RealmModel;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 616
    new-instance p2, Lio/realm/exceptions/RealmException;

    const-string v0, "Could not map JSON"

    invoke-direct {p2, v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_1
    return-void
.end method

.method public createOrUpdateObjectFromJson(Ljava/lang/Class;Ljava/io/InputStream;)Lio/realm/RealmModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/io/InputStream;",
            ")TE;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 1032
    :cond_0
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 1033
    invoke-direct {p0, p1}, Lio/realm/Realm;->checkHasPrimaryKey(Ljava/lang/Class;)V

    .line 1039
    :try_start_0
    invoke-direct {p0, p2}, Lio/realm/Realm;->getFullStringScanner(Ljava/io/InputStream;)Ljava/util/Scanner;

    move-result-object v0

    .line 1040
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p0, p1, p2}, Lio/realm/Realm;->createOrUpdateObjectFromJson(Ljava/lang/Class;Lorg/json/JSONObject;)Lio/realm/RealmModel;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1046
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1043
    :try_start_1
    new-instance p2, Lio/realm/exceptions/RealmException;

    const-string v1, "Failed to read JSON"

    invoke-direct {p2, v1, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    .line 1046
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 1048
    :cond_2
    throw p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public createOrUpdateObjectFromJson(Ljava/lang/Class;Ljava/lang/String;)Lio/realm/RealmModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 925
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 928
    :cond_0
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 929
    invoke-direct {p0, p1}, Lio/realm/Realm;->checkHasPrimaryKey(Ljava/lang/Class;)V

    .line 933
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    invoke-virtual {p0, p1, v0}, Lio/realm/Realm;->createOrUpdateObjectFromJson(Ljava/lang/Class;Lorg/json/JSONObject;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 935
    new-instance p2, Lio/realm/exceptions/RealmException;

    const-string v0, "Could not create Json object from string"

    invoke-direct {p2, v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public createOrUpdateObjectFromJson(Ljava/lang/Class;Lorg/json/JSONObject;)Lio/realm/RealmModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lorg/json/JSONObject;",
            ")TE;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 853
    :cond_0
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 854
    invoke-direct {p0, p1}, Lio/realm/Realm;->checkHasPrimaryKey(Ljava/lang/Class;)V

    .line 856
    :try_start_0
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, p2, v1}, Lio/realm/internal/RealmProxyMediator;->createOrUpdateUsingJsonObject(Ljava/lang/Class;Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/RealmModel;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 858
    new-instance p2, Lio/realm/exceptions/RealmException;

    const-string v0, "Could not map JSON"

    invoke-direct {p2, v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public delete(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 1828
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 1829
    iget-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/internal/Table;->clear()V

    return-void
.end method

.method public bridge synthetic deleteAll()V
    .locals 0

    .line 138
    invoke-super {p0}, Lio/realm/BaseRealm;->deleteAll()V

    return-void
.end method

.method public executeTransaction(Lio/realm/Realm$Transaction;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1628
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 1629
    invoke-virtual {p0}, Lio/realm/Realm;->checkAllowWritesOnUiThread()V

    .line 1631
    invoke-virtual {p0}, Lio/realm/Realm;->beginTransaction()V

    .line 1633
    :try_start_0
    invoke-interface {p1, p0}, Lio/realm/Realm$Transaction;->execute(Lio/realm/Realm;)V

    .line 1634
    invoke-virtual {p0}, Lio/realm/Realm;->commitTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1636
    invoke-virtual {p0}, Lio/realm/Realm;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1637
    invoke-virtual {p0}, Lio/realm/Realm;->cancelTransaction()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not cancel transaction, not currently in a transaction."

    .line 1639
    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1641
    :goto_0
    throw p1

    .line 1626
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transaction should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public executeTransactionAsync(Lio/realm/Realm$Transaction;)Lio/realm/RealmAsyncTask;
    .locals 1

    const/4 v0, 0x0

    .line 1654
    invoke-virtual {p0, p1, v0, v0}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1690
    invoke-virtual {p0, p1, v0, p2}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    move-result-object p1

    return-object p1

    .line 1687
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "onError callback can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;)Lio/realm/RealmAsyncTask;
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1672
    invoke-virtual {p0, p1, p2, v0}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    move-result-object p1

    return-object p1

    .line 1669
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "onSuccess callback can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;
    .locals 10
    .param p2    # Lio/realm/Realm$Transaction$OnSuccess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/realm/Realm$Transaction$OnError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1706
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    if-eqz p1, :cond_3

    .line 1713
    invoke-virtual {p0}, Lio/realm/Realm;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1718
    iget-object v0, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    invoke-interface {v0}, Lio/realm/internal/Capabilities;->canDeliverNotification()Z

    move-result v5

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 1723
    :cond_0
    iget-object v0, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v1, "Callback cannot be delivered on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 1728
    :cond_1
    invoke-virtual {p0}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v3

    .line 1730
    iget-object v0, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v7, v0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    .line 1732
    sget-object v0, Lio/realm/Realm;->asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

    new-instance v9, Lio/realm/Realm$1;

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lio/realm/Realm$1;-><init>(Lio/realm/Realm;Lio/realm/RealmConfiguration;Lio/realm/Realm$Transaction;ZLio/realm/Realm$Transaction$OnSuccess;Lio/realm/internal/RealmNotifier;Lio/realm/Realm$Transaction$OnError;)V

    invoke-virtual {v0, v9}, Lio/realm/internal/async/RealmThreadPoolExecutor;->submitTransaction(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 1818
    new-instance p2, Lio/realm/internal/async/RealmAsyncTaskImpl;

    sget-object p3, Lio/realm/Realm;->asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

    invoke-direct {p2, p1, p3}, Lio/realm/internal/async/RealmAsyncTaskImpl;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-object p2

    .line 1714
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Write transactions on a frozen Realm is not allowed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1710
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transaction should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic freeze()Lio/realm/BaseRealm;
    .locals 1

    .line 138
    invoke-virtual {p0}, Lio/realm/Realm;->freeze()Lio/realm/Realm;

    move-result-object v0

    return-object v0
.end method

.method public freeze()Lio/realm/Realm;
    .locals 3

    .line 1964
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    iget-object v1, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$VersionID;

    move-result-object v1

    const-class v2, Lio/realm/Realm;

    invoke-static {v0, v2, v1}, Lio/realm/RealmCache;->createRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lio/realm/RealmConfiguration;
    .locals 1

    .line 138
    invoke-super {p0}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNumberOfActiveVersions()J
    .locals 2

    .line 138
    invoke-super {p0}, Lio/realm/BaseRealm;->getNumberOfActiveVersions()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getPath()Ljava/lang/String;
    .locals 1

    .line 138
    invoke-super {p0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchema()Lio/realm/RealmSchema;
    .locals 1

    .line 225
    iget-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    return-object v0
.end method

.method getTable(Ljava/lang/Class;)Lio/realm/internal/Table;
    .locals 1
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

    .line 1968
    iget-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getVersion()J
    .locals 2

    .line 138
    invoke-super {p0}, Lio/realm/BaseRealm;->getVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method hasPrimaryKey(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)Z"
        }
    .end annotation

    .line 1878
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/internal/RealmProxyMediator;->hasPrimaryKey(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public insert(Lio/realm/RealmModel;)V
    .locals 2

    .line 1324
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValidAndInTransaction()V

    if-eqz p1, :cond_0

    .line 1329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1330
    iget-object v1, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Lio/realm/internal/RealmProxyMediator;->insert(Lio/realm/Realm;Lio/realm/RealmModel;Ljava/util/Map;)J

    return-void

    .line 1327
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null object cannot be inserted into Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insert(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 1288
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValidAndInTransaction()V

    if-eqz p1, :cond_1

    .line 1293
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1296
    :cond_0
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/RealmProxyMediator;->insert(Lio/realm/Realm;Ljava/util/Collection;)V

    return-void

    .line 1291
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null objects cannot be inserted into Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertOrUpdate(Lio/realm/RealmModel;)V
    .locals 2

    .line 1394
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValidAndInTransaction()V

    if-eqz p1, :cond_0

    .line 1399
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1400
    iget-object v1, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Lio/realm/internal/RealmProxyMediator;->insertOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;Ljava/util/Map;)J

    return-void

    .line 1397
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null object cannot be inserted into Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertOrUpdate(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 1359
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValidAndInTransaction()V

    if-eqz p1, :cond_1

    .line 1364
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1367
    :cond_0
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/RealmProxyMediator;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Collection;)V

    return-void

    .line 1362
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null objects cannot be inserted into Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic isAutoRefresh()Z
    .locals 1

    .line 138
    invoke-super {p0}, Lio/realm/BaseRealm;->isAutoRefresh()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isClosed()Z
    .locals 1

    .line 138
    invoke-super {p0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 5

    .line 206
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 207
    iget-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0}, Lio/realm/RealmSchema;->getAll()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmObjectSchema;

    .line 208
    invoke-virtual {v1}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "__"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lio/realm/RealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic isFrozen()Z
    .locals 1

    .line 138
    invoke-super {p0}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInTransaction()Z
    .locals 1

    .line 138
    invoke-super {p0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic refresh()V
    .locals 0

    .line 138
    invoke-super {p0}, Lio/realm/BaseRealm;->refresh()V

    return-void
.end method

.method public removeAllChangeListeners()V
    .locals 0

    .line 1606
    invoke-virtual {p0}, Lio/realm/Realm;->removeAllListeners()V

    return-void
.end method

.method public removeChangeListener(Lio/realm/RealmChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/Realm;",
            ">;)V"
        }
    .end annotation

    .line 1596
    invoke-virtual {p0, p1}, Lio/realm/Realm;->removeListener(Lio/realm/RealmChangeListener;)V

    return-void
.end method

.method public bridge synthetic setAutoRefresh(Z)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lio/realm/BaseRealm;->setAutoRefresh(Z)V

    return-void
.end method

.method public bridge synthetic stopWaitForChange()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    invoke-super {p0}, Lio/realm/BaseRealm;->stopWaitForChange()V

    return-void
.end method

.method public bridge synthetic waitForChange()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    invoke-super {p0}, Lio/realm/BaseRealm;->waitForChange()Z

    move-result v0

    return v0
.end method

.method public where(Ljava/lang/Class;)Lio/realm/RealmQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1563
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 1564
    invoke-static {p0, p1}, Lio/realm/RealmQuery;->createQuery(Lio/realm/Realm;Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeCopyTo(Ljava/io/File;)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lio/realm/BaseRealm;->writeCopyTo(Ljava/io/File;)V

    return-void
.end method

.method public bridge synthetic writeEncryptedCopyTo(Ljava/io/File;[B)V
    .locals 0

    .line 138
    invoke-super {p0, p1, p2}, Lio/realm/BaseRealm;->writeEncryptedCopyTo(Ljava/io/File;[B)V

    return-void
.end method
