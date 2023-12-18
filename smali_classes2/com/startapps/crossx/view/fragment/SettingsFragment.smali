.class public final Lcom/startapps/crossx/view/fragment/SettingsFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractFragment;
.source "SettingsFragment.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010$\u001a\u00020%H\u0016J\u0008\u0010&\u001a\u00020\'H\u0014J\u0010\u0010(\u001a\u00020%2\u0006\u0010)\u001a\u00020*H\u0002J\u0008\u0010+\u001a\u00020%H\u0016J\u0018\u0010,\u001a\u00020%2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200H\u0016J\u0008\u00101\u001a\u00020%H\u0002J\u0008\u00102\u001a\u00020%H\u0002J\u0008\u00103\u001a\u00020%H\u0002J&\u00104\u001a\u0004\u0018\u00010*2\u0006\u00105\u001a\u0002062\u0008\u00107\u001a\u0004\u0018\u0001082\u0008\u00109\u001a\u0004\u0018\u00010:H\u0016J\u0008\u0010;\u001a\u00020%H\u0016J\u0008\u0010<\u001a\u00020%H\u0002J\u001a\u0010=\u001a\u00020%2\u0006\u0010)\u001a\u00020*2\u0008\u00109\u001a\u0004\u0018\u00010:H\u0016J\u0008\u0010>\u001a\u00020%H\u0002J\u0008\u0010?\u001a\u00020%H\u0002J\u0008\u0010@\u001a\u00020%H\u0002J\u0008\u0010A\u001a\u00020%H\u0002J\u0010\u0010B\u001a\u00020%2\u0006\u0010C\u001a\u00020\'H\u0002J\u0008\u0010D\u001a\u00020%H\u0002J\u0008\u0010E\u001a\u00020%H\u0002J\u0010\u0010F\u001a\u00020%2\u0006\u0010C\u001a\u00020\'H\u0002R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u000e\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000bR\u0011\u0010\u0010\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000bR\u0011\u0010\u0012\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000bR\u0011\u0010\u0014\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u000bR\u0011\u0010\u0016\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u000bR\u0011\u0010\u0018\u001a\u00020\u00198F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u000e\u0010\"\u001a\u00020#X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006G"
    }
    d2 = {
        "Lcom/startapps/crossx/view/fragment/SettingsFragment;",
        "Lcom/startapps/crossx/view/fragment/base/AbstractFragment;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "()V",
        "deleteAccount",
        "Landroid/widget/TextView;",
        "getDeleteAccount",
        "()Landroid/widget/TextView;",
        "layoutAbout",
        "Landroid/widget/RelativeLayout;",
        "getLayoutAbout",
        "()Landroid/widget/RelativeLayout;",
        "layoutConversor",
        "getLayoutConversor",
        "layoutGlossary",
        "getLayoutGlossary",
        "layoutLogout",
        "getLayoutLogout",
        "layoutNotification",
        "getLayoutNotification",
        "layoutPrivacity",
        "getLayoutPrivacity",
        "layoutUnity",
        "getLayoutUnity",
        "switchNoticafication",
        "Landroid/widget/Switch;",
        "getSwitchNoticafication",
        "()Landroid/widget/Switch;",
        "userRequester",
        "Lcom/startapps/crossx/controller/network/requests/UserRequester;",
        "getUserRequester",
        "()Lcom/startapps/crossx/controller/network/requests/UserRequester;",
        "setUserRequester",
        "(Lcom/startapps/crossx/controller/network/requests/UserRequester;)V",
        "viewModelProvider",
        "Lcom/startapps/crossx/viewmodel/SettingsFragmentViewModel;",
        "endLoader",
        "",
        "getLayoutToInflate",
        "",
        "inflateViewGlossary",
        "view",
        "Landroid/view/View;",
        "initLoader",
        "onCheckedChanged",
        "buttonView",
        "Landroid/widget/CompoundButton;",
        "isChecked",
        "",
        "onClickDeleteAccount",
        "onClickLayoutConversor",
        "onClickTerms",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onFeedbackClick",
        "onViewCreated",
        "registerClicks",
        "setAboutClick",
        "setGlossaryClick",
        "setLogoutClick",
        "setPrivacity",
        "i",
        "setPrivacityClick",
        "setUnityClick",
        "showDialogPrivacity",
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

.field private userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

.field private viewModelProvider:Lcom/startapps/crossx/viewmodel/SettingsFragmentViewModel;


# direct methods
.method public static synthetic $r8$lambda$5PiixBqxgSxMAK37tCp9VQP-Vas(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->registerClicks$lambda-3(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7NXeiS1F4O2g272_TO029RAZODo(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->registerClicks$lambda-7(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AU_Ie9usvUUsA5IL7tJTiv_PZiI(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->registerClicks$lambda-8(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FV9lthqPbnX54Z-WLSX9tpYlU4Y(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->registerClicks$lambda-9(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fw89Eod-sBoE4rOb_sfwIUTimT8(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->registerClicks$lambda-2(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZmOEW0fOcW_II9fgTTIwwCwzsvw(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->registerClicks$lambda-4(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gxISaezvQkHkG8d1amEwLaJhvJI(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->onClickDeleteAccount$lambda-11(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iaN1QKoY99505_1SlFhHbuwSn0M(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->registerClicks$lambda-5(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$poxTuRssHA1CZN_Ndl8YJdc6Ttw(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->onClickDeleteAccount$lambda-10(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$q523f8PTnwzqe4cgIJKY3nEwBxI(Lcom/startapps/crossx/view/fragment/SettingsFragment;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->setPrivacityClick$lambda-13(Lcom/startapps/crossx/view/fragment/SettingsFragment;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ti24CsdwCnMttp-3rkT9nuBf_Ss(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->setUnityClick$lambda-12(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$w7ni9T_Wuhu7eKYDIG5-1BULjI8(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->registerClicks$lambda-6(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xw0ftIH0J_jp97beYCZxvHCE0hc(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->registerClicks$lambda-1(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/SettingsFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$setLogoutClick(Lcom/startapps/crossx/view/fragment/SettingsFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->setLogoutClick()V

    return-void
.end method

.method private final inflateViewGlossary(Landroid/view/View;)V
    .locals 6

    .line 254
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1201d0

    .line 255
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 256
    invoke-virtual {v0, p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(Landroid/view/View;Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f060034

    .line 257
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f120188

    .line 258
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    const v0, 0x7f0a033d

    .line 260
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    if-eqz v0, :cond_3

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0a033c

    .line 261
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a01b9

    .line 262
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0073

    .line 263
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/TextView;

    .line 264
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v1

    .line 265
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f1201b0

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    .line 267
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    .line 269
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    .line 271
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    .line 263
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 262
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 261
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 260
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final onClickDeleteAccount()V
    .locals 4

    .line 143
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f130002

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1201cd

    .line 144
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1201ce

    .line 145
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 146
    new-instance v2, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/startapps/crossx/view/fragment/SettingsFragment;)V

    const v3, 0x7f1201cc

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 158
    new-instance v2, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda4;-><init>()V

    const v3, 0x7f1201cb

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static final onClickDeleteAccount$lambda-10(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 1

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "dialog"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/SettingsFragment;->viewModelProvider:Lcom/startapps/crossx/viewmodel/SettingsFragmentViewModel;

    if-nez p2, :cond_0

    const-string/jumbo p2, "viewModelProvider"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    new-instance v0, Lcom/startapps/crossx/view/fragment/SettingsFragment$onClickDeleteAccount$1$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment$onClickDeleteAccount$1$1;-><init>(Lcom/startapps/crossx/view/fragment/SettingsFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p2, v0}, Lcom/startapps/crossx/viewmodel/SettingsFragmentViewModel;->deleteAccount(Lkotlin/jvm/functions/Function2;)V

    .line 156
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final onClickDeleteAccount$lambda-11(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "dialog"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private final onClickLayoutConversor()V
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToConversor(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final onClickTerms()V
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToTerms(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final onFeedbackClick()V
    .locals 1

    const v0, 0x7f12018f

    .line 164
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToEmail(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final registerClicks()V
    .locals 2

    .line 101
    sget v0, Lcom/startapps/crossx/R$id;->terms:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/startapps/crossx/view/fragment/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->getDeleteAccount()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/startapps/crossx/view/fragment/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget v0, Lcom/startapps/crossx/R$id;->feedback:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/startapps/crossx/view/fragment/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->getLayoutUnity()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/startapps/crossx/view/fragment/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->getLayoutConversor()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda11;-><init>(Lcom/startapps/crossx/view/fragment/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->getLayoutPrivacity()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda12;-><init>(Lcom/startapps/crossx/view/fragment/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->getLayoutAbout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/startapps/crossx/view/fragment/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->getLayoutGlossary()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/startapps/crossx/view/fragment/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->getLayoutLogout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/startapps/crossx/view/fragment/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final registerClicks$lambda-1(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->onClickTerms()V

    return-void
.end method

.method private static final registerClicks$lambda-2(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->onClickDeleteAccount()V

    return-void
.end method

.method private static final registerClicks$lambda-3(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->onFeedbackClick()V

    return-void
.end method

.method private static final registerClicks$lambda-4(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->setUnityClick()V

    return-void
.end method

.method private static final registerClicks$lambda-5(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->onClickLayoutConversor()V

    return-void
.end method

.method private static final registerClicks$lambda-6(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->setPrivacityClick()V

    return-void
.end method

.method private static final registerClicks$lambda-7(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->setAboutClick()V

    return-void
.end method

.method private static final registerClicks$lambda-8(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->setGlossaryClick()V

    return-void
.end method

.method private static final registerClicks$lambda-9(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->setLogoutClick()V

    return-void
.end method

.method private final setAboutClick()V
    .locals 2

    .line 208
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Sobre o Cross X"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToAbout(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final setGlossaryClick()V
    .locals 3

    .line 213
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Gloss\u00e1rio"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d006e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view"

    .line 215
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->inflateViewGlossary(Landroid/view/View;)V

    return-void
.end method

.method private final setLogoutClick()V
    .locals 1

    .line 219
    invoke-static {}, Lcom/startapps/crossx/controller/dao/TimelineDAO;->reset()V

    .line 220
    sget-object v0, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService;->Companion:Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;

    invoke-virtual {v0}, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;->removeRegistrationToServer()V

    .line 221
    sget-object v0, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager$Companion;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 222
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->clearPreference()V

    .line 223
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToLogin(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 224
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method private final setPrivacity(I)V
    .locals 5

    .line 243
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/SettingsFragment;->userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 244
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    .line 245
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/startapps/crossx/view/fragment/SettingsFragment$setPrivacity$1;

    invoke-direct {v4, p1, v3}, Lcom/startapps/crossx/view/fragment/SettingsFragment$setPrivacity$1;-><init>(ILandroidx/fragment/app/FragmentActivity;)V

    check-cast v4, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;

    .line 244
    invoke-direct {v2, v4}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    .line 243
    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/network/requests/UserRequester;->setUserPrivacity(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    return-void
.end method

.method private final setPrivacityClick()V
    .locals 3

    .line 190
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1201d2

    .line 191
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 192
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->forceStacking(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f030004

    .line 193
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 194
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getPrivacity()I

    move-result v1

    new-instance v2, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/startapps/crossx/view/fragment/SettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackSingleChoice(ILcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f060034

    .line 199
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f0600b6

    .line 201
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f120188

    .line 202
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f120187

    .line 203
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private static final setPrivacityClick$lambda-13(Lcom/startapps/crossx/view/fragment/SettingsFragment;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, p3}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->setPrivacity(I)V

    .line 196
    invoke-direct {p0, p3}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->showDialogPrivacity(I)V

    const/4 p0, 0x0

    return p0
.end method

.method private final setUnityClick()V
    .locals 3

    .line 168
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Unidade de medida"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 169
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1201d5

    .line 170
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 171
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->forceStacking(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f030005

    .line 172
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 173
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getMeasureUnity()I

    move-result v1

    new-instance v2, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/startapps/crossx/view/fragment/SettingsFragment$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackSingleChoice(ILcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f060034

    .line 177
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f0600b6

    .line 179
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f120188

    .line 180
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f120187

    .line 181
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private static final setUnityClick$lambda-12(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 0

    .line 174
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/startapps/crossx/controller/utils/Preference;->saveUnityMeasure(I)V

    const/4 p0, 0x0

    return p0
.end method

.method private final showDialogPrivacity(I)V
    .locals 2

    if-nez p1, :cond_0

    const p1, 0x7f120260

    .line 230
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f12025f

    .line 232
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 234
    :goto_0
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12011b

    .line 235
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 236
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    const v0, 0x7f060034

    .line 237
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    const v0, 0x7f120188

    .line 238
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/SettingsFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/SettingsFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

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

.method public endLoader()V
    .locals 0

    return-void
.end method

.method public final getDeleteAccount()Landroid/widget/TextView;
    .locals 2

    .line 55
    sget v0, Lcom/startapps/crossx/R$id;->delete_account:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "delete_account"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLayoutAbout()Landroid/widget/RelativeLayout;
    .locals 2

    .line 49
    sget v0, Lcom/startapps/crossx/R$id;->layout_about:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "layout_about"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLayoutConversor()Landroid/widget/RelativeLayout;
    .locals 2

    .line 45
    sget v0, Lcom/startapps/crossx/R$id;->layout_conversor:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "layout_conversor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLayoutGlossary()Landroid/widget/RelativeLayout;
    .locals 2

    .line 51
    sget v0, Lcom/startapps/crossx/R$id;->layout_glossary:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "layout_glossary"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLayoutLogout()Landroid/widget/RelativeLayout;
    .locals 2

    .line 53
    sget v0, Lcom/startapps/crossx/R$id;->layout_logout:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "layout_logout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLayoutNotification()Landroid/widget/RelativeLayout;
    .locals 2

    .line 41
    sget v0, Lcom/startapps/crossx/R$id;->layout_notification:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "layout_notification"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLayoutPrivacity()Landroid/widget/RelativeLayout;
    .locals 2

    .line 47
    sget v0, Lcom/startapps/crossx/R$id;->layout_privacity:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "layout_privacity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d0085

    return v0
.end method

.method public final getLayoutUnity()Landroid/widget/RelativeLayout;
    .locals 2

    .line 43
    sget v0, Lcom/startapps/crossx/R$id;->layout_unity:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "layout_unity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSwitchNoticafication()Landroid/widget/Switch;
    .locals 2

    .line 57
    sget v0, Lcom/startapps/crossx/R$id;->switch_noticafication:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    const-string/jumbo v1, "switch_noticafication"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUserRequester()Lcom/startapps/crossx/controller/network/requests/UserRequester;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/SettingsFragment;->userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    return-object v0
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string v0, "buttonView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/controller/utils/Preference;->enableNotification(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 74
    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    move-object p3, p0

    check-cast p3, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {p2, p3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p3, Lcom/startapps/crossx/viewmodel/SettingsFragmentViewModel;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    const-string p3, "ViewModelProvider(this).\u2026entViewModel::class.java)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/startapps/crossx/viewmodel/SettingsFragmentViewModel;

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/SettingsFragment;->viewModelProvider:Lcom/startapps/crossx/viewmodel/SettingsFragmentViewModel;

    .line 75
    new-instance p2, Lcom/startapps/crossx/controller/network/requests/UserRequester;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {p2, p3}, Lcom/startapps/crossx/controller/network/requests/UserRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/SettingsFragment;->userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 91
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 92
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onDestroy()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->getSwitchNoticafication()Landroid/widget/Switch;

    move-result-object p1

    .line 83
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapps/crossx/controller/utils/Preference;->isNotificationEnable()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 84
    move-object p2, p0

    check-cast p2, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->registerClicks()V

    return-void
.end method

.method public final setUserRequester(Lcom/startapps/crossx/controller/network/requests/UserRequester;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/SettingsFragment;->userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    return-void
.end method
