.class public final Lcom/google/android/gms/internal/gtm/zztv;
.super Lcom/google/android/gms/internal/gtm/zzuz;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzuz<",
        "Lcom/google/android/gms/internal/gtm/zztv;",
        "Lcom/google/android/gms/internal/gtm/zztu;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzwl;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zztv;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zztv;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zztv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zztv;->zza:Lcom/google/android/gms/internal/gtm/zztv;

    const-class v1, Lcom/google/android/gms/internal/gtm/zztv;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzak(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzuz;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuz;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zztv;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zztv;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zztv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zztv;->zza:Lcom/google/android/gms/internal/gtm/zztv;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/gtm/zztv;->zza:Lcom/google/android/gms/internal/gtm/zztv;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zztu;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/gtm/zztu;-><init>(Lcom/google/android/gms/internal/gtm/zztq;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zztv;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zztv;-><init>()V

    return-object p1

    :cond_3
    const-string p1, "zzf"

    const-string p2, "zzg"

    const-string p3, "zze"

    .line 0
    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/gtm/zztv;->zza:Lcom/google/android/gms/internal/gtm/zztv;

    new-instance p3, Lcom/google/android/gms/internal/gtm/zzwv;

    const-string v0, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001"

    .line 2
    invoke-direct {p3, p2, v0, p1}, Lcom/google/android/gms/internal/gtm/zzwv;-><init>(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    :cond_4
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
