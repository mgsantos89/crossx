.class final Lcom/google/android/gms/tagmanager/zzdv;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzdw;

.field private zzb:Z

.field private zzc:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzdw;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdv;->zza:Lcom/google/android/gms/tagmanager/zzdw;

    const/4 p1, 0x0

    const/4 p3, 0x1

    const-string v0, "gtm_urls.db"

    .line 1
    invoke-direct {p0, p2, v0, p1, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzdv;->zzc:J

    return-void
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdv;->zzb:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzdv;->zzc:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzdv;->zza:Lcom/google/android/gms/tagmanager/zzdw;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzdw;->zze(Lcom/google/android/gms/tagmanager/zzdw;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 1
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database creation failed"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdv;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdv;->zza:Lcom/google/android/gms/tagmanager/zzdw;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdw;->zze(Lcom/google/android/gms/tagmanager/zzdw;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zzdv;->zzc:J

    .line 3
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdv;->zza:Lcom/google/android/gms/tagmanager/zzdw;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdw;->zzd(Lcom/google/android/gms/tagmanager/zzdw;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdv;->zza:Lcom/google/android/gms/tagmanager/zzdw;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdw;->zzf(Lcom/google/android/gms/tagmanager/zzdw;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 5
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzdv;->zzb:Z

    return-object v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbv;->zza(Ljava/lang/String;)Z

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    const-string v0, "Error querying for table gtm_hits"

    const-string v1, "gtm_hits"

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-array v6, v2, [Ljava/lang/String;

    const-string v2, "name"

    const/4 v12, 0x0

    aput-object v2, v6, v12

    .line 3
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v5, "SQLITE_MASTER"

    const-string v7, "name=?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    .line 5
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "SELECT * FROM gtm_hits WHERE 0"

    .line 11
    invoke-virtual {p1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    .line 12
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 13
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 14
    :goto_0
    array-length v2, v1

    if-ge v12, v2, :cond_2

    .line 15
    aget-object v2, v1, v12

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 16
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const-string p1, "hit_id"

    .line 18
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "hit_url"

    .line 19
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "hit_time"

    .line 20
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "hit_first_send_time"

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 23
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 24
    :cond_3
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Database has extra columns"

    invoke-direct {p1, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_4
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Database column missing"

    invoke-direct {p1, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception v0

    .line 16
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 17
    throw v0

    :catchall_1
    move-exception p1

    move-object v3, v1

    goto :goto_3

    :catch_0
    move-object v3, v1

    goto :goto_1

    :catchall_2
    move-exception p1

    goto :goto_3

    .line 7
    :catch_1
    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_5

    .line 8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_5
    :goto_2
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdw;->zzg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :goto_3
    if-eqz v3, :cond_6

    .line 8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 9
    :cond_6
    throw p1
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
