.class public Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;
.super Ljava/lang/Object;
.source "AnalyticsHelper.java"


# static fields
.field private static analyticsHelper:Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mTracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;
    .locals 1

    .line 26
    sget-object v0, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->analyticsHelper:Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    invoke-direct {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;-><init>()V

    sput-object v0, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->analyticsHelper:Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    .line 30
    :cond_0
    sget-object v0, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->analyticsHelper:Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 21
    sput-object p0, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public endActivity()V
    .locals 1

    .line 73
    sget-object v0, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V

    return-void
.end method

.method public declared-synchronized getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;
    .locals 2

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-nez v0, :cond_0

    .line 55
    sget-object v0, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    const v1, 0x7f150002

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->mTracker:Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public screenName(Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 36
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object p1

    .line 37
    invoke-virtual {p1, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object p1

    .line 38
    invoke-virtual {p1, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method public startActivity()V
    .locals 0

    return-void
.end method

.method public startActivity(Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->screenName(Ljava/lang/String;)V

    return-void
.end method
