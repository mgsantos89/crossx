.class public final Lcom/startapps/crossx/view/activity/MainActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0014J\u0008\u0010\t\u001a\u00020\u0004H\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0014J\u0008\u0010\u000c\u001a\u00020\u0004H\u0002J\u0008\u0010\r\u001a\u00020\u0004H\u0016J\u0012\u0010\u000e\u001a\u00020\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/startapps/crossx/view/activity/MainActivity;",
        "Lcom/startapps/crossx/view/activity/AbstractActivity;",
        "()V",
        "paymentSettings",
        "",
        "getPaymentSettings",
        "()Lkotlin/Unit;",
        "configureMenuItems",
        "defineFonts",
        "endLoader",
        "getToLayoutInflate",
        "",
        "goToHomeActivity",
        "initLoader",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MainActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    return-void
.end method

.method private final configureMenuItems()V
    .locals 4

    .line 54
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string/jumbo v1, "timeline"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/Preference;->setBoolean(Ljava/lang/String;Z)V

    .line 55
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string v1, "day_training"

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/Preference;->setBoolean(Ljava/lang/String;Z)V

    .line 56
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string v1, "calendar"

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/Preference;->setBoolean(Ljava/lang/String;Z)V

    .line 57
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string v1, "checkin"

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/Preference;->setBoolean(Ljava/lang/String;Z)V

    .line 58
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string v1, "personal_records"

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/Preference;->setBoolean(Ljava/lang/String;Z)V

    .line 59
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string v1, "athletes"

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/Preference;->setBoolean(Ljava/lang/String;Z)V

    .line 60
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string/jumbo v1, "timers"

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/Preference;->setBoolean(Ljava/lang/String;Z)V

    .line 61
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string v1, "payments"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/startapps/crossx/controller/utils/Preference;->setBoolean(Ljava/lang/String;Z)V

    .line 62
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string v1, "championship"

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/Preference;->setBoolean(Ljava/lang/String;Z)V

    .line 63
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string v1, "store"

    invoke-virtual {v0, v1, v3}, Lcom/startapps/crossx/controller/utils/Preference;->setBoolean(Ljava/lang/String;Z)V

    .line 64
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string v1, "settings"

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/Preference;->setBoolean(Ljava/lang/String;Z)V

    .line 65
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string v1, "datasheet"

    invoke-virtual {v0, v1, v3}, Lcom/startapps/crossx/controller/utils/Preference;->setBoolean(Ljava/lang/String;Z)V

    .line 66
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string v1, "ecommerce"

    invoke-virtual {v0, v1, v3}, Lcom/startapps/crossx/controller/utils/Preference;->setBoolean(Ljava/lang/String;Z)V

    .line 67
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1, v3}, Lcom/startapps/crossx/controller/utils/Preference;->setBoolean(Ljava/lang/String;Z)V

    .line 68
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1, v3}, Lcom/startapps/crossx/controller/utils/Preference;->setBoolean(Ljava/lang/String;Z)V

    .line 69
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string v1, "classes"

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/Preference;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private final goToHomeActivity()V
    .locals 1

    .line 154
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToHome(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/MainActivity;->finish()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MainActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MainActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
.end method

.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method public final getPaymentSettings()Lkotlin/Unit;
    .locals 3

    .line 149
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string v1, "payments"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/Preference;->setBoolean(Ljava/lang/String;Z)V

    .line 150
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/MainActivity;->goToHomeActivity()V

    .line 151
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d0072

    return v0
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 25
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0072

    .line 26
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/MainActivity;->setContentView(I)V

    .line 27
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/startapps/crossx/controller/service/ChronometerService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 29
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/services/PaymentPollingService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 31
    sget-object p1, Lcom/startapps/crossx/controller/utils/Preference;->VERSION:Ljava/lang/Integer;

    .line 32
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    const-string v2, "VERSION_APP"

    invoke-virtual {v1, v2}, Lcom/startapps/crossx/controller/utils/Preference;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-nez p1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 35
    :goto_0
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->clearPreference()V

    .line 36
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    const-string/jumbo v3, "versionApp"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/startapps/crossx/controller/utils/Preference;->setInteger(Ljava/lang/String;I)V

    .line 37
    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToLogin(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 38
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/MainActivity;->finish()V

    .line 41
    :cond_1
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 42
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/MainActivity;->configureMenuItems()V

    .line 43
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/MainActivity;->getPaymentSettings()Lkotlin/Unit;

    goto :goto_1

    .line 45
    :cond_2
    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToLogin(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/MainActivity;->finish()V

    :goto_1
    return-void
.end method
