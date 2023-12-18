.class public final Lio/realm/internal/OsSharedRealm;
.super Ljava/lang/Object;
.source "OsSharedRealm.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lio/realm/internal/NativeObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;,
        Lio/realm/internal/OsSharedRealm$InitializationCallback;,
        Lio/realm/internal/OsSharedRealm$MigrationCallback;,
        Lio/realm/internal/OsSharedRealm$VersionID;
    }
.end annotation


# static fields
.field public static final FILE_EXCEPTION_INCOMPATIBLE_SYNC_FILE:B = 0x7t

.field public static final FILE_EXCEPTION_KIND_ACCESS_ERROR:B = 0x0t

.field public static final FILE_EXCEPTION_KIND_BAD_HISTORY:B = 0x1t

.field public static final FILE_EXCEPTION_KIND_EXISTS:B = 0x3t

.field public static final FILE_EXCEPTION_KIND_FORMAT_UPGRADE_REQUIRED:B = 0x6t

.field public static final FILE_EXCEPTION_KIND_INCOMPATIBLE_LOCK_FILE:B = 0x5t

.field public static final FILE_EXCEPTION_KIND_NOT_FOUND:B = 0x4t

.field public static final FILE_EXCEPTION_KIND_PERMISSION_DENIED:B = 0x2t

.field private static final nativeFinalizerPtr:J

.field private static final sharedRealmsUnderConstruction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/realm/internal/OsSharedRealm;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile temporaryDirectory:Ljava/io/File;


# instance fields
.field public final capabilities:Lio/realm/internal/Capabilities;

.field public final context:Lio/realm/internal/NativeContext;

.field final iterators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/realm/internal/OsResults$Iterator;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nativePtr:J

.field private final osRealmConfig:Lio/realm/internal/OsRealmConfig;

.field private final pendingRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/realm/internal/PendingRow;",
            ">;>;"
        }
    .end annotation
.end field

.field public final realmNotifier:Lio/realm/internal/RealmNotifier;

.field private final schemaInfo:Lio/realm/internal/OsSchemaInfo;

.field private final tempSharedRealmsForCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/realm/internal/OsSharedRealm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 145
    invoke-static {}, Lio/realm/internal/OsSharedRealm;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsSharedRealm;->nativeFinalizerPtr:J

    .line 160
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/realm/internal/OsSharedRealm;->sharedRealmsUnderConstruction:Ljava/util/List;

    return-void
.end method

