.class final Lcom/google/android/gms/internal/gtm/zzfp;
.super Lcom/google/android/gms/internal/gtm/zzbr;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzcr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzbr;",
        "Lcom/google/android/gms/internal/gtm/zzcr<",
        "Lcom/google/android/gms/internal/gtm/zzfr;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/gtm/zzfr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzfr;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzfr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Lcom/google/android/gms/internal/gtm/zzfr;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Lcom/google/android/gms/internal/gtm/zzcq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Lcom/google/android/gms/internal/gtm/zzfr;

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Lcom/google/android/gms/internal/gtm/zzfr;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzfr;->zzg:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzc(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "ga_autoActivityTracking"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Lcom/google/android/gms/internal/gtm/zzfr;

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzfr;->zzd:I

    return-void

    :cond_0
    const-string v0, "ga_anonymizeIp"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Lcom/google/android/gms/internal/gtm/zzfr;

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzfr;->zze:I

    return-void

    :cond_1
    const-string v0, "ga_reportUncaughtExceptions"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Lcom/google/android/gms/internal/gtm/zzfr;

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzfr;->zzf:I

    return-void

    :cond_2
    const-string p2, "bool configuration name not recognized"

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "ga_sessionTimeout"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Lcom/google/android/gms/internal/gtm/zzfr;

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzfr;->zzc:I

    return-void

    :cond_0
    const-string p2, "int configuration name not recognized"

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ga_trackingId"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Lcom/google/android/gms/internal/gtm/zzfr;

    iput-object p2, p1, Lcom/google/android/gms/internal/gtm/zzfr;->zza:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "ga_sampleFrequency"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Lcom/google/android/gms/internal/gtm/zzfr;

    .line 3
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/android/gms/internal/gtm/zzfr;->zzb:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error parsing ga_sampleFrequency value"

    .line 4
    invoke-virtual {p0, v0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzT(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p2, "string configuration name not recognized"

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
