.class final Lcom/google/android/gms/internal/gtm/zzck;
.super Lcom/google/android/gms/internal/gtm/zzbs;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# instance fields
.field private zza:Z

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzce;

.field private final zzc:Lcom/google/android/gms/internal/gtm/zzfe;

.field private final zzd:Lcom/google/android/gms/internal/gtm/zzfc;

.field private final zze:Lcom/google/android/gms/internal/gtm/zzcc;

.field private zzf:J

.field private final zzg:Lcom/google/android/gms/internal/gtm/zzcw;

.field private final zzh:Lcom/google/android/gms/internal/gtm/zzcw;

.field private final zzi:Lcom/google/android/gms/internal/gtm/zzfo;

.field private zzj:J

.field private zzk:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;Lcom/google/android/gms/internal/gtm/zzbw;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbs;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzf:J

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzfc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzfc;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzd:Lcom/google/android/gms/internal/gtm/zzfc;

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzce;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzce;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzfe;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzfe;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzc:Lcom/google/android/gms/internal/gtm/zzfe;

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzcc;

    .line 6
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzcc;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzck;->zze:Lcom/google/android/gms/internal/gtm/zzcc;

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzfo;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/gtm/zzfo;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzi:Lcom/google/android/gms/internal/gtm/zzfo;

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzcg;

    .line 8
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/gtm/zzcg;-><init>(Lcom/google/android/gms/internal/gtm/zzck;Lcom/google/android/gms/internal/gtm/zzbv;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzg:Lcom/google/android/gms/internal/gtm/zzcw;

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzch;

    .line 9
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/gtm/zzch;-><init>(Lcom/google/android/gms/internal/gtm/zzck;Lcom/google/android/gms/internal/gtm/zzbv;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzh:Lcom/google/android/gms/internal/gtm/zzcw;

    return-void
.end method

.method private final zzag()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzy()Lcom/google/android/gms/internal/gtm/zzcy;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcy;->zze()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcy;->zza()V

    :cond_0
    return-void
.end method

.method private final zzah()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzg:Lcom/google/android/gms/internal/gtm/zzcw;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcw;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "All hits dispatched or no network/service. Going to power save mode"

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzg:Lcom/google/android/gms/internal/gtm/zzcw;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcw;->zzf()V

    return-void
.end method

.method private final zzai()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzy()Lcom/google/android/gms/internal/gtm/zzcy;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcy;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcy;->zze()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    const-wide/16 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzce;->zzc()J

    move-result-wide v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Failed to get min/max hit times from local store"

    .line 7
    invoke-virtual {p0, v4, v3}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v3, v1

    :goto_0
    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 11
    sget-object v3, Lcom/google/android/gms/internal/gtm/zzeu;->zzn:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzd()J

    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Dispatch alarm scheduled (ms)"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcy;->zzb()V

    :cond_1
    return-void
.end method

.method private final zzaj(Lcom/google/android/gms/internal/gtm/zzbx;Lcom/google/android/gms/internal/gtm/zzaw;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/analytics/zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzt()Lcom/google/android/gms/internal/gtm/zzbv;

    move-result-object v1

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/zza;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zza;->zzc(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzf()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zza;->zzd(Z)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zza;->zza()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/gtm/zzbe;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzh;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzbe;

    const-string v2, "data"

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gtm/zzbe;->zzk(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gtm/zzbe;->zzl(Z)V

    .line 10
    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/zzh;->zzg(Lcom/google/android/gms/analytics/zzj;)V

    const-class v2, Lcom/google/android/gms/internal/gtm/zzaz;

    .line 11
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/zzh;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzaz;

    const-class v3, Lcom/google/android/gms/internal/gtm/zzav;

    .line 12
    invoke-virtual {v0, v3}, Lcom/google/android/gms/analytics/zzh;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzav;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzd()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 15
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "an"

    .line 16
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 17
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/gtm/zzav;->zzk(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v7, "av"

    .line 18
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 19
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/gtm/zzav;->zzl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v7, "aid"

    .line 20
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 21
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/gtm/zzav;->zzi(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "aiid"

    .line 22
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 23
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/gtm/zzav;->zzj(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v7, "uid"

    .line 24
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 25
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/gtm/zzbe;->zzm(Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_4
    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/internal/gtm/zzaz;->zze(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "Sending installation campaign to"

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzH(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzA()Lcom/google/android/gms/internal/gtm/zzfh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzfh;->zza()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/analytics/zzh;->zzj(J)V

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzh;->zzk()V

    return-void
.end method

.method private final zzak(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzo()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/gtm/zzck;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzce;->zza()I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzae()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to delete stale hits"

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzh:Lcom/google/android/gms/internal/gtm/zzcw;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    const-wide/32 v1, 0x5265c00

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzcw;->zzg(J)V

    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/gtm/zzck;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzcj;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzcj;-><init>(Lcom/google/android/gms/internal/gtm/zzck;)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzj:J

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzck;->zzg(Lcom/google/android/gms/internal/gtm/zzcz;J)V

    return-void
.end method


# virtual methods
.method public final zzZ(J)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzf:J

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzae()V

    return-void
.end method

.method public final zza()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzf:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzeu;->zzi:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzB()Lcom/google/android/gms/internal/gtm/zzft;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    iget-boolean v2, v2, Lcom/google/android/gms/internal/gtm/zzft;->zzc:Z

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzB()Lcom/google/android/gms/internal/gtm/zzft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    iget v0, v0, Lcom/google/android/gms/internal/gtm/zzft;->zzd:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method final zzaa()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zza:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Analytics backend already started"

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zza:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzq()Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzci;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzci;-><init>(Lcom/google/android/gms/internal/gtm/zzck;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzr;->zzi(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzab()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 3
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzt()Lcom/google/android/gms/internal/gtm/zzbv;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zza()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzfi;->zza(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions."

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzfn;->zzh(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions."

    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzJ(Ljava/lang/String;)V

    .line 9
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzb(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzA()Lcom/google/android/gms/internal/gtm/zzfh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfh;->zza()J

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 12
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzck;->zzak(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzJ(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzad()V

    :cond_3
    const-string v0, "android.permission.INTERNET"

    .line 15
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzck;->zzak(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzJ(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzad()V

    .line 18
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzo()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzfn;->zzh(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "AnalyticsService registered in the app manifest and enabled"

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    const-string v0, "AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions."

    .line 21
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    .line 19
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzk:Z

    if-nez v0, :cond_6

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzce;->zzac()Z

    move-result v0

    if-nez v0, :cond_6

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzi()V

    .line 24
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzae()V

    return-void
.end method

.method public final zzac()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    const-string v0, "Sync dispatching local hits"

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzF(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzj:J

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzi()V

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzaf()Z

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzA()Lcom/google/android/gms/internal/gtm/zzfh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzfh;->zzi()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzae()V

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzj:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzd:Lcom/google/android/gms/internal/gtm/zzfc;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfc;->zzb()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Sync local dispatch failed"

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzae()V

    return-void
.end method

.method public final zzad()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzk:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zze:Lcom/google/android/gms/internal/gtm/zzcc;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcc;->zzc()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzae()V

    return-void
.end method

.method public final zzae()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzk:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzce;->zzac()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzd:Lcom/google/android/gms/internal/gtm/zzfc;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfc;->zzc()V

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzah()V

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzag()V

    return-void

    .line 12
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzeu;->zzJ:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzd:Lcom/google/android/gms/internal/gtm/zzfc;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfc;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzd:Lcom/google/android/gms/internal/gtm/zzfc;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfc;->zzd()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 26
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzah()V

    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzag()V

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzai()V

    return-void

    .line 15
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzai()V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zza()J

    move-result-wide v0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzA()Lcom/google/android/gms/internal/gtm/zzfh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzfh;->zzb()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long v2, v4, v2

    if-gtz v2, :cond_5

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zze()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zze()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_5
    :goto_1
    const-string v0, "Dispatch scheduled (ms)"

    .line 21
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzg:Lcom/google/android/gms/internal/gtm/zzcw;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcw;->zzh()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzg:Lcom/google/android/gms/internal/gtm/zzcw;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcw;->zzb()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzg:Lcom/google/android/gms/internal/gtm/zzcw;

    .line 24
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/gtm/zzcw;->zze(J)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzg:Lcom/google/android/gms/internal/gtm/zzcw;

    .line 25
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/gtm/zzcw;->zzg(J)V

    return-void

    .line 2
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzd:Lcom/google/android/gms/internal/gtm/zzfc;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfc;->zzc()V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzah()V

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzag()V

    return-void
.end method

.method protected final zzaf()Z
    .locals 12

    const-string v0, "Failed to commit local dispatch transaction"

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    const-string v1, "Dispatching a batch of local hits"

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zze:Lcom/google/android/gms/internal/gtm/zzcc;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzcc;->zzg()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzc:Lcom/google/android/gms/internal/gtm/zzfe;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzfe;->zze()Z

    move-result v4

    xor-int/2addr v2, v4

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "No network or service available. Will retry later"

    .line 54
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    return v3

    .line 6
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzh()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzg()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    new-instance v4, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v5, 0x0

    :goto_2
    :try_start_0
    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 8
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzce;->zzm()V

    .line 9
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 10
    invoke-virtual {v7, v1, v2}, Lcom/google/android/gms/internal/gtm/zzce;->zzj(J)Ljava/util/List;

    move-result-object v7

    .line 11
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v1, "Store is empty, nothing to dispatch"

    .line 34
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzah()V

    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzag()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzce;->zzab()V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzce;->zzaa()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    :catch_0
    move-exception v1

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzah()V

    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzag()V

    return v3

    :cond_3
    :try_start_3
    const-string v8, "Hits loaded from store. count"

    .line 12
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    :try_start_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/gtm/zzex;

    .line 14
    invoke-virtual {v9}, Lcom/google/android/gms/internal/gtm/zzex;->zzb()J

    move-result-wide v9

    cmp-long v9, v9, v5

    if-nez v9, :cond_4

    const-string v1, "Database contains successfully uploaded hit"

    .line 43
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 44
    invoke-virtual {p0, v1, v2, v4}, Lcom/google/android/gms/internal/gtm/zzbr;->zzL(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzah()V

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzag()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzce;->zzab()V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzce;->zzaa()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    return v3

    :catch_1
    move-exception v1

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzah()V

    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzag()V

    return v3

    .line 33
    :cond_5
    :try_start_6
    iget-object v8, p0, Lcom/google/android/gms/internal/gtm/zzck;->zze:Lcom/google/android/gms/internal/gtm/zzcc;

    .line 15
    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzcc;->zzg()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    const-string v8, "Service connected, sending hits to the service"

    .line 16
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    .line 17
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 18
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/gtm/zzex;

    iget-object v9, p0, Lcom/google/android/gms/internal/gtm/zzck;->zze:Lcom/google/android/gms/internal/gtm/zzcc;

    .line 19
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/gtm/zzcc;->zzh(Lcom/google/android/gms/internal/gtm/zzex;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_4

    .line 20
    :cond_6
    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzex;->zzb()J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 21
    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v9, "Hit sent do device AnalyticsService for delivery"

    .line 22
    invoke-virtual {p0, v9, v8}, Lcom/google/android/gms/internal/gtm/zzbr;->zzG(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v9, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 23
    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzex;->zzb()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/internal/gtm/zzce;->zzn(J)V

    .line 24
    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzex;->zzb()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_8
    const-string v2, "Failed to remove hit that was send for delivery"

    .line 50
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzah()V

    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzag()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzce;->zzab()V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzce;->zzaa()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_3

    return v3

    :catch_3
    move-exception v1

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzah()V

    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzag()V

    return v3

    .line 19
    :cond_7
    :goto_4
    :try_start_a
    iget-object v8, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzc:Lcom/google/android/gms/internal/gtm/zzfe;

    .line 25
    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzfe;->zze()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzc:Lcom/google/android/gms/internal/gtm/zzfe;

    .line 26
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/gtm/zzfe;->zzc(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 27
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 28
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    :cond_8
    :try_start_b
    iget-object v8, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 29
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/gtm/zzce;->zzZ(Ljava/util/List;)V

    .line 30
    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    :catch_4
    move-exception v1

    :try_start_c
    const-string v2, "Failed to remove successfully uploaded hits"

    .line 47
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzah()V

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzag()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzce;->zzab()V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzce;->zzaa()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_5

    return v3

    :catch_5
    move-exception v1

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzah()V

    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzag()V

    return v3

    .line 31
    :cond_9
    :goto_6
    :try_start_e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v7, :cond_a

    :try_start_f
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzce;->zzab()V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzce;->zzaa()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_6

    return v3

    :catch_6
    move-exception v1

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzah()V

    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzag()V

    return v3

    .line 33
    :cond_a
    :try_start_10
    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 32
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzce;->zzab()V

    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 33
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzce;->zzaa()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_2

    :catch_7
    move-exception v1

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzah()V

    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzag()V

    return v3

    :catch_8
    move-exception v1

    :try_start_11
    const-string v2, "Failed to read hits from persisted store"

    .line 40
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzah()V

    .line 42
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzag()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzce;->zzab()V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzce;->zzaa()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_9

    return v3

    :catch_9
    move-exception v1

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzah()V

    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzag()V

    return v3

    :catchall_0
    move-exception v1

    .line 54
    :try_start_13
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzce;->zzab()V

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzce;->zzaa()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_a

    .line 53
    throw v1

    :catch_a
    move-exception v1

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzah()V

    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzag()V

    return v3
.end method

.method public final zzb(Lcom/google/android/gms/internal/gtm/zzbx;Z)J
    .locals 13

    const-string p2, "properties"

    const-string v0, "Failed to end transaction"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    const-string v1, "0"

    .line 3
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    const-wide/16 v2, -0x1

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzce;->zzm()V

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzb()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    .line 7
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzce;->zzf()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "app_uid=? AND cid<>?"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v6, p2, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const-string v5, "Deleted property records"

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzc()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    .line 11
    invoke-virtual {v1, v6, v7, v4, v5}, Lcom/google/android/gms/internal/gtm/zzce;->zze(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v8, 0x1

    add-long/2addr v8, v4

    .line 12
    invoke-virtual {p1, v8, v9}, Lcom/google/android/gms/internal/gtm/zzbx;->zze(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    .line 15
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzce;->zzf()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzd()Ljava/util/Map;

    move-result-object v9

    .line 17
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Landroid/net/Uri$Builder;

    .line 18
    invoke-direct {v10}, Landroid/net/Uri$Builder;-><init>()V

    .line 19
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 21
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v12, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 23
    invoke-virtual {v9}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    const-string v9, ""

    :cond_2
    new-instance v10, Landroid/content/ContentValues;

    .line 24
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "app_uid"

    .line 25
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v10, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "cid"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzb()Ljava/lang/String;

    move-result-object v7

    .line 26
    invoke-virtual {v10, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "tid"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzc()Ljava/lang/String;

    move-result-object v7

    .line 27
    invoke-virtual {v10, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "adid"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzf()Z

    move-result v7

    .line 28
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "hits_count"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zza()J

    move-result-wide v11

    .line 29
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v10, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "params"

    .line 30
    invoke-virtual {v10, p1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    const/4 v6, 0x5

    .line 31
    :try_start_1
    invoke-virtual {v8, p2, p1, v10, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-nez p1, :cond_3

    const-string p1, "Failed to insert/update a property (got -1)"

    .line 32
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzJ(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Error storing a property"

    .line 33
    invoke-virtual {v1, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzce;->zzab()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzce;->zzaa()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 37
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-wide v4

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    :try_start_4
    const-string p2, "Failed to update Analytics property"

    .line 35
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzce;->zzaa()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 37
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    return-wide v2

    .line 36
    :goto_4
    :try_start_6
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzce;->zzaa()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception p2

    .line 37
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    :goto_5
    throw p1
.end method

.method protected final zzd()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzc:Lcom/google/android/gms/internal/gtm/zzfe;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zze:Lcom/google/android/gms/internal/gtm/zzcc;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzX()V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/gtm/zzcz;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzj:J

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/gtm/zzck;->zzg(Lcom/google/android/gms/internal/gtm/zzcz;J)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/gtm/zzcz;J)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzA()Lcom/google/android/gms/internal/gtm/zzfh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfh;->zzb()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    const-string v2, "Dispatching local hits. Elapsed time since last dispatch (ms)"

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzG(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzi()V

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzaf()Z

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzA()Lcom/google/android/gms/internal/gtm/zzfh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfh;->zzi()V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzae()V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 11
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/gtm/zzcz;->zza(Ljava/lang/Throwable;)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzj:J

    cmp-long p2, v0, p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzd:Lcom/google/android/gms/internal/gtm/zzfc;

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzfc;->zzb()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const-string p3, "Local dispatch failed"

    .line 13
    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzA()Lcom/google/android/gms/internal/gtm/zzfh;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/gtm/zzfh;->zzi()V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzae()V

    if-eqz p1, :cond_2

    .line 16
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/gtm/zzcz;->zza(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final zzh()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    const-string v0, "Delete all hits from local store"

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 5
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzce;->zzf()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "hits2"

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 9
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzce;->zzf()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "properties"

    .line 12
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzae()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to delete hits from store"

    .line 14
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zze:Lcom/google/android/gms/internal/gtm/zzcc;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcc;->zze()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Device service unavailable. Can\'t clear hits stored on the device service."

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final zzi()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzk:Z

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzl()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zze:Lcom/google/android/gms/internal/gtm/zzcc;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcc;->zzg()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzeu;->zzO:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzi:Lcom/google/android/gms/internal/gtm/zzfo;

    .line 5
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/gtm/zzfo;->zzc(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzi:Lcom/google/android/gms/internal/gtm/zzfo;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfo;->zzb()V

    const-string v0, "Connecting to service"

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zze:Lcom/google/android/gms/internal/gtm/zzcc;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcc;->zzf()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Connected to service"

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzi:Lcom/google/android/gms/internal/gtm/zzfo;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfo;->zza()V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzm()V

    :cond_3
    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/gtm/zzex;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "hit_id"

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    iget-boolean v3, v1, Lcom/google/android/gms/internal/gtm/zzck;->zzk:Z

    if-eqz v3, :cond_0

    const-string v3, "Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions"

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/gtm/zzbr;->zzF(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "Delivering hit"

    .line 5
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/gtm/zzex;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzA()Lcom/google/android/gms/internal/gtm/zzfh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzfh;->zze()Lcom/google/android/gms/internal/gtm/zzfg;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzfg;->zza()Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 9
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    .line 10
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 11
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/2addr v6, v4

    add-int/2addr v6, v7

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/gtm/zzex;->zzg()Ljava/util/Map;

    move-result-object v6

    .line 12
    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v6, "_m"

    .line 13
    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v1, v0, v5}, Lcom/google/android/gms/internal/gtm/zzex;->zze(Lcom/google/android/gms/internal/gtm/zzbr;Lcom/google/android/gms/internal/gtm/zzex;Ljava/util/Map;)Lcom/google/android/gms/internal/gtm/zzex;

    move-result-object v0

    :cond_1
    move-object v3, v0

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzi()V

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zzck;->zze:Lcom/google/android/gms/internal/gtm/zzcc;

    .line 16
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/gtm/zzcc;->zzh(Lcom/google/android/gms/internal/gtm/zzex;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Hit sent to the device AnalyticsService for delivery"

    .line 17
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzF(Ljava/lang/String;)V

    return-void

    .line 18
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    :try_start_0
    iget-object v5, v1, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    .line 22
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/net/Uri$Builder;

    .line 23
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzex;->zzg()Ljava/util/Map;

    move-result-object v6

    .line 24
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "ht"

    .line 26
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "qt"

    .line 27
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "AppUID"

    .line 28
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 29
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v8, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 30
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    move-object v6, v0

    .line 32
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v7, 0x2000

    if-le v0, v7, :cond_6

    .line 64
    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzbr;->zzz()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v0

    const-string v2, "Hit length exceeds the maximum allowed size"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/gtm/zzfb;->zzb(Lcom/google/android/gms/internal/gtm/zzex;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 33
    :cond_6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzeu;->zzf:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 35
    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzce;->zzb()J

    move-result-wide v7

    add-int/lit8 v9, v0, -0x1

    int-to-long v9, v9

    cmp-long v9, v7, v9

    const/4 v10, 0x0

    if-lez v9, :cond_c

    int-to-long v11, v0

    sub-long/2addr v7, v11

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    .line 36
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 37
    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    const-wide/16 v11, 0x0

    cmp-long v0, v7, v11

    if-gtz v0, :cond_7

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_5

    .line 39
    :cond_7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzce;->zzf()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    new-instance v9, Ljava/util/ArrayList;

    .line 40
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-array v13, v4, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v2, v13, v0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const-string v12, "hits2"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v2, "%s ASC"

    .line 41
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 42
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    .line 43
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 45
    :cond_8
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v4, :cond_8

    :cond_9
    if-eqz v2, :cond_a

    .line 48
    :goto_2
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v2, v10

    :goto_3
    :try_start_4
    const-string v4, "Error selecting hit ids"

    .line 47
    invoke-virtual {v5, v4, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_a
    :goto_4
    move-object v0, v9

    :goto_5
    :try_start_5
    const-string v2, "Store full, deleting hits to make room, count"

    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/gtm/zzce;->zzZ(Ljava/util/List;)V

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v10, v2

    :goto_6
    if-eqz v10, :cond_b

    .line 48
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_b
    throw v0

    .line 52
    :cond_c
    :goto_7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzce;->zzf()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    .line 53
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "hit_string"

    .line 54
    invoke-virtual {v2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "hit_time"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzex;->zzd()J

    move-result-wide v6

    .line 55
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "hit_app_id"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzex;->zza()I

    move-result v6

    .line 56
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzex;->zzh()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 57
    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzi()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 58
    :cond_d
    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzk()Ljava/lang/String;

    move-result-object v4

    :goto_8
    const-string v6, "hit_url"

    .line 59
    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    const-string v4, "hits2"

    .line 60
    invoke-virtual {v0, v4, v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_e

    const-string v0, "Failed to insert a hit (got -1)"

    .line 61
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzJ(Ljava/lang/String;)V

    goto :goto_9

    :cond_e
    const-string v0, "Hit saved to database. db-id, hit"

    .line 62
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzbr;->zzH(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    :try_start_7
    const-string v2, "Error storing a hit"

    .line 63
    invoke-virtual {v5, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzae()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3

    return-void

    :catch_3
    move-exception v0

    const-string v2, "Delivery failed to save hit to a database"

    .line 66
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzz()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v0

    const-string v2, "deliver: failed to insert hit to database"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/gtm/zzfb;->zzb(Lcom/google/android/gms/internal/gtm/zzex;Ljava/lang/String;)V

    return-void
.end method

.method protected final zzk(Lcom/google/android/gms/internal/gtm/zzbx;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    const-string v0, "Sending first hit to property"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzc()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzG(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzA()Lcom/google/android/gms/internal/gtm/zzfh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfh;->zzf()Lcom/google/android/gms/internal/gtm/zzfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzc()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzfo;->zzc(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzA()Lcom/google/android/gms/internal/gtm/zzfh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfh;->zzg()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzz()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzfs;->zzb(Lcom/google/android/gms/internal/gtm/zzfb;Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzaw;

    move-result-object v0

    const-string v1, "Found relevant installation campaign"

    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzG(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzck;->zzaj(Lcom/google/android/gms/internal/gtm/zzbx;Lcom/google/android/gms/internal/gtm/zzaw;)V

    return-void
.end method

.method final zzl()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzj:J

    return-void
.end method

.method protected final zzm()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 3
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzE()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzl()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Service client disabled. Can\'t dispatch local hits to device AnalyticsService"

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zze:Lcom/google/android/gms/internal/gtm/zzcc;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcc;->zzg()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Service not connected"

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzce;->zzac()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "Dispatching local hits to device AnalyticsService"

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzh()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzce;->zzj(J)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_5

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzex;

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzck;->zze:Lcom/google/android/gms/internal/gtm/zzcc;

    .line 16
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/gtm/zzcc;->zzh(Lcom/google/android/gms/internal/gtm/zzex;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzae()V

    return-void

    .line 17
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzex;->zzb()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/gtm/zzce;->zzn(J)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to remove hit that was send for delivery"

    .line 20
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzah()V

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzag()V

    return-void

    .line 23
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzae()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Failed to read hits from store"

    .line 24
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzah()V

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzck;->zzag()V

    return-void
.end method

.method public final zzn(Ljava/lang/String;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzE()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzz()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/gtm/zzfs;->zzb(Lcom/google/android/gms/internal/gtm/zzfb;Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzaw;

    move-result-object v2

    const-string v3, "0"

    if-nez v2, :cond_0

    const-string v2, "Parsing failed. Ignoring invalid campaign data"

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzA()Lcom/google/android/gms/internal/gtm/zzfh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzfh;->zzg()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "Ignoring duplicate install campaign"

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v2, "Ignoring multiple install campaigns. original, new"

    .line 10
    invoke-virtual {v1, v2, v4, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzL(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzA()Lcom/google/android/gms/internal/gtm/zzfh;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/gtm/zzfh;->zzh(Ljava/lang/String;)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzA()Lcom/google/android/gms/internal/gtm/zzfh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfh;->zzf()Lcom/google/android/gms/internal/gtm/zzfo;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzc()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/gtm/zzfo;->zzc(J)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Campaign received too late, ignoring"

    .line 13
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string v0, "Received installation campaign"

    .line 14
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzG(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/gtm/zzck;->zzb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    .line 16
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzce;->zzf()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/4 v0, 0x5

    :try_start_0
    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "cid"

    const/4 v15, 0x0

    aput-object v0, v7, v15

    const-string v0, "tid"

    const/4 v13, 0x1

    aput-object v0, v7, v13

    const-string v0, "adid"

    const/4 v12, 0x2

    aput-object v0, v7, v12

    const-string v0, "hits_count"

    const/4 v11, 0x3

    aput-object v0, v7, v11

    const-string v0, "params"

    const/4 v10, 0x4

    aput-object v0, v7, v10

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzeu;->zzh:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    const-string v8, "app_uid=?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    const-string v6, "properties"

    const/4 v3, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move v14, v10

    move-object v10, v3

    move v3, v11

    move-object/from16 v11, v17

    move v14, v12

    move-object/from16 v12, v18

    move v3, v13

    move-object/from16 v13, v16

    .line 21
    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 24
    :cond_4
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 25
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 26
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_5

    move/from16 v24, v3

    goto :goto_0

    :cond_5
    move/from16 v24, v15

    :goto_0
    const/4 v9, 0x3

    .line 27
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    const/4 v12, 0x4

    .line 28
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 29
    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/gtm/zzce;->zzl(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v27

    .line 30
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_1

    .line 42
    :cond_6
    new-instance v13, Lcom/google/android/gms/internal/gtm/zzbx;

    const-wide/16 v20, 0x0

    move-object/from16 v19, v13

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-wide/from16 v25, v10

    .line 32
    invoke-direct/range {v19 .. v27}, Lcom/google/android/gms/internal/gtm/zzbx;-><init>(JLjava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V

    .line 33
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    :goto_1
    const-string v10, "Read property with empty client id or tracker id"

    .line 31
    invoke-virtual {v4, v10, v7, v8}, Lcom/google/android/gms/internal/gtm/zzbr;->zzT(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 35
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v0, :cond_9

    const-string v0, "Sending hits to too many properties. Campaign report might be incorrect"

    .line 36
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    if-eqz v5, :cond_a

    .line 39
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 41
    :cond_a
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzbx;

    .line 42
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/gtm/zzck;->zzaj(Lcom/google/android/gms/internal/gtm/zzbx;Lcom/google/android/gms/internal/gtm/zzaw;)V

    goto :goto_3

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    move-object v14, v5

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v14, v5

    goto :goto_4

    :catchall_1
    move-exception v0

    const/4 v14, 0x0

    goto :goto_5

    :catch_1
    move-exception v0

    const/4 v14, 0x0

    :goto_4
    :try_start_2
    const-string v2, "Error loading hits from the database"

    .line 37
    invoke-virtual {v4, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    :goto_5
    if-eqz v14, :cond_c

    .line 39
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 40
    :cond_c
    throw v0
.end method
