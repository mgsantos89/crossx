.class public Lio/realm/RealmConfiguration$Builder;
.super Ljava/lang/Object;
.source "RealmConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private allowQueriesOnUiThread:Z

.field private allowWritesOnUiThread:Z

.field private assetFilePath:Ljava/lang/String;

.field private compactOnLaunch:Lio/realm/CompactOnLaunchCallback;

.field private debugSchema:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private deleteRealmIfMigrationNeeded:Z

.field private directory:Ljava/io/File;

.field private durability:Lio/realm/internal/OsRealmConfig$Durability;

.field private excludeDebugSchema:Z

.field private fileName:Ljava/lang/String;

.field private flowFactory:Lio/realm/coroutines/FlowFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private initialDataTransaction:Lio/realm/Realm$Transaction;

.field private key:[B

.field private maxNumberOfActiveVersions:J

.field private migration:Lio/realm/RealmMigration;

.field private modules:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private readOnly:Z

.field private rxFactory:Lio/realm/rx/RxObservableFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private schemaVersion:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 529
    sget-object v0, Lio/realm/BaseRealm;->applicationContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lio/realm/RealmConfiguration$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/realm/RealmConfiguration$Builder;->modules:Ljava/util/HashSet;

    .line 508
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/realm/RealmConfiguration$Builder;->debugSchema:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 509
    iput-boolean v0, p0, Lio/realm/RealmConfiguration$Builder;->excludeDebugSchema:Z

    const-wide v0, 0x7fffffffffffffffL

    .line 517
    iput-wide v0, p0, Lio/realm/RealmConfiguration$Builder;->maxNumberOfActiveVersions:J

    if-eqz p1, :cond_0

    .line 537
    invoke-static {p1}, Lio/realm/internal/RealmCore;->loadLibrary(Landroid/content/Context;)V

    .line 538
    invoke-direct {p0, p1}, Lio/realm/RealmConfiguration$Builder;->initializeBuilder(Landroid/content/Context;)V

    return-void

    .line 535
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call `Realm.init(Context)` before creating a RealmConfiguration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkModule(Ljava/lang/Object;)V
    .locals 2

    .line 967
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/realm/annotations/RealmModule;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 968
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not a RealmModule. Add @RealmModule to the class definition."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initializeBuilder(Landroid/content/Context;)V
    .locals 2

    .line 543
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->directory:Ljava/io/File;

    const-string p1, "default.realm"

    .line 544
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->fileName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 545
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->key:[B

    const-wide/16 v0, 0x0

    .line 546
    iput-wide v0, p0, Lio/realm/RealmConfiguration$Builder;->schemaVersion:J

    .line 547
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->migration:Lio/realm/RealmMigration;

    const/4 v0, 0x0

    .line 548
    iput-boolean v0, p0, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded:Z

    .line 549
    sget-object v1, Lio/realm/internal/OsRealmConfig$Durability;->FULL:Lio/realm/internal/OsRealmConfig$Durability;

    iput-object v1, p0, Lio/realm/RealmConfiguration$Builder;->durability:Lio/realm/internal/OsRealmConfig$Durability;

    .line 550
    iput-boolean v0, p0, Lio/realm/RealmConfiguration$Builder;->readOnly:Z

    .line 551
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->compactOnLaunch:Lio/realm/CompactOnLaunchCallback;

    .line 552
    invoke-static {}, Lio/realm/RealmConfiguration;->access$000()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 553
    iget-object p1, p0, Lio/realm/RealmConfiguration$Builder;->modules:Ljava/util/HashSet;

    invoke-static {}, Lio/realm/RealmConfiguration;->access$000()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_0
    iput-boolean v0, p0, Lio/realm/RealmConfiguration$Builder;->allowWritesOnUiThread:Z

    const/4 p1, 0x1

    .line 556
    iput-boolean p1, p0, Lio/realm/RealmConfiguration$Builder;->allowQueriesOnUiThread:Z

    return-void
.end method


# virtual methods
.method public final addModule(Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 723
    invoke-direct {p0, p1}, Lio/realm/RealmConfiguration$Builder;->checkModule(Ljava/lang/Object;)V

    .line 724
    iget-object v0, p0, Lio/realm/RealmConfiguration$Builder;->modules:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public allowQueriesOnUiThread(Z)Lio/realm/RealmConfiguration$Builder;
    .locals 0

    .line 911
    iput-boolean p1, p0, Lio/realm/RealmConfiguration$Builder;->allowQueriesOnUiThread:Z

    return-object p0
.end method

.method public allowWritesOnUiThread(Z)Lio/realm/RealmConfiguration$Builder;
    .locals 0

    .line 899
    iput-boolean p1, p0, Lio/realm/RealmConfiguration$Builder;->allowWritesOnUiThread:Z

    return-object p0
.end method

.method public assetFile(Ljava/lang/String;)Lio/realm/RealmConfiguration$Builder;
    .locals 2

    .line 784
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 787
    iget-object v0, p0, Lio/realm/RealmConfiguration$Builder;->durability:Lio/realm/internal/OsRealmConfig$Durability;

    sget-object v1, Lio/realm/internal/OsRealmConfig$Durability;->MEM_ONLY:Lio/realm/internal/OsRealmConfig$Durability;

    if-eq v0, v1, :cond_1

    .line 790
    iget-boolean v0, p0, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded:Z

    if-nez v0, :cond_0

    .line 793
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->assetFilePath:Ljava/lang/String;

    return-object p0

    .line 791
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Realm cannot use an asset file when previously configured to clear its schema in migration by calling deleteRealmIfMigrationNeeded()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 788
    :cond_1
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Realm can not use in-memory configuration if asset file is present."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 785
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-empty asset file path must be provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lio/realm/RealmConfiguration;
    .locals 24

    move-object/from16 v0, p0

    .line 923
    iget-boolean v1, v0, Lio/realm/RealmConfiguration$Builder;->readOnly:Z

    if-eqz v1, :cond_4

    .line 924
    iget-object v1, v0, Lio/realm/RealmConfiguration$Builder;->initialDataTransaction:Lio/realm/Realm$Transaction;

    if-nez v1, :cond_3

    .line 927
    iget-object v1, v0, Lio/realm/RealmConfiguration$Builder;->assetFilePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 930
    iget-boolean v1, v0, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded:Z

    if-nez v1, :cond_1

    .line 933
    iget-object v1, v0, Lio/realm/RealmConfiguration$Builder;->compactOnLaunch:Lio/realm/CompactOnLaunchCallback;

    if-nez v1, :cond_0

    goto :goto_0

    .line 934
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "\'compactOnLaunch()\' and read-only Realms cannot be combined"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 931
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "\'deleteRealmIfMigrationNeeded()\' and read-only Realms cannot be combined"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 928
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Only Realms provided using \'assetFile(path)\' can be marked read-only. No such Realm was provided."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 925
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This Realm is marked as read-only. Read-only Realms cannot use initialData(Realm.Transaction)."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 938
    :cond_4
    :goto_0
    iget-object v1, v0, Lio/realm/RealmConfiguration$Builder;->rxFactory:Lio/realm/rx/RxObservableFactory;

    const/4 v2, 0x1

    if-nez v1, :cond_5

    invoke-static {}, Lio/realm/internal/Util;->isRxJavaAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 939
    new-instance v1, Lio/realm/rx/RealmObservableFactory;

    invoke-direct {v1, v2}, Lio/realm/rx/RealmObservableFactory;-><init>(Z)V

    iput-object v1, v0, Lio/realm/RealmConfiguration$Builder;->rxFactory:Lio/realm/rx/RxObservableFactory;

    .line 942
    :cond_5
    iget-object v1, v0, Lio/realm/RealmConfiguration$Builder;->flowFactory:Lio/realm/coroutines/FlowFactory;

    if-nez v1, :cond_6

    invoke-static {}, Lio/realm/internal/Util;->isCoroutinesAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 943
    new-instance v1, Lio/realm/coroutines/RealmFlowFactory;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/realm/coroutines/RealmFlowFactory;-><init>(Ljava/lang/Boolean;)V

    iput-object v1, v0, Lio/realm/RealmConfiguration$Builder;->flowFactory:Lio/realm/coroutines/FlowFactory;

    .line 946
    :cond_6
    new-instance v1, Lio/realm/RealmConfiguration;

    move-object v3, v1

    new-instance v2, Ljava/io/File;

    move-object v4, v2

    iget-object v5, v0, Lio/realm/RealmConfiguration$Builder;->directory:Ljava/io/File;

    iget-object v6, v0, Lio/realm/RealmConfiguration$Builder;->fileName:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v5, v0, Lio/realm/RealmConfiguration$Builder;->assetFilePath:Ljava/lang/String;

    iget-object v6, v0, Lio/realm/RealmConfiguration$Builder;->key:[B

    iget-wide v7, v0, Lio/realm/RealmConfiguration$Builder;->schemaVersion:J

    iget-object v9, v0, Lio/realm/RealmConfiguration$Builder;->migration:Lio/realm/RealmMigration;

    iget-boolean v10, v0, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded:Z

    iget-object v11, v0, Lio/realm/RealmConfiguration$Builder;->durability:Lio/realm/internal/OsRealmConfig$Durability;

    iget-object v2, v0, Lio/realm/RealmConfiguration$Builder;->modules:Ljava/util/HashSet;

    iget-object v12, v0, Lio/realm/RealmConfiguration$Builder;->debugSchema:Ljava/util/HashSet;

    iget-boolean v13, v0, Lio/realm/RealmConfiguration$Builder;->excludeDebugSchema:Z

    .line 953
    invoke-static {v2, v12, v13}, Lio/realm/RealmConfiguration;->createSchemaMediator(Ljava/util/Set;Ljava/util/Set;Z)Lio/realm/internal/RealmProxyMediator;

    move-result-object v12

    iget-object v13, v0, Lio/realm/RealmConfiguration$Builder;->rxFactory:Lio/realm/rx/RxObservableFactory;

    iget-object v14, v0, Lio/realm/RealmConfiguration$Builder;->flowFactory:Lio/realm/coroutines/FlowFactory;

    iget-object v15, v0, Lio/realm/RealmConfiguration$Builder;->initialDataTransaction:Lio/realm/Realm$Transaction;

    iget-boolean v2, v0, Lio/realm/RealmConfiguration$Builder;->readOnly:Z

    move/from16 v16, v2

    iget-object v2, v0, Lio/realm/RealmConfiguration$Builder;->compactOnLaunch:Lio/realm/CompactOnLaunchCallback;

    move-object/from16 v17, v2

    const/16 v18, 0x0

    move-object/from16 v23, v1

    iget-wide v1, v0, Lio/realm/RealmConfiguration$Builder;->maxNumberOfActiveVersions:J

    move-wide/from16 v19, v1

    iget-boolean v1, v0, Lio/realm/RealmConfiguration$Builder;->allowWritesOnUiThread:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Lio/realm/RealmConfiguration$Builder;->allowQueriesOnUiThread:Z

    move/from16 v22, v1

    invoke-direct/range {v3 .. v22}, Lio/realm/RealmConfiguration;-><init>(Ljava/io/File;Ljava/lang/String;[BJLio/realm/RealmMigration;ZLio/realm/internal/OsRealmConfig$Durability;Lio/realm/internal/RealmProxyMediator;Lio/realm/rx/RxObservableFactory;Lio/realm/coroutines/FlowFactory;Lio/realm/Realm$Transaction;ZLio/realm/CompactOnLaunchCallback;ZJZZ)V

    return-object v23
.end method

.method public compactOnLaunch()Lio/realm/RealmConfiguration$Builder;
    .locals 1

    .line 818
    new-instance v0, Lio/realm/DefaultCompactOnLaunchCallback;

    invoke-direct {v0}, Lio/realm/DefaultCompactOnLaunchCallback;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/RealmConfiguration$Builder;->compactOnLaunch(Lio/realm/CompactOnLaunchCallback;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public compactOnLaunch(Lio/realm/CompactOnLaunchCallback;)Lio/realm/RealmConfiguration$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 834
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->compactOnLaunch:Lio/realm/CompactOnLaunchCallback;

    return-object p0

    .line 832
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-null compactOnLaunch must be provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteRealmIfMigrationNeeded()Lio/realm/RealmConfiguration$Builder;
    .locals 2

    .line 659
    iget-object v0, p0, Lio/realm/RealmConfiguration$Builder;->assetFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 660
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm cannot clear its schema when previously configured to use an asset file by calling assetFile()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 663
    iput-boolean v0, p0, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded:Z

    return-object p0
.end method

.method public directory(Ljava/io/File;)Lio/realm/RealmConfiguration$Builder;
    .locals 4

    if-eqz p1, :cond_4

    .line 584
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v1, "."

    if-nez v0, :cond_3

    .line 587
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 588
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create the specified directory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 593
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->directory:Ljava/io/File;

    return-object p0

    .line 591
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Realm directory is not writable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\'dir\' is a file, not a directory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-null \'dir\' required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encryptionKey([B)Lio/realm/RealmConfiguration$Builder;
    .locals 3

    if-eqz p1, :cond_1

    .line 606
    array-length v0, p1

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 611
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->key:[B

    return-object p0

    .line 607
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 609
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The provided key must be %s bytes. Yours was: %s"

    .line 607
    invoke-static {v2, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-null key must be provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final varargs excludeSchema(Ljava/lang/Class;[Ljava/lang/Class;)Lio/realm/RealmConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;[",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Lio/realm/RealmConfiguration$Builder;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 887
    iput-boolean v0, p0, Lio/realm/RealmConfiguration$Builder;->excludeDebugSchema:Z

    .line 888
    invoke-virtual {p0, p1, p2}, Lio/realm/RealmConfiguration$Builder;->schema(Ljava/lang/Class;[Ljava/lang/Class;)Lio/realm/RealmConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public flowFactory(Lio/realm/coroutines/FlowFactory;)Lio/realm/RealmConfiguration$Builder;
    .locals 1
    .param p1    # Lio/realm/coroutines/FlowFactory;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 754
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->flowFactory:Lio/realm/coroutines/FlowFactory;

    return-object p0

    .line 752
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided Flow factory must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inMemory()Lio/realm/RealmConfiguration$Builder;
    .locals 2

    .line 676
    iget-object v0, p0, Lio/realm/RealmConfiguration$Builder;->assetFilePath:Ljava/lang/String;

    invoke-static {v0}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    sget-object v0, Lio/realm/internal/OsRealmConfig$Durability;->MEM_ONLY:Lio/realm/internal/OsRealmConfig$Durability;

    iput-object v0, p0, Lio/realm/RealmConfiguration$Builder;->durability:Lio/realm/internal/OsRealmConfig$Durability;

    return-object p0

    .line 677
    :cond_0
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Realm can not use in-memory configuration if asset file is present."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialData(Lio/realm/Realm$Transaction;)Lio/realm/RealmConfiguration$Builder;
    .locals 0

    .line 765
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->initialDataTransaction:Lio/realm/Realm$Transaction;

    return-object p0
.end method

.method public maxNumberOfActiveVersions(J)Lio/realm/RealmConfiguration$Builder;
    .locals 3

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 856
    iput-wide p1, p0, Lio/realm/RealmConfiguration$Builder;->maxNumberOfActiveVersions:J

    return-object p0

    .line 854
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only positive numbers above 0 are allowed. Yours was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public migration(Lio/realm/RealmMigration;)Lio/realm/RealmConfiguration$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 642
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->migration:Lio/realm/RealmMigration;

    return-object p0

    .line 640
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-null migration must be provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;
    .locals 1

    .line 702
    iget-object v0, p0, Lio/realm/RealmConfiguration$Builder;->modules:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 703
    invoke-virtual {p0, p1}, Lio/realm/RealmConfiguration$Builder;->addModule(Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 706
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 707
    aget-object v0, p2, p1

    .line 708
    invoke-virtual {p0, v0}, Lio/realm/RealmConfiguration$Builder;->addModule(Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lio/realm/RealmConfiguration$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 564
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->fileName:Ljava/lang/String;

    return-object p0

    .line 565
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-empty filename must be provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readOnly()Lio/realm/RealmConfiguration$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 809
    iput-boolean v0, p0, Lio/realm/RealmConfiguration$Builder;->readOnly:Z

    return-object p0
.end method

.method public rxFactory(Lio/realm/rx/RxObservableFactory;)Lio/realm/RealmConfiguration$Builder;
    .locals 1
    .param p1    # Lio/realm/rx/RxObservableFactory;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 740
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->rxFactory:Lio/realm/rx/RxObservableFactory;

    return-object p0

    .line 738
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided Rx Observable factory must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final varargs schema(Ljava/lang/Class;[Ljava/lang/Class;)Lio/realm/RealmConfiguration$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;[",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Lio/realm/RealmConfiguration$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 870
    iget-object v0, p0, Lio/realm/RealmConfiguration$Builder;->modules:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 871
    iget-object v0, p0, Lio/realm/RealmConfiguration$Builder;->modules:Ljava/util/HashSet;

    sget-object v1, Lio/realm/RealmConfiguration;->DEFAULT_MODULE_MEDIATOR:Lio/realm/internal/RealmProxyMediator;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 872
    iget-object v0, p0, Lio/realm/RealmConfiguration$Builder;->debugSchema:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 875
    iget-object p1, p0, Lio/realm/RealmConfiguration$Builder;->debugSchema:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    .line 868
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A non-null class must be provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public schemaVersion(J)Lio/realm/RealmConfiguration$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 628
    iput-wide p1, p0, Lio/realm/RealmConfiguration$Builder;->schemaVersion:J

    return-object p0

    .line 626
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Realm schema version numbers must be 0 (zero) or higher. Yours was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
