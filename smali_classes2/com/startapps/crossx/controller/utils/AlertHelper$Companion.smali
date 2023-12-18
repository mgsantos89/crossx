.class public final Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;
.super Ljava/lang/Object;
.source "AlertHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/controller/utils/AlertHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$AlertListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0019B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J(\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000fJ \u0010\u0011\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000fJ*\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\t0\u0014J \u0010\u0015\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000fJ\u001c\u0010\u0016\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0017J \u0010\u0018\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;",
        "",
        "()V",
        "mAlertHelper",
        "Lcom/startapps/crossx/controller/utils/AlertHelper;",
        "mDialogSuccess",
        "Landroid/app/AlertDialog;",
        "getAlertHelperInstance",
        "getWarning",
        "",
        "listener",
        "Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$AlertListener;",
        "activity",
        "Landroid/app/Activity;",
        "message",
        "",
        "title",
        "showError",
        "showReason",
        "submit",
        "Lkotlin/Function1;",
        "showSuccess",
        "showTerm",
        "Lkotlin/Function0;",
        "showWarning",
        "AlertListener",
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


# direct methods
.method public static synthetic $r8$lambda$5tfIMBPPjMYfjZXQ-XpJ_5uQqus(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showTerm$lambda-5$lambda-2$lambda-1(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6WO0dpJebki1nyZEHw8b7eiVDsc(Landroid/view/View;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showReason$lambda-8$lambda-6(Landroid/view/View;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8okmd7xUTz4N9DcbuPuc9U__aUw(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showSuccess$lambda-10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GtrO2Oe7Wis19hnM8ruXiGz3KlQ(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$AlertListener;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->getWarning$lambda-21(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$AlertListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hs4jVUrnDbiDIv7m6TnntcsjLNQ(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showTerm$lambda-5$lambda-0(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IWEiUlkaFk1AC_lndwUagur8kl8(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showWarning$lambda-13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LSY9YYGIFLhb0Zcx1oAc0thqrz0(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$AlertListener;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->getWarning$lambda-19(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$AlertListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qo7V895LXuIIM5NRcuACTdzrem8(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showError$lambda-16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s6OnkS1F5DAcQH03ZVhGf0n02F4(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showReason$lambda-8$lambda-7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tOlDeEv_jVpGsvLZyv82yMhRFAo(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showTerm$lambda-5$lambda-4$lambda-3(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;-><init>()V

    return-void
.end method

.method private final getAlertHelperInstance()Lcom/startapps/crossx/controller/utils/AlertHelper;
    .locals 2

    .line 24
    invoke-static {}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$getMAlertHelper$cp()Lcom/startapps/crossx/controller/utils/AlertHelper;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/startapps/crossx/controller/utils/AlertHelper;

    invoke-direct {v0, v1}, Lcom/startapps/crossx/controller/utils/AlertHelper;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$setMAlertHelper$cp(Lcom/startapps/crossx/controller/utils/AlertHelper;)V

    .line 28
    :cond_0
    invoke-static {}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$getMAlertHelper$cp()Lcom/startapps/crossx/controller/utils/AlertHelper;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "mAlertHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static synthetic getWarning$default(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$AlertListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const-string p4, "Aten\u00e7\u00e3o!"

    .line 198
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->getWarning(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$AlertListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final getWarning$lambda-19(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$AlertListener;Landroid/view/View;)V
    .locals 0

    const-string p1, "$listener"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$getMDialogSuccess$cp()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 218
    invoke-interface {p0, p1}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$AlertListener;->onCancelButton(Landroid/app/AlertDialog;)V

    .line 219
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 220
    sget-object p0, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$setMDialogSuccess$cp(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private static final getWarning$lambda-21(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$AlertListener;Landroid/view/View;)V
    .locals 0

    const-string p1, "$listener"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$getMDialogSuccess$cp()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 226
    invoke-interface {p0, p1}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$AlertListener;->onConfirmButton(Landroid/app/AlertDialog;)V

    .line 227
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 228
    sget-object p0, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$setMDialogSuccess$cp(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method public static synthetic showError$default(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, "Erro!"

    .line 169
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final showError$lambda-16(Landroid/view/View;)V
    .locals 0

    .line 186
    invoke-static {}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$getMDialogSuccess$cp()Landroid/app/AlertDialog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 187
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 188
    sget-object p0, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$setMDialogSuccess$cp(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private static final showReason$lambda-8$lambda-6(Landroid/view/View;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 1

    const-string p3, "$this_apply"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$activity"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$submit"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0a0180

    .line 85
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    .line 87
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 89
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f120176

    .line 90
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 88
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 92
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 96
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$getMDialogSuccess$cp()Landroid/app/AlertDialog;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 98
    :cond_2
    sget-object p0, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$setMDialogSuccess$cp(Landroid/app/AlertDialog;)V

    return-void
.end method

.method private static final showReason$lambda-8$lambda-7(Landroid/view/View;)V
    .locals 0

    .line 101
    invoke-static {}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$getMDialogSuccess$cp()Landroid/app/AlertDialog;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 102
    :cond_0
    sget-object p0, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$setMDialogSuccess$cp(Landroid/app/AlertDialog;)V

    return-void
.end method

.method public static synthetic showSuccess$default(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, "Sucesso!"

    .line 110
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showSuccess(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final showSuccess$lambda-10(Landroid/view/View;)V
    .locals 0

    .line 128
    invoke-static {}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$getMDialogSuccess$cp()Landroid/app/AlertDialog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 129
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 130
    sget-object p0, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$setMDialogSuccess$cp(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private static final showTerm$lambda-5$lambda-0(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    const-string p1, "$submit"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 42
    invoke-static {}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$getMDialogSuccess$cp()Landroid/app/AlertDialog;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 43
    :cond_0
    sget-object p0, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$setMDialogSuccess$cp(Landroid/app/AlertDialog;)V

    return-void
.end method

.method private static final showTerm$lambda-5$lambda-2$lambda-1(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    const-string p1, "$activity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance p1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p1

    .line 52
    check-cast p0, Landroid/content/Context;

    const-string v0, "https://app-crossx.s3.sa-east-1.amazonaws.com/lgpd/termos_uso_app_v1.pdf"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private static final showTerm$lambda-5$lambda-4$lambda-3(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    const-string p1, "$activity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance p1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p1

    .line 64
    check-cast p0, Landroid/content/Context;

    const-string v0, "https://app-crossx.s3.sa-east-1.amazonaws.com/lgpd/politica_privacidade_app_v1.pdf"

    .line 65
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63
    invoke-virtual {p1, p0, v0}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic showWarning$default(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, "Aten\u00e7\u00e3o!"

    .line 140
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showWarning(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final showWarning$lambda-13(Landroid/view/View;)V
    .locals 0

    .line 157
    invoke-static {}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$getMDialogSuccess$cp()Landroid/app/AlertDialog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 159
    sget-object p0, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$setMDialogSuccess$cp(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getWarning(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$AlertListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/startapps/crossx/controller/utils/ContextManager;->Companion:Lcom/startapps/crossx/controller/utils/ContextManager$Companion;

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/ContextManager$Companion;->getContext()Lcom/startapps/crossx/view/CrossXApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/view/CrossXApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0071

    const/4 v2, 0x0

    .line 206
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "from(ContextManager.getC\u2026out.dialog_warning, null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0a04d0

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "dialogView.findViewById(R.id.warning_message)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a04d1

    .line 208
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "dialogView.findViewById(R.id.warning_title)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0093

    .line 210
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "dialogView.findViewById(R.id.btn_cancel_warning)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/startapps/crossx/custom/textview/CustomFontTextView;

    const v4, 0x7f0a0094

    .line 212
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "dialogView.findViewById(R.id.btn_confirm_warning)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/startapps/crossx/custom/textview/CustomFontTextView;

    .line 213
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    new-instance p3, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda4;

    invoke-direct {p3, p1}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda4;-><init>(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$AlertListener;)V

    invoke-virtual {v3, p3}, Lcom/startapps/crossx/custom/textview/CustomFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    new-instance p3, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda5;

    invoke-direct {p3, p1}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda5;-><init>(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$AlertListener;)V

    invoke-virtual {v4, p3}, Lcom/startapps/crossx/custom/textview/CustomFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    sget-object p1, Lcom/startapps/crossx/controller/utils/CustomDialogMaker;->INSTANCE:Lcom/startapps/crossx/controller/utils/CustomDialogMaker;

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lcom/startapps/crossx/controller/utils/CustomDialogMaker;->createCustomDialog(Landroid/content/Context;Landroid/view/View;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$setMDialogSuccess$cp(Landroid/app/AlertDialog;)V

    .line 233
    invoke-static {}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$getMDialogSuccess$cp()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public final showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/startapps/crossx/controller/utils/ContextManager;->Companion:Lcom/startapps/crossx/controller/utils/ContextManager$Companion;

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/ContextManager$Companion;->getContext()Lcom/startapps/crossx/view/CrossXApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/view/CrossXApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d006f

    const/4 v2, 0x0

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "from(ContextManager.getC\u2026layout.dialog_show, null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0a0050

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "dialogView.findViewById(R.id.alert_message)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0051

    .line 174
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "dialogView.findViewById(R.id.alert_title)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a004f

    .line 175
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "dialogView.findViewById(R.id.alert_icon)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/ImageView;

    .line 176
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    check-cast p1, Landroid/content/Context;

    const p2, 0x7f080100

    .line 179
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 178
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f0a009c

    .line 185
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    sget-object p2, Lcom/startapps/crossx/controller/utils/CustomDialogMaker;->INSTANCE:Lcom/startapps/crossx/controller/utils/CustomDialogMaker;

    invoke-virtual {p2, p1, v0}, Lcom/startapps/crossx/controller/utils/CustomDialogMaker;->createCustomDialog(Landroid/content/Context;Landroid/view/View;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$setMDialogSuccess$cp(Landroid/app/AlertDialog;)V

    .line 193
    invoke-static {}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$getMDialogSuccess$cp()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public final showReason(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "submit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "activity.layoutInflater.\u2026te(R.layout.reason, null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0a0444

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a00b0

    .line 84
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance v1, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1, p3}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a00a9

    .line 100
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda3;

    invoke-direct {p3}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    sget-object p2, Lcom/startapps/crossx/controller/utils/CustomDialogMaker;->INSTANCE:Lcom/startapps/crossx/controller/utils/CustomDialogMaker;

    check-cast p1, Landroid/content/Context;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, v0, p3}, Lcom/startapps/crossx/controller/utils/CustomDialogMaker;->createCustomDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$setMDialogSuccess$cp(Landroid/app/AlertDialog;)V

    .line 107
    invoke-static {}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$getMDialogSuccess$cp()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public final showSuccess(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/startapps/crossx/controller/utils/ContextManager;->Companion:Lcom/startapps/crossx/controller/utils/ContextManager$Companion;

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/ContextManager$Companion;->getContext()Lcom/startapps/crossx/view/CrossXApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/view/CrossXApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d006f

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "from(ContextManager.getC\u2026layout.dialog_show, null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0a0050

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "dialogView.findViewById(R.id.alert_message)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0051

    .line 115
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "dialogView.findViewById(R.id.alert_title)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a004f

    .line 116
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "dialogView.findViewById(R.id.alert_icon)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/ImageView;

    .line 117
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    check-cast p1, Landroid/content/Context;

    const p2, 0x7f080104

    .line 120
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 119
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f0a009c

    .line 127
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda9;

    invoke-direct {p3}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    sget-object p2, Lcom/startapps/crossx/controller/utils/CustomDialogMaker;->INSTANCE:Lcom/startapps/crossx/controller/utils/CustomDialogMaker;

    invoke-virtual {p2, p1, v0}, Lcom/startapps/crossx/controller/utils/CustomDialogMaker;->createCustomDialog(Landroid/content/Context;Landroid/view/View;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$setMDialogSuccess$cp(Landroid/app/AlertDialog;)V

    .line 135
    invoke-static {}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$getMDialogSuccess$cp()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public final showTerm(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "submit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/startapps/crossx/controller/utils/ContextManager;->Companion:Lcom/startapps/crossx/controller/utils/ContextManager$Companion;

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/ContextManager$Companion;->getContext()Lcom/startapps/crossx/view/CrossXApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/view/CrossXApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0070

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "from(ContextManager.getC\u2026layout.dialog_term, null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0a00b0

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda6;

    invoke-direct {v2, p2}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0443

    .line 46
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 47
    new-instance v1, Landroid/text/SpannableString;

    const v2, 0x7f120179

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 48
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 49
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v1, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda7;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0442

    .line 56
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 58
    new-instance v1, Landroid/text/SpannableString;

    const v2, 0x7f120172

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 60
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v1, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda8;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    sget-object p2, Lcom/startapps/crossx/controller/utils/CustomDialogMaker;->INSTANCE:Lcom/startapps/crossx/controller/utils/CustomDialogMaker;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p2, p1, v0, v4}, Lcom/startapps/crossx/controller/utils/CustomDialogMaker;->createCustomDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$setMDialogSuccess$cp(Landroid/app/AlertDialog;)V

    .line 72
    invoke-static {}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$getMDialogSuccess$cp()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public final showWarning(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/startapps/crossx/controller/utils/ContextManager;->Companion:Lcom/startapps/crossx/controller/utils/ContextManager$Companion;

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/ContextManager$Companion;->getContext()Lcom/startapps/crossx/view/CrossXApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/view/CrossXApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d006f

    const/4 v2, 0x0

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "from(ContextManager.getC\u2026layout.dialog_show, null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0a0050

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "dialogView.findViewById(R.id.alert_message)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0051

    .line 145
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "dialogView.findViewById(R.id.alert_title)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a004f

    .line 146
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "dialogView.findViewById(R.id.alert_icon)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/ImageView;

    .line 147
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    check-cast p1, Landroid/content/Context;

    const p2, 0x7f0800ff

    .line 150
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 149
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f0a009c

    .line 156
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    sget-object p2, Lcom/startapps/crossx/controller/utils/CustomDialogMaker;->INSTANCE:Lcom/startapps/crossx/controller/utils/CustomDialogMaker;

    invoke-virtual {p2, p1, v0}, Lcom/startapps/crossx/controller/utils/CustomDialogMaker;->createCustomDialog(Landroid/content/Context;Landroid/view/View;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$setMDialogSuccess$cp(Landroid/app/AlertDialog;)V

    .line 164
    invoke-static {}, Lcom/startapps/crossx/controller/utils/AlertHelper;->access$getMDialogSuccess$cp()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