.method constructor <init>(JLio/realm/internal/OsRealmConfig;)V
    .locals 2

    .line 207
    invoke-virtual {p3}, Lio/realm/internal/OsRealmConfig;->getContext()Lio/realm/internal/NativeContext;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/realm/internal/OsSharedRealm;-><init>(JLio/realm/internal/OsRealmConfig;Lio/realm/internal/NativeContext;)V

    .line 210
    sget-object p1, Lio/realm/internal/OsSharedRealm;->sharedRealmsUnderConstruction:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/OsSharedRealm;

    .line 211
    iget-object v0, p2, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    invoke-virtual {p3}, Lio/realm/internal/OsRealmConfig;->getContext()Lio/realm/internal/NativeContext;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 213
    iget-object p1, p2, Lio/realm/internal/OsSharedRealm;->tempSharedRealmsForCallback:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    return-void

    .line 218
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot find the parent \'OsSharedRealm\' which is under construction."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(JLio/realm/internal/OsRealmConfig;Lio/realm/internal/NativeContext;)V
    .locals 2

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->tempSharedRealmsForCallback:Ljava/util/List;

    .line 163
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    .line 228
    iput-wide p1, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    .line 229
    iput-object p3, p0, Lio/realm/internal/OsSharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    .line 230
    new-instance p3, Lio/realm/internal/OsSchemaInfo;

    invoke-static {p1, p2}, Lio/realm/internal/OsSharedRealm;->nativeGetSchemaInfo(J)J

    move-result-wide v0

    invoke-direct {p3, v0, v1, p0}, Lio/realm/internal/OsSchemaInfo;-><init>(JLio/realm/internal/OsSharedRealm;)V

    iput-object p3, p0, Lio/realm/internal/OsSharedRealm;->schemaInfo:Lio/realm/internal/OsSchemaInfo;

    .line 231
    iput-object p4, p0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    .line 232
    invoke-virtual {p4, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 234
    new-instance p3, Lio/realm/internal/android/AndroidCapabilities;

    invoke-direct {p3}, Lio/realm/internal/android/AndroidCapabilities;-><init>()V

    iput-object p3, p0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const/4 p3, 0x0

    .line 236
    iput-object p3, p0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    const/4 p3, 0x0

    .line 237
    invoke-static {p1, p2, p3}, Lio/realm/internal/OsSharedRealm;->nativeSetAutoRefresh(JZ)V

    return-void
.end method

.method private constructor <init>(Lio/realm/internal/OsRealmConfig;Lio/realm/internal/OsSharedRealm$VersionID;)V
    .locals 12

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->tempSharedRealmsForCallback:Ljava/util/List;

    .line 163
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    .line 168
    new-instance v1, Lio/realm/internal/android/AndroidCapabilities;

    invoke-direct {v1}, Lio/realm/internal/android/AndroidCapabilities;-><init>()V

    .line 169
    new-instance v9, Lio/realm/internal/android/AndroidRealmNotifier;

    invoke-direct {v9, p0, v1}, Lio/realm/internal/android/AndroidRealmNotifier;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Capabilities;)V

    .line 172
    invoke-virtual {p1}, Lio/realm/internal/OsRealmConfig;->getContext()Lio/realm/internal/NativeContext;

    move-result-object v10

    iput-object v10, p0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    .line 173
    sget-object v11, Lio/realm/internal/OsSharedRealm;->sharedRealmsUnderConstruction:Ljava/util/List;

    invoke-interface {v11, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :try_start_0
    invoke-virtual {p1}, Lio/realm/internal/OsRealmConfig;->getNativePtr()J

    move-result-wide v2

    iget-wide v4, p2, Lio/realm/internal/OsSharedRealm$VersionID;->version:J

    iget-wide v6, p2, Lio/realm/internal/OsSharedRealm$VersionID;->index:J

    move-object v8, v9

    invoke-static/range {v2 .. v8}, Lio/realm/internal/OsSharedRealm;->nativeGetSharedRealm(JJJLio/realm/internal/RealmNotifier;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 186
    invoke-interface {v11, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 188
    iput-object p1, p0, Lio/realm/internal/OsSharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    .line 189
    new-instance p1, Lio/realm/internal/OsSchemaInfo;

    invoke-static {v2, v3}, Lio/realm/internal/OsSharedRealm;->nativeGetSchemaInfo(J)J

    move-result-wide v4

    invoke-direct {p1, v4, v5, p0}, Lio/realm/internal/OsSchemaInfo;-><init>(JLio/realm/internal/OsSharedRealm;)V

    iput-object p1, p0, Lio/realm/internal/OsSharedRealm;->schemaInfo:Lio/realm/internal/OsSchemaInfo;

    .line 190
    invoke-virtual {v10, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 192
    iput-object v1, p0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    .line 193
    iput-object v9, p0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    .line 194
    sget-object p1, Lio/realm/internal/OsSharedRealm$VersionID;->LIVE:Lio/realm/internal/OsSharedRealm$VersionID;

    invoke-virtual {p2, p1}, Lio/realm/internal/OsSharedRealm$VersionID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 195
    invoke-interface {v1}, Lio/realm/internal/Capabilities;->canDeliverNotification()Z

    move-result p1

    invoke-static {v2, v3, p1}, Lio/realm/internal/OsSharedRealm;->nativeSetAutoRefresh(JZ)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 178
    :try_start_1
    iget-object p2, p0, Lio/realm/internal/OsSharedRealm;->tempSharedRealmsForCallback:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/OsSharedRealm;

    .line 179
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->close()V

    goto :goto_0

    .line 183
    :cond_2
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 185
    iget-object p2, p0, Lio/realm/internal/OsSharedRealm;->tempSharedRealmsForCallback:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 186
    sget-object p2, Lio/realm/internal/OsSharedRealm;->sharedRealmsUnderConstruction:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 187
    throw p1
.end method

.method private detachIterators()V
    .locals 2

    .line 520
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 521
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/OsResults$Iterator;

    if-eqz v1, :cond_0

    .line 523
    invoke-virtual {v1}, Lio/realm/internal/OsResults$Iterator;->detach()V

    goto :goto_0

    .line 526
    :cond_1
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private executePendingRowQueries()V
    .locals 2

    .line 563
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 564
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/PendingRow;

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {v1}, Lio/realm/internal/PendingRow;->executeQuery()V

    goto :goto_0

    .line 569
    :cond_1
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static getInstance(Lio/realm/RealmConfiguration;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/internal/OsSharedRealm;
    .locals 1

    .line 247
    new-instance v0, Lio/realm/internal/OsRealmConfig$Builder;

    invoke-direct {v0, p0}, Lio/realm/internal/OsRealmConfig$Builder;-><init>(Lio/realm/RealmConfiguration;)V

    .line 248
    invoke-static {v0, p1}, Lio/realm/internal/OsSharedRealm;->getInstance(Lio/realm/internal/OsRealmConfig$Builder;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/internal/OsSharedRealm;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lio/realm/internal/OsRealmConfig$Builder;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/internal/OsSharedRealm;
    .locals 1

    .line 258
    invoke-virtual {p0}, Lio/realm/internal/OsRealmConfig$Builder;->build()Lio/realm/internal/OsRealmConfig;

    move-result-object p0

    .line 259
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/internal/ObjectServerFacade;->wrapObjectStoreSessionIfRequired(Lio/realm/internal/OsRealmConfig;)V

    .line 260
    new-instance v0, Lio/realm/internal/OsSharedRealm;

    invoke-direct {v0, p0, p1}, Lio/realm/internal/OsSharedRealm;-><init>(Lio/realm/internal/OsRealmConfig;Lio/realm/internal/OsSharedRealm$VersionID;)V

    return-object v0
.end method

.method public static getTemporaryDirectory()Ljava/io/File;
    .locals 1

    .line 282
    sget-object v0, Lio/realm/internal/OsSharedRealm;->temporaryDirectory:Ljava/io/File;

    return-object v0
.end method

.method public static initialize(Ljava/io/File;)V
    .locals 3

    .line 264
    sget-object v0, Lio/realm/internal/OsSharedRealm;->temporaryDirectory:Ljava/io/File;

    if-eqz v0, :cond_0

    return-void

    .line 269
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 271
    :cond_1
    new-instance p0, Lio/realm/internal/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to create temporary directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/internal/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const-string v1, "/"

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_3
    invoke-static {v0}, Lio/realm/internal/OsSharedRealm;->nativeInit(Ljava/lang/String;)V

    .line 278
    sput-object p0, Lio/realm/internal/OsSharedRealm;->temporaryDirectory:Ljava/io/File;

    return-void
.end method

.method private static native nativeBeginTransaction(J)V
.end method

.method private static native nativeCancelTransaction(J)V
.end method

.method private static native nativeCloseSharedRealm(J)V
.end method

.method private static native nativeCommitTransaction(J)V
.end method

.method private static native nativeCompact(J)Z
.end method

.method private static native nativeCreateTable(JLjava/lang/String;)J
.end method

.method private static native nativeCreateTableWithPrimaryKeyField(JLjava/lang/String;Ljava/lang/String;IZ)J
.end method

.method private static native nativeFreeze(J)J
.end method

.method private static native nativeGetActiveSubscriptionSet(J)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetLatestSubscriptionSet(J)J
.end method

.method private static native nativeGetSchemaInfo(J)J
.end method

.method private static native nativeGetSharedRealm(JJJLio/realm/internal/RealmNotifier;)J
.end method

.method private static native nativeGetTableRef(JLjava/lang/String;)J
.end method

.method private static native nativeGetTablesName(J)[Ljava/lang/String;
.end method

.method private static native nativeGetVersionID(J)[J
.end method

.method private static native nativeHasTable(JLjava/lang/String;)Z
.end method

.method private static native nativeInit(Ljava/lang/String;)V
.end method

.method private static native nativeIsAutoRefresh(J)Z
.end method

.method private static native nativeIsClosed(J)Z
.end method

.method private static native nativeIsEmpty(J)Z
.end method

.method private static native nativeIsFrozen(J)Z
.end method

.method private static native nativeIsInTransaction(J)Z
.end method

.method private static native nativeNumberOfVersions(J)J
.end method

.method private static native nativeRefresh(J)V
.end method

.method private static native nativeRegisterSchemaChangedCallback(JLio/realm/internal/OsSharedRealm$SchemaChangedCallback;)V
.end method

.method private static native nativeRenameTable(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetAutoRefresh(JZ)V
.end method

.method private static native nativeSize(J)J
.end method

.method private static native nativeStopWaitForChange(J)V
.end method

.method private static native nativeWaitForChange(J)Z
.end method

.method private static native nativeWriteCopy(JLjava/lang/String;[B)V
    .param p3    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static runInitializationCallback(JLio/realm/internal/OsRealmConfig;Lio/realm/internal/OsSharedRealm$InitializationCallback;)V
    .locals 1

    .line 592
    new-instance v0, Lio/realm/internal/OsSharedRealm;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/OsSharedRealm;-><init>(JLio/realm/internal/OsRealmConfig;)V

    invoke-interface {p3, v0}, Lio/realm/internal/OsSharedRealm$InitializationCallback;->onInit(Lio/realm/internal/OsSharedRealm;)V

    return-void
.end method

.method private static runMigrationCallback(JLio/realm/internal/OsRealmConfig;Lio/realm/internal/OsSharedRealm$MigrationCallback;J)V
    .locals 6

    .line 581
    new-instance v1, Lio/realm/internal/OsSharedRealm;

    invoke-direct {v1, p0, p1, p2}, Lio/realm/internal/OsSharedRealm;-><init>(JLio/realm/internal/OsRealmConfig;)V

    .line 582
    invoke-virtual {p2}, Lio/realm/internal/OsRealmConfig;->getRealmConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getSchemaVersion()J

    move-result-wide v4

    move-object v0, p3

    move-wide v2, p4

    .line 581
    invoke-interface/range {v0 .. v5}, Lio/realm/internal/OsSharedRealm$MigrationCallback;->onMigrationNeeded(Lio/realm/internal/OsSharedRealm;JJ)V

    return-void
.end method


# virtual methods
.method addIterator(Lio/realm/internal/OsResults$Iterator;)V
    .locals 2

    .line 515
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addPendingRow(Lio/realm/internal/PendingRow;)V
    .locals 2

    .line 548
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginTransaction()V
    .locals 2

    .line 286
    invoke-direct {p0}, Lio/realm/internal/OsSharedRealm;->detachIterators()V

    .line 287
    invoke-direct {p0}, Lio/realm/internal/OsSharedRealm;->executePendingRowQueries()V

    .line 288
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeBeginTransaction(J)V

    return-void
.end method

.method public cancelTransaction()V
    .locals 2

    .line 296
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeCancelTransaction(J)V

    return-void
.end method

.method public close()V
    .locals 3

    .line 452
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Lio/realm/internal/RealmNotifier;->close()V

    .line 455
    :cond_0
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    monitor-enter v0

    .line 456
    :try_start_0
    iget-wide v1, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v1, v2}, Lio/realm/internal/OsSharedRealm;->nativeCloseSharedRealm(J)V

    .line 459
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public commitTransaction()V
    .locals 2

    .line 292
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeCommitTransaction(J)V

    return-void
.end method

.method public compact()Z
    .locals 2

    .line 422
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeCompact(J)Z

    move-result v0

    return v0
.end method

.method public createTable(Ljava/lang/String;)Lio/realm/internal/Table;
    .locals 3

    .line 327
    new-instance v0, Lio/realm/internal/Table;

    iget-wide v1, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v1, v2, p1}, Lio/realm/internal/OsSharedRealm;->nativeCreateTable(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/OsSharedRealm;J)V

    return-object v0
.end method

.method public createTableWithPrimaryKey(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Z)Lio/realm/internal/Table;
    .locals 7

    .line 343
    new-instance v0, Lio/realm/internal/Table;

    iget-wide v1, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-virtual {p3}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v5

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    invoke-static/range {v1 .. v6}, Lio/realm/internal/OsSharedRealm;->nativeCreateTableWithPrimaryKeyField(JLjava/lang/String;Ljava/lang/String;IZ)J

    move-result-wide p1

    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/OsSharedRealm;J)V

    return-object v0
.end method

.method public freeze()Lio/realm/internal/OsSharedRealm;
    .locals 3

    .line 507
    new-instance v0, Lio/realm/internal/OsSharedRealm;

    iget-object v1, p0, Lio/realm/internal/OsSharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    invoke-virtual {p0}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$VersionID;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/internal/OsSharedRealm;-><init>(Lio/realm/internal/OsRealmConfig;Lio/realm/internal/OsSharedRealm$VersionID;)V

    return-object v0
.end method

.method public getConfiguration()Lio/realm/RealmConfiguration;
    .locals 1

    .line 443
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    invoke-virtual {v0}, Lio/realm/internal/OsRealmConfig;->getRealmConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 469
    sget-wide v0, Lio/realm/internal/OsSharedRealm;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 464
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    return-wide v0
.end method

.method public getNumberOfVersions()J
    .locals 2

    .line 447
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeNumberOfVersions(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    invoke-virtual {v0}, Lio/realm/internal/OsRealmConfig;->getRealmConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaInfo()Lio/realm/internal/OsSchemaInfo;
    .locals 1

    .line 476
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->schemaInfo:Lio/realm/internal/OsSchemaInfo;

    return-object v0
.end method

.method public getTable(Ljava/lang/String;)Lio/realm/internal/Table;
    .locals 2

    .line 315
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSharedRealm;->nativeGetTableRef(JLjava/lang/String;)J

    move-result-wide v0

    .line 316
    new-instance p1, Lio/realm/internal/Table;

    invoke-direct {p1, p0, v0, v1}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/OsSharedRealm;J)V

    return-object p1
.end method

.method public getTablesNames()[Ljava/lang/String;
    .locals 2

    .line 355
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeGetTablesName(J)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getVersionID()Lio/realm/internal/OsSharedRealm$VersionID;
    .locals 6

    .line 379
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeGetVersionID(J)[J

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    new-instance v1, Lio/realm/internal/OsSharedRealm$VersionID;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lio/realm/internal/OsSharedRealm$VersionID;-><init>(JJ)V

    return-object v1

    .line 381
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get versionId, this could be related to a non existing read/write transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasTable(Ljava/lang/String;)Z
    .locals 2

    .line 304
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSharedRealm;->nativeHasTable(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method invalidateIterators()V
    .locals 2

    .line 531
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 532
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/OsResults$Iterator;

    if-eqz v1, :cond_0

    .line 534
    invoke-virtual {v1}, Lio/realm/internal/OsResults$Iterator;->invalidate()V

    goto :goto_0

    .line 537
    :cond_1
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public isAutoRefresh()Z
    .locals 2

    .line 439
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeIsAutoRefresh(J)Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 2

    .line 397
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeIsClosed(J)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 368
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeIsEmpty(J)Z

    move-result v0

    return v0
.end method

.method public isFrozen()Z
    .locals 2

    .line 500
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeIsFrozen(J)Z

    move-result v0

    return v0
.end method

.method public isInTransaction()Z
    .locals 2

    .line 300
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeIsInTransaction(J)Z

    move-result v0

    return v0
.end method

.method public isSyncRealm()Z
    .locals 1

    .line 493
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    invoke-virtual {v0}, Lio/realm/internal/OsRealmConfig;->getResolvedRealmURI()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public refresh()V
    .locals 2

    .line 372
    invoke-virtual {p0}, Lio/realm/internal/OsSharedRealm;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeRefresh(J)V

    return-void

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "It is not possible to refresh frozen Realms."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerSchemaChangedCallback(Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;)V
    .locals 2

    .line 486
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSharedRealm;->nativeRegisterSchemaChangedCallback(JLio/realm/internal/OsSharedRealm$SchemaChangedCallback;)V

    return-void
.end method

.method removePendingRow(Lio/realm/internal/PendingRow;)V
    .locals 3

    .line 553
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 554
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/PendingRow;

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    .line 556
    :cond_1
    iget-object v2, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public renameTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 348
    :try_start_0
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsSharedRealm;->nativeRenameTable(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 350
    new-instance p2, Lio/realm/exceptions/RealmError;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/realm/exceptions/RealmError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setAutoRefresh(Z)V
    .locals 2

    .line 426
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 427
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSharedRealm;->nativeSetAutoRefresh(JZ)V

    return-void
.end method

.method public size()J
    .locals 2

    .line 360
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public stopWaitForChange()V
    .locals 2

    .line 435
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeStopWaitForChange(J)V

    return-void
.end method

.method public waitForChange()Z
    .locals 2

    .line 431
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeWaitForChange(J)Z

    move-result v0

    return v0
.end method

.method public writeCopy(Ljava/io/File;[B)V
    .locals 2
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 401
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The destination file must not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 404
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/realm/internal/OsSharedRealm;->isSyncRealm()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "writeCopyTo() cannot be called from the main thread when using synchronized Realms."

    .line 405
    invoke-static {v0}, Lio/realm/internal/Util;->checkNotOnMainThread(Ljava/lang/String;)V

    .line 409
    :cond_2
    :try_start_0
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsSharedRealm;->nativeWriteCopy(JLjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 412
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Could not write file as not all client changes are integrated in server"

    .line 413
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 416
    :cond_3
    throw p1
.end method
