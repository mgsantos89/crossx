.class final Lcom/drivemode/android/typeface/TypefaceCache;
.super Ljava/lang/Object;
.source "TypefaceCache.java"


# static fields
.field private static sInstance:Lcom/drivemode/android/typeface/TypefaceCache;


# instance fields
.field private final mApplication:Landroid/app/Application;

.field private final mCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/drivemode/android/typeface/TypefaceCache;->mCache:Ljava/util/Hashtable;

    .line 25
    iput-object p1, p0, Lcom/drivemode/android/typeface/TypefaceCache;->mApplication:Landroid/app/Application;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/drivemode/android/typeface/TypefaceCache;
    .locals 2

    const-class v0, Lcom/drivemode/android/typeface/TypefaceCache;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/drivemode/android/typeface/TypefaceCache;->sInstance:Lcom/drivemode/android/typeface/TypefaceCache;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/drivemode/android/typeface/TypefaceCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-direct {v1, p0}, Lcom/drivemode/android/typeface/TypefaceCache;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/drivemode/android/typeface/TypefaceCache;->sInstance:Lcom/drivemode/android/typeface/TypefaceCache;

    .line 55
    :cond_0
    sget-object p0, Lcom/drivemode/android/typeface/TypefaceCache;->sInstance:Lcom/drivemode/android/typeface/TypefaceCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/drivemode/android/typeface/TypefaceCache;->mCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/drivemode/android/typeface/TypefaceCache;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :try_start_2
    iget-object v1, p0, Lcom/drivemode/android/typeface/TypefaceCache;->mCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 40
    :catch_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 44
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
