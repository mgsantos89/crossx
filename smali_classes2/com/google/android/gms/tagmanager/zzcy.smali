.class final Lcom/google/android/gms/tagmanager/zzcy;
.super Lcom/google/android/gms/tagmanager/zzbu;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# static fields
.field private static final zza:Ljava/lang/String;

.field private static final zzb:Ljava/lang/String;

.field private static final zzc:Ljava/lang/String;

.field private static final zzd:Ljava/lang/String;

.field private static final zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zza;->zzN:Lcom/google/android/gms/internal/gtm/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zza;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcy;->zza:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzr:Lcom/google/android/gms/internal/gtm/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcy;->zzb:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzbF:Lcom/google/android/gms/internal/gtm/zzb;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcy;->zzc:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzbJ:Lcom/google/android/gms/internal/gtm/zzb;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcy;->zzd:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzaZ:Lcom/google/android/gms/internal/gtm/zzb;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcy;->zze:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcy;->zza:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzcy;->zzb:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzbu;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static final zzc(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final zzd(Ljava/lang/String;ILjava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-object p0

    :cond_0
    const-string p1, "\\\\"

    const-string v0, "\\"

    .line 1
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Character;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-object p0

    .line 5
    :cond_3
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfy;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string p2, "Joiner: unsupported encoding"

    .line 6
    invoke-static {p2, p1}, Lcom/google/android/gms/tagmanager/zzdh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/util/Map;)Lcom/google/android/gms/internal/gtm/zzak;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;)",
            "Lcom/google/android/gms/internal/gtm/zzak;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcy;->zzb:Ljava/lang/String;

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzak;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzb()Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v1, Lcom/google/android/gms/tagmanager/zzcy;->zzc:Ljava/lang/String;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzak;

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzfv;->zzn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    sget-object v2, Lcom/google/android/gms/tagmanager/zzcy;->zzd:Ljava/lang/String;

    .line 5
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzak;

    if-eqz v2, :cond_2

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzfv;->zzn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, "="

    :goto_1
    sget-object v3, Lcom/google/android/gms/tagmanager/zzcy;->zze:Ljava/lang/String;

    .line 7
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzak;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_6

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v7, "url"

    .line 9
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move p1, v4

    goto :goto_3

    :cond_3
    const-string v5, "backslash"

    .line 10
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/util/HashSet;

    .line 11
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 12
    invoke-static {v5, v1}, Lcom/google/android/gms/tagmanager/zzcy;->zzc(Ljava/util/Set;Ljava/lang/String;)V

    .line 13
    invoke-static {v5, v2}, Lcom/google/android/gms/tagmanager/zzcy;->zzc(Ljava/util/Set;Ljava/lang/String;)V

    const/16 p1, 0x5c

    .line 14
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move p1, v3

    goto :goto_3

    .line 32
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Joiner: unsupported escape type: "

    if-eqz v0, :cond_5

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzb()Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object p1

    return-object p1

    :cond_6
    move p1, v6

    .line 9
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzak;->zzO()I

    move-result v8

    const/4 v9, 0x0

    if-eq v8, v4, :cond_9

    if-eq v8, v3, :cond_7

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzfv;->zzn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0, p1, v5}, Lcom/google/android/gms/tagmanager/zzcy;->zzd(Ljava/lang/String;ILjava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 16
    :cond_7
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzak;->zzc()I

    move-result v3

    if-ge v9, v3, :cond_b

    if-lez v9, :cond_8

    .line 17
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_8
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/gtm/zzak;->zzk(I)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v3

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzfv;->zzn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/gtm/zzak;->zzl(I)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v4

    .line 21
    invoke-static {v4}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/tagmanager/zzfv;->zzn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-static {v3, p1, v5}, Lcom/google/android/gms/tagmanager/zzcy;->zzd(Ljava/lang/String;ILjava/util/Set;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {v4, p1, v5}, Lcom/google/android/gms/tagmanager/zzcy;->zzd(Ljava/lang/String;ILjava/util/Set;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzak;->zzr()Ljava/util/List;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzak;

    if-nez v6, :cond_a

    .line 26
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_a
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzfv;->zzn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {v2, p1, v5}, Lcom/google/android/gms/tagmanager/zzcy;->zzd(Ljava/lang/String;ILjava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v9

    goto :goto_5

    .line 31
    :cond_b
    :goto_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
