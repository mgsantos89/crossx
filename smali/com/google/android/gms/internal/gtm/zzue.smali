.class public final Lcom/google/android/gms/internal/gtm/zzue;
.super Lcom/google/android/gms/internal/gtm/zzuz;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzuz<",
        "Lcom/google/android/gms/internal/gtm/zzue;",
        "Lcom/google/android/gms/internal/gtm/zzud;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzwl;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzue;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Z

.field private zzh:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzue;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzue;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzue;->zza:Lcom/google/android/gms/internal/gtm/zzue;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzue;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzak(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzuz;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuz;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzue;->zzh:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzue;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zzue;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzue;->zza:Lcom/google/android/gms/internal/gtm/zzue;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x2

    if-eq p1, p3, :cond_4

    const/4 p3, 0x3

    if-eq p1, p3, :cond_3

    const/4 p3, 0x4

    const/4 v0, 0x0

    if-eq p1, p3, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzue;->zzh:B

    return-object v0

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzue;->zza:Lcom/google/android/gms/internal/gtm/zzue;

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzud;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzud;-><init>(Lcom/google/android/gms/internal/gtm/zztq;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzue;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzue;-><init>()V

    return-object p1

    :cond_4
    const-string p1, "zzf"

    const-string p2, "zzg"

    const-string p3, "zze"

    .line 0
    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzue;->zza:Lcom/google/android/gms/internal/gtm/zzue;

    new-instance p3, Lcom/google/android/gms/internal/gtm/zzwv;

    const-string v0, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001\u1508\u0000\u0002\u1507\u0001"

    .line 2
    invoke-direct {p3, p2, v0, p1}, Lcom/google/android/gms/internal/gtm/zzwv;-><init>(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzue;->zzh:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
