.class public Lcom/startapps/crossx/view/activity/HomeActivity;
.super Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;
.source "HomeActivity.kt"

# interfaces
.implements Lcom/startapps/crossx/modules/timeline/TimeLineFragment$OnclickTimeLineButton;
.implements Lcom/startapps/crossx/modules/wod/DayTrainingFragment$OnclickDayTrainingButton;
.implements Lcom/startapps/crossx/Interfaces/OnCLickPersonalRecordListener;
.implements Lcom/startapps/crossx/Interfaces/OnNotificationListener;
.implements Lcom/startapps/crossx/Interfaces/DialogCustomPaymentsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/activity/HomeActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00be\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u000e\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 z2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0001zB\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u00104\u001a\u000201H\u0016J\u0008\u00105\u001a\u000201H\u0002J\u0010\u00106\u001a\u0002012\u0006\u00107\u001a\u00020#H\u0016J\u0008\u00108\u001a\u000201H\u0014J\u0008\u00109\u001a\u000201H\u0004J\u0010\u0010:\u001a\u0002012\u0006\u00107\u001a\u00020#H\u0016J\u0008\u0010;\u001a\u000201H\u0016J\u0010\u0010<\u001a\u0002012\u0006\u0010=\u001a\u00020>H\u0002J\u0008\u0010?\u001a\u00020\u001fH\u0014J\u0008\u0010@\u001a\u00020>H\u0014J\u0008\u0010A\u001a\u00020>H\u0014J\u0008\u0010B\u001a\u00020\u001dH\u0014J\u0008\u0010C\u001a\u00020)H\u0016J\u0008\u0010D\u001a\u000201H\u0002J\u0008\u0010E\u001a\u000201H\u0016J\u0008\u0010F\u001a\u000201H\u0016J\"\u0010G\u001a\u0002012\u0006\u0010H\u001a\u00020>2\u0006\u0010I\u001a\u00020>2\u0008\u0010J\u001a\u0004\u0018\u00010KH\u0014J\u0008\u0010L\u001a\u000201H\u0016J\u0012\u0010M\u001a\u0002012\u0008\u0010N\u001a\u0004\u0018\u00010OH\u0014J\u0010\u0010P\u001a\u00020\t2\u0006\u0010Q\u001a\u00020RH\u0016J\u0008\u0010S\u001a\u000201H\u0014J\u0010\u0010T\u001a\u0002012\u0006\u0010U\u001a\u00020KH\u0016J\u0008\u0010V\u001a\u000201H\u0016J\u0008\u0010W\u001a\u000201H\u0016J\u0008\u0010X\u001a\u000201H\u0016J\u0008\u0010Y\u001a\u000201H\u0016J\u0010\u0010Z\u001a\u00020\t2\u0006\u0010[\u001a\u00020\\H\u0016J-\u0010]\u001a\u0002012\u0006\u0010H\u001a\u00020>2\u000e\u0010^\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110_2\u0006\u0010`\u001a\u00020aH\u0016\u00a2\u0006\u0002\u0010bJ\u0008\u0010c\u001a\u000201H\u0014J\u0010\u0010d\u001a\u0002012\u0006\u0010e\u001a\u00020>H\u0014J\u0008\u0010f\u001a\u000201H\u0016J\u0008\u0010g\u001a\u000201H\u0016J\u0008\u0010h\u001a\u000201H\u0016J\u0008\u0010i\u001a\u000201H\u0014J\u0008\u0010j\u001a\u000201H\u0002J\u0010\u0010k\u001a\u0002012\u0006\u00107\u001a\u00020#H\u0016J/\u0010l\u001a\u0002012\u0006\u0010m\u001a\u00020>2\u0008\u0010=\u001a\u0004\u0018\u00010>2\u0006\u0010n\u001a\u00020>2\u0006\u0010o\u001a\u00020pH\u0002\u00a2\u0006\u0002\u0010qJ\u0008\u0010r\u001a\u000201H\u0004J\u000e\u0010s\u001a\u0002012\u0006\u0010t\u001a\u00020uJ\u0008\u0010v\u001a\u000201H\u0004J\u0008\u0010w\u001a\u000201H\u0002J\u0010\u0010x\u001a\u0002012\u0006\u0010$\u001a\u00020%H\u0016J\u0008\u0010y\u001a\u000201H\u0004R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010*\u001a\u0004\u0018\u00010+X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u0014\u00100\u001a\u0002018DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u00103\u00a8\u0006{"
    }
    d2 = {
        "Lcom/startapps/crossx/view/activity/HomeActivity;",
        "Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;",
        "Lcom/startapps/crossx/modules/timeline/TimeLineFragment$OnclickTimeLineButton;",
        "Lcom/startapps/crossx/modules/wod/DayTrainingFragment$OnclickDayTrainingButton;",
        "Lcom/startapps/crossx/Interfaces/OnCLickPersonalRecordListener;",
        "Lcom/startapps/crossx/Interfaces/OnNotificationListener;",
        "Lcom/startapps/crossx/Interfaces/DialogCustomPaymentsListener;",
        "()V",
        "askNotification",
        "",
        "broadcastReceiver",
        "Landroid/content/BroadcastReceiver;",
        "getBroadcastReceiver",
        "()Landroid/content/BroadcastReceiver;",
        "setBroadcastReceiver",
        "(Landroid/content/BroadcastReceiver;)V",
        "currentImageProfileUrl",
        "",
        "getCurrentImageProfileUrl",
        "()Ljava/lang/String;",
        "setCurrentImageProfileUrl",
        "(Ljava/lang/String;)V",
        "headerView",
        "Landroid/view/View;",
        "getHeaderView",
        "()Landroid/view/View;",
        "setHeaderView",
        "(Landroid/view/View;)V",
        "listView",
        "Landroid/widget/ListView;",
        "mDrawerLayout",
        "Landroidx/drawerlayout/widget/DrawerLayout;",
        "mViewModel",
        "Lcom/startapps/crossx/viewmodel/HomeViewModel;",
        "membershipId",
        "",
        "notification",
        "Lcom/startapps/crossx/model/Notification;",
        "progressDialog",
        "Landroid/app/ProgressDialog;",
        "toolbar",
        "Landroidx/appcompat/widget/Toolbar;",
        "userRequester",
        "Lcom/startapps/crossx/controller/network/requests/UserRequester;",
        "getUserRequester",
        "()Lcom/startapps/crossx/controller/network/requests/UserRequester;",
        "setUserRequester",
        "(Lcom/startapps/crossx/controller/network/requests/UserRequester;)V",
        "userRole",
        "",
        "getUserRole",
        "()Lkotlin/Unit;",
        "OnCLickPersonalRecord",
        "askNotificationPermission",
        "changeCardPayments",
        "id",
        "defineFonts",
        "defineHeader",
        "enableAutomaticPayments",
        "endLoader",
        "getBoxData",
        "boxId",
        "",
        "getToDrawerLayout",
        "getToIdFragment",
        "getToLayoutInflate",
        "getToListView",
        "getToToolbar",
        "hideLoading",
        "initLoader",
        "notAskAgainPayments",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "onDestroy",
        "onNewIntent",
        "newIntent",
        "onNotificationCheckIn",
        "onNotificationRanking",
        "onNotificationTimeLine",
        "onNotificationTraining",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "onRequestPermissionsResult",
        "permissions",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
        "onSwicthFragment",
        "codFrag",
        "onclickCheckinButton",
        "onclickTimeLineButton",
        "openNotificationsFragment",
        "openingMenuDrawer",
        "registerAdapter",
        "registerCardPayments",
        "runTerm",
        "userId",
        "role",
        "version",
        "",
        "(ILjava/lang/Integer;ID)V",
        "setCurrentProfile",
        "setEnableRecurrence",
        "creditCard",
        "Lcom/startapps/crossx/model/CreditCard;",
        "showBillingAddressRegister",
        "showLoading",
        "toPayNowPayments",
        "validBillingAddressRegister",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/startapps/crossx/view/activity/HomeActivity$Companion;

.field public static final EXTRA_ACTION_CHANGE_CARD:Ljava/lang/String; = "action_change_card"

.field public static final EXTRA_CLOSE_DIALOG:Ljava/lang/String; = "dialog"

.field public static final EXTRA_ENABLE_CARD:Ljava/lang/String; = "enable_card"

.field public static final EXTRA_FRAGMENT:Ljava/lang/String; = "extra-fragment"

.field public static final EXTRA_TO_PAY_NOW:Ljava/lang/String; = "to_pay_now"

.field public static final REQUEST_NOTIFICATION_PERMISSION:I = 0xdd5e759


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

.field private askNotification:Z

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private currentImageProfileUrl:Ljava/lang/String;

.field private headerView:Landroid/view/View;

.field public listView:Landroid/widget/ListView;

.field public mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private mViewModel:Lcom/startapps/crossx/viewmodel/HomeViewModel;

.field private membershipId:J

.field private notification:Lcom/startapps/crossx/model/Notification;

.field private progressDialog:Landroid/app/ProgressDialog;

.field public toolbar:Landroidx/appcompat/widget/Toolbar;

.field private userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;


# direct methods
.method public static synthetic $r8$lambda$TdMddE63C2prpv7IN-_7GgVlr8s(Lcom/startapps/crossx/view/activity/HomeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/HomeActivity;->defineHeader$lambda-0(Lcom/startapps/crossx/view/activity/HomeActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/startapps/crossx/view/activity/HomeActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapps/crossx/view/activity/HomeActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/startapps/crossx/view/activity/HomeActivity;->Companion:Lcom/startapps/crossx/view/activity/HomeActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;-><init>()V

    .line 63
    new-instance v0, Lcom/startapps/crossx/view/activity/HomeActivity$broadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/HomeActivity$broadcastReceiver$1;-><init>(Lcom/startapps/crossx/view/activity/HomeActivity;)V

    check-cast v0, Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static final synthetic access$getBoxData(Lcom/startapps/crossx/view/activity/HomeActivity;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/HomeActivity;->getBoxData(I)V

    return-void
.end method

.method public static final synthetic access$getMViewModel$p(Lcom/startapps/crossx/view/activity/HomeActivity;)Lcom/startapps/crossx/viewmodel/HomeViewModel;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->mViewModel:Lcom/startapps/crossx/viewmodel/HomeViewModel;

    return-object p0
.end method

.method public static final synthetic access$hideLoading(Lcom/startapps/crossx/view/activity/HomeActivity;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->hideLoading()V

    return-void
.end method

.method public static final synthetic access$runTerm(Lcom/startapps/crossx/view/activity/HomeActivity;ILjava/lang/Integer;ID)V
    .locals 0

    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/startapps/crossx/view/activity/HomeActivity;->runTerm(ILjava/lang/Integer;ID)V

    return-void
.end method

.method private final askNotificationPermission()V
    .locals 3

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->askNotification:Z

    .line 211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 212
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 215
    sget-object v0, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService;->Companion:Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;

    invoke-virtual {v0}, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;->sendRegistrationToServer()V

    goto :goto_0

    .line 218
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 219
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const v2, 0xdd5e759

    .line 217
    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 225
    :cond_1
    sget-object v0, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService;->Companion:Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;

    invoke-virtual {v0}, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;->sendRegistrationToServer()V

    :goto_0
    return-void
.end method

.method private static final defineHeader$lambda-0(Lcom/startapps/crossx/view/activity/HomeActivity;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    sget-object p1, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->PROFILE:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/HomeActivity;->swicthFragment(Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)V

    return-void
.end method

.method private final getBoxData(I)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->mViewModel:Lcom/startapps/crossx/viewmodel/HomeViewModel;

    if-nez v0, :cond_0

    const-string v0, "mViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/startapps/crossx/viewmodel/HomeViewModel;->getBox(I)V

    return-void
.end method

.method private final hideLoading()V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    return-void
.end method

.method private final registerAdapter()V
    .locals 2

    .line 418
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/startapps/crossx/viewmodel/HomeViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).\u2026omeViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/startapps/crossx/viewmodel/HomeViewModel;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->mViewModel:Lcom/startapps/crossx/viewmodel/HomeViewModel;

    return-void
.end method

.method private final runTerm(ILjava/lang/Integer;ID)V
    .locals 10

    .line 286
    sget-object v0, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    new-instance v9, Lcom/startapps/crossx/view/activity/HomeActivity$runTerm$1;

    move-object v2, v9

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/startapps/crossx/view/activity/HomeActivity$runTerm$1;-><init>(Lcom/startapps/crossx/view/activity/HomeActivity;ILjava/lang/Integer;ID)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v9}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showTerm(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final showLoading()V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x7f1202ae

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public static final startActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/startapps/crossx/view/activity/HomeActivity;->Companion:Lcom/startapps/crossx/view/activity/HomeActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/startapps/crossx/view/activity/HomeActivity$Companion;->startActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final startActivity(Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;Lcom/startapps/crossx/model/Notification;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/startapps/crossx/view/activity/HomeActivity;->Companion:Lcom/startapps/crossx/view/activity/HomeActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/startapps/crossx/view/activity/HomeActivity$Companion;->startActivity(Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;Lcom/startapps/crossx/model/Notification;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public OnCLickPersonalRecord()V
    .locals 2

    .line 407
    sget-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->DATASHEET:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/HomeActivity;->swicthFragment(Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)V

    const-string v0, "datasheet"

    .line 408
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->currentFragment:Ljava/lang/String;

    const/4 v1, 0x2

    .line 409
    invoke-static {v1}, Lcom/startapps/crossx/view/fragment/DataSheetFragment;->newInstace(I)Lcom/startapps/crossx/view/fragment/DataSheetFragment;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v1, v0}, Lcom/startapps/crossx/view/activity/HomeActivity;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const v0, 0x7f1201b8

    .line 410
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/HomeActivity;->setTitleActionBar(Ljava/lang/String;)V

    return-void
.end method

.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/HomeActivity;->findViewById(I)Landroid/view/View;

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

.method public changeCardPayments(J)V
    .locals 0

    .line 439
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/activity/HomeActivity;->enableAutomaticPayments(J)V

    return-void
.end method

.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method protected final defineHeader()V
    .locals 3

    .line 338
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00a4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->headerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 339
    new-instance v1, Lcom/startapps/crossx/view/activity/HomeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/HomeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/startapps/crossx/view/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->listView:Landroid/widget/ListView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->headerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public enableAutomaticPayments(J)V
    .locals 1

    .line 422
    iput-wide p1, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->membershipId:J

    .line 423
    new-instance p1, Landroid/content/Intent;

    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    const-class v0, Lcom/startapps/crossx/view/activity/CardsActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "list_cards"

    const-string v0, "from_card_choose"

    .line 424
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x64

    .line 423
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/activity/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public endLoader()V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getCurrentFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->endLoader()V

    :cond_0
    return-void
.end method

.method public final getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method protected final getCurrentImageProfileUrl()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->currentImageProfileUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected final getHeaderView()Landroid/view/View;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->headerView:Landroid/view/View;

    return-object v0
.end method

.method protected getToDrawerLayout()Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected getToIdFragment()I
    .locals 1

    const v0, 0x7f0a01b4

    return v0
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d0034

    return v0
.end method

.method protected getToListView()Landroid/widget/ListView;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->listView:Landroid/widget/ListView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getToToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected final getUserRequester()Lcom/startapps/crossx/controller/network/requests/UserRequester;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    return-object v0
.end method

.method protected final getUserRole()Lkotlin/Unit;
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v2, Lcom/startapps/crossx/view/activity/HomeActivity$userRole$1;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/view/activity/HomeActivity$userRole$1;-><init>(Lcom/startapps/crossx/view/activity/HomeActivity;)V

    check-cast v2, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;

    invoke-direct {v1, v2}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/network/requests/UserRequester;->userRole(Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    .line 404
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public initLoader()V
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getCurrentFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->initLoader()V

    :cond_0
    return-void
.end method

.method public notAskAgainPayments()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 455
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 457
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "credit_card_extra"

    .line 458
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    check-cast p1, Lcom/startapps/crossx/model/CreditCard;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/HomeActivity;->setEnableRecurrence(Lcom/startapps/crossx/model/CreditCard;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.startapps.crossx.model.CreditCard"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 270
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->tagFirstFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->onBackPressed()V

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->backToInitFragment()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 152
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lio/realm/Realm;->init(Landroid/content/Context;)V

    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "broadcast_payment_polling"

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    const-string v2, "getInstance(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 158
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCreate HomeActivity "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/Logger;->d(Ljava/lang/String;)V

    .line 161
    new-instance p1, Lcom/startapps/crossx/controller/network/requests/UserRequester;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/startapps/crossx/controller/network/requests/UserRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    .line 163
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->defineHeader()V

    .line 164
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->setCurrentProfile()V

    .line 165
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->registerAdapter()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 280
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    const-string v1, "getInstance(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 282
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "newIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 246
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/HomeActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onNotificationCheckIn()V
    .locals 0

    return-void
.end method

.method public onNotificationRanking()V
    .locals 0

    return-void
.end method

.method public onNotificationTimeLine()V
    .locals 0

    return-void
.end method

.method public onNotificationTraining()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 170
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->onResume()V

    .line 180
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.startapps.crossx.model.Notification"

    if-eqz v0, :cond_6

    .line 181
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "dialog"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 183
    new-instance v0, Landroid/content/Intent;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/startapps/crossx/view/activity/MembershipActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "action_change_card"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/startapps/crossx/model/Notification;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->notification:Lcom/startapps/crossx/model/Notification;

    .line 186
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->notification:Lcom/startapps/crossx/model/Notification;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->products:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/Product;

    iget-wide v2, v0, Lcom/startapps/crossx/model/Product;->id:J

    invoke-virtual {p0, v2, v3}, Lcom/startapps/crossx/view/activity/HomeActivity;->changeCardPayments(J)V

    goto/16 :goto_0

    .line 185
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "enable_card"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/startapps/crossx/model/Notification;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->notification:Lcom/startapps/crossx/model/Notification;

    .line 190
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->notification:Lcom/startapps/crossx/model/Notification;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->products:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/Product;

    iget-wide v3, v0, Lcom/startapps/crossx/model/Product;->id:J

    invoke-virtual {p0, v3, v4}, Lcom/startapps/crossx/view/activity/HomeActivity;->enableAutomaticPayments(J)V

    .line 192
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_4
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "to_pay_now"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 194
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Lcom/startapps/crossx/model/Notification;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->notification:Lcom/startapps/crossx/model/Notification;

    .line 195
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->notification:Lcom/startapps/crossx/model/Notification;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->notification:Lcom/startapps/crossx/model/Notification;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/startapps/crossx/model/Notification;->products:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/Product;

    iget-wide v2, v2, Lcom/startapps/crossx/model/Product;->id:J

    iput-wide v2, v0, Lcom/startapps/crossx/model/Notification;->membershipId:J

    .line 197
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->notification:Lcom/startapps/crossx/model/Notification;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/HomeActivity;->toPayNowPayments(Lcom/startapps/crossx/model/Notification;)V

    goto :goto_0

    .line 194
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getUserRole()Lkotlin/Unit;

    .line 201
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->isTokenSent()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->askNotification:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->askNotificationPermission()V

    .line 202
    :cond_7
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_notification"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 203
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Lcom/startapps/crossx/model/Notification;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->notification:Lcom/startapps/crossx/model/Notification;

    .line 204
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 205
    new-instance v0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->notification:Lcom/startapps/crossx/model/Notification;

    move-object v3, p0

    check-cast v3, Lcom/startapps/crossx/Interfaces/DialogCustomPaymentsListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;-><init>(Landroid/app/Activity;Lcom/startapps/crossx/model/Notification;Lcom/startapps/crossx/Interfaces/DialogCustomPaymentsListener;)V

    goto :goto_1

    .line 203
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_1
    return-void
.end method

.method protected onSwicthFragment(I)V
    .locals 0

    return-void
.end method

.method public onclickCheckinButton()V
    .locals 1

    .line 489
    sget-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->CHECKIN:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/HomeActivity;->swicthFragment(Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)V

    return-void
.end method

.method public onclickTimeLineButton()V
    .locals 1

    .line 250
    sget-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->DAY_TRAINING:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/HomeActivity;->swicthFragment(Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)V

    return-void
.end method

.method public openNotificationsFragment()V
    .locals 1

    .line 254
    sget-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->NOTIFICATION:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/HomeActivity;->swicthFragment(Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)V

    return-void
.end method

.method protected openingMenuDrawer()V
    .locals 0

    .line 148
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->setCurrentProfile()V

    return-void
.end method

.method public registerCardPayments(J)V
    .locals 3

    .line 428
    iput-wide p1, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->membershipId:J

    .line 429
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/startapps/crossx/view/activity/RegisterCardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "membership_id_extra"

    .line 430
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x64

    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/activity/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final setBroadcastReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method protected final setCurrentImageProfileUrl(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->currentImageProfileUrl:Ljava/lang/String;

    return-void
.end method

.method protected final setCurrentProfile()V
    .locals 6

    .line 298
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->currentImageProfileUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    .line 301
    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object v2

    .line 302
    iget-object v3, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->headerView:Landroid/view/View;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v4, 0x7f0a0218

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_f

    check-cast v3, Landroid/widget/ImageView;

    .line 303
    invoke-static {}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getCircularOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    .line 300
    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 304
    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->currentImageProfileUrl:Ljava/lang/String;

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->headerView:Landroid/view/View;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x7f0a0302

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.TextView"

    if-eqz v1, :cond_e

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getName()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->headerView:Landroid/view/View;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v3, 0x7f0a0311

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getNicknameOrName()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v1

    const v3, 0x7f0a007c

    if-eqz v1, :cond_3

    .line 309
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->headerView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_3
    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getUserStatus()Ljava/lang/String;

    move-result-object v1

    const-string v5, "0"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 311
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->headerView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->headerView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "Aguardando aprova\u00e7\u00e3o"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_6
    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getUserStatus()Ljava/lang/String;

    move-result-object v1

    const-string v5, "3"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 314
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->headerView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->headerView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "Inativo"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_9
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->headerView:Landroid/view/View;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->headerView:Landroid/view/View;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/BoxModel;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_a
    const-string v0, ""

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setEnableRecurrence(Lcom/startapps/crossx/model/CreditCard;)V
    .locals 8

    const-string v0, "creditCard"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->notification:Lcom/startapps/crossx/model/Notification;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->products:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->showLoading()V

    .line 465
    new-instance v2, Lcom/startapps/crossx/rest/clients/PaymentClient;

    invoke-direct {v2}, Lcom/startapps/crossx/rest/clients/PaymentClient;-><init>()V

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->notification:Lcom/startapps/crossx/model/Notification;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->products:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/Product;

    iget-wide v3, v0, Lcom/startapps/crossx/model/Product;->id:J

    iget-wide v5, p1, Lcom/startapps/crossx/model/CreditCard;->id:J

    new-instance p1, Lcom/startapps/crossx/view/activity/HomeActivity$setEnableRecurrence$1;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/view/activity/HomeActivity$setEnableRecurrence$1;-><init>(Lcom/startapps/crossx/view/activity/HomeActivity;)V

    move-object v7, p1

    check-cast v7, Lcom/startapps/crossx/rest/callback/SimpleCallback;

    invoke-virtual/range {v2 .. v7}, Lcom/startapps/crossx/rest/clients/PaymentClient;->setEnableRecurrence(JJLcom/startapps/crossx/rest/callback/SimpleCallback;)V

    :cond_0
    return-void
.end method

.method protected final setHeaderView(Landroid/view/View;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->headerView:Landroid/view/View;

    return-void
.end method

.method protected final setUserRequester(Lcom/startapps/crossx/controller/network/requests/UserRequester;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    return-void
.end method

.method protected final showBillingAddressRegister()V
    .locals 1

    .line 334
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToBillingAddressRegister(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public toPayNowPayments(Lcom/startapps/crossx/model/Notification;)V
    .locals 4

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 435
    new-instance v1, Lcom/startapps/crossx/model/Membership;

    iget-wide v2, p1, Lcom/startapps/crossx/model/Notification;->membershipId:J

    iget-object p1, p1, Lcom/startapps/crossx/model/Notification;->value:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p1}, Lcom/startapps/crossx/model/Membership;-><init>(JLjava/lang/String;)V

    check-cast v1, Ljava/io/Serializable;

    const-string p1, "membership_extra"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    .line 434
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected final validBillingAddressRegister()V
    .locals 2

    .line 328
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getOpenAddressForm()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "getInstance().openAddressForm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/HomeActivity;->showBillingAddressRegister()V

    :cond_0
    return-void
.end method
