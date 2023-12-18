.class public Lcom/startapps/crossx/controller/utils/CRXAlertUtil;
.super Ljava/lang/Object;
.source "CRXAlertUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/controller/utils/CRXAlertUtil$AlertCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 68
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    const p1, 0x7f060034

    .line 70
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    const p1, 0x7f120188

    .line 71
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method public static showDialogMessageNoNegativeObserver(Landroid/content/Context;Ljava/lang/String;Lcom/startapps/crossx/controller/utils/CRXAlertUtil$AlertCallback;)V
    .locals 2

    .line 45
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12011b

    .line 46
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    .line 48
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    const p1, 0x7f0600b6

    .line 49
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    const p1, 0x7f060034

    .line 50
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    const p1, 0x7f120188

    .line 51
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/startapps/crossx/controller/utils/CRXAlertUtil$2;

    invoke-direct {p1, p2}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil$2;-><init>(Lcom/startapps/crossx/controller/utils/CRXAlertUtil$AlertCallback;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method public static showDialogMessageObserver(Landroid/content/Context;Ljava/lang/String;Lcom/startapps/crossx/controller/utils/CRXAlertUtil$AlertCallback;)V
    .locals 2

    .line 21
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12011b

    .line 22
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->forceStacking(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    .line 24
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    const p1, 0x7f0600b6

    .line 25
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    const p1, 0x7f060034

    .line 26
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    const p1, 0x7f120187

    .line 27
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    const p1, 0x7f120188

    .line 28
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/startapps/crossx/controller/utils/CRXAlertUtil$1;

    invoke-direct {p1, p2}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil$1;-><init>(Lcom/startapps/crossx/controller/utils/CRXAlertUtil$AlertCallback;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method
