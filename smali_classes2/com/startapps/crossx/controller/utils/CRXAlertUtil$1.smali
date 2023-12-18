.class Lcom/startapps/crossx/controller/utils/CRXAlertUtil$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "CRXAlertUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessageObserver(Landroid/content/Context;Ljava/lang/String;Lcom/startapps/crossx/controller/utils/CRXAlertUtil$AlertCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$alertCallback:Lcom/startapps/crossx/controller/utils/CRXAlertUtil$AlertCallback;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/controller/utils/CRXAlertUtil$AlertCallback;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/CRXAlertUtil$1;->val$alertCallback:Lcom/startapps/crossx/controller/utils/CRXAlertUtil$AlertCallback;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 1

    .line 33
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/CRXAlertUtil$1;->val$alertCallback:Lcom/startapps/crossx/controller/utils/CRXAlertUtil$AlertCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil$AlertCallback;->onConfirme(Z)V

    return-void
.end method

.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 1

    .line 38
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/CRXAlertUtil$1;->val$alertCallback:Lcom/startapps/crossx/controller/utils/CRXAlertUtil$AlertCallback;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil$AlertCallback;->onConfirme(Z)V

    return-void
.end method
