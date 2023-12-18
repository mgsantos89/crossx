.class public final Lcom/startapps/crossx/AnalyticsTrackers;
.super Ljava/lang/Object;
.source "AnalyticsTrackers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/AnalyticsTrackers$Target;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/startapps/crossx/AnalyticsTrackers;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/startapps/crossx/AnalyticsTrackers$Target;",
            "Lcom/google/android/gms/analytics/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/AnalyticsTrackers;->mTrackers:Ljava/util/Map;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/AnalyticsTrackers;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/startapps/crossx/AnalyticsTrackers;
    .locals 3

    const-class v0, Lcom/startapps/crossx/AnalyticsTrackers;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/startapps/crossx/AnalyticsTrackers;->sInstance:Lcom/startapps/crossx/AnalyticsTrackers;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 43
    monitor-exit v0

    return-object v1

    .line 40
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Call initialize() before getInstance()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/startapps/crossx/AnalyticsTrackers;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/startapps/crossx/AnalyticsTrackers;->sInstance:Lcom/startapps/crossx/AnalyticsTrackers;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/startapps/crossx/AnalyticsTrackers;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/AnalyticsTrackers;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/startapps/crossx/AnalyticsTrackers;->sInstance:Lcom/startapps/crossx/AnalyticsTrackers;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v0

    return-void

    .line 32
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Extra call to initialize analytics trackers"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized get(Lcom/startapps/crossx/AnalyticsTrackers$Target;)Lcom/google/android/gms/analytics/Tracker;
    .locals 3

    const-string v0, "Unhandled analytics target "

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/startapps/crossx/AnalyticsTrackers;->mTrackers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    sget-object v1, Lcom/startapps/crossx/AnalyticsTrackers$1;->$SwitchMap$com$startapps$crossx$AnalyticsTrackers$Target:[I

    invoke-virtual {p1}, Lcom/startapps/crossx/AnalyticsTrackers$Target;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 61
    iget-object v0, p0, Lcom/startapps/crossx/AnalyticsTrackers;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    const/high16 v1, 0x7f150000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/startapps/crossx/AnalyticsTrackers;->mTrackers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/startapps/crossx/AnalyticsTrackers;->mTrackers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
