.class public Lcom/startapps/crossx/view/CrossXApplication;
.super Landroid/app/Application;
.source "CrossXApplication.java"


# static fields
.field private static context:Landroid/content/Context;


# instance fields
.field private mTracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 104
    sget-object v0, Lcom/startapps/crossx/view/CrossXApplication;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 35
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method protected defineLoaderImage()V
    .locals 2

    .line 82
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/CrossXApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getDefaultConfiguration(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    return-void
.end method

.method public declared-synchronized getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;
    .locals 2

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/startapps/crossx/view/CrossXApplication;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-nez v0, :cond_0

    .line 96
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    const v1, 0x7f150002

    .line 98
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/CrossXApplication;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/CrossXApplication;->mTracker:Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 11

    .line 40
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 42
    sget-object v0, Lcom/startapps/crossx/controller/utils/ContextManager;->Companion:Lcom/startapps/crossx/controller/utils/ContextManager$Companion;

    invoke-virtual {v0, p0}, Lcom/startapps/crossx/controller/utils/ContextManager$Companion;->setContext(Lcom/startapps/crossx/view/CrossXApplication;)V

    .line 44
    sput-object p0, Lcom/startapps/crossx/view/CrossXApplication;->context:Landroid/content/Context;

    .line 45
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    const v1, 0x7f0a03d1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0a03d0

    const v5, 0x7f0a020c

    const v6, 0x7f0a0405

    const v7, 0x7f0a00b6

    const v8, 0x7f0a03cf

    const v9, 0x7f0a020c

    const v10, 0x7f0a0405

    .line 46
    invoke-static/range {v1 .. v10}, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->init(IIIIIIIIII)V

    .line 48
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCrashlyticsCollectionEnabled(Z)V

    .line 50
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 51
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/CrossXApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/Preference;->init(Landroid/content/Context;)V

    .line 54
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "box_id"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/drivemode/android/typeface/TypefaceHelper;->initialize(Landroid/app/Application;)V

    .line 64
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapps/crossx/controller/dao/DBManager;->init(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p0}, Lcom/startapps/crossx/view/CrossXApplication;->defineLoaderImage()V

    .line 66
    invoke-static {p0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 77
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->destroy()V

    .line 78
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
