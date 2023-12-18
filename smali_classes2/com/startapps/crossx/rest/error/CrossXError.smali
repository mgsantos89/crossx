.class public Lcom/startapps/crossx/rest/error/CrossXError;
.super Ljava/lang/Object;
.source "CrossXError.java"


# instance fields
.field private codeStatus:I

.field private message:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeStatus()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/startapps/crossx/rest/error/CrossXError;->codeStatus:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/startapps/crossx/rest/error/CrossXError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCodeStatus(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/startapps/crossx/rest/error/CrossXError;->codeStatus:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/startapps/crossx/rest/error/CrossXError;->message:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/startapps/crossx/rest/error/CrossXError;->title:Ljava/lang/String;

    return-void
.end method

.method public showDialogError(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 44
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/startapps/crossx/rest/error/CrossXError;->message:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/startapps/crossx/controller/utils/DialogUtils;->showDialogErrorRetry(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Lcom/startapps/crossx/view/CrossXApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/rest/error/CrossXError;->message:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public showErrorAndTryAgain(Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 49
    invoke-interface {p1}, Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1201ef

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    iget v1, p0, Lcom/startapps/crossx/rest/error/CrossXError;->codeStatus:I

    iget-object v2, p0, Lcom/startapps/crossx/rest/error/CrossXError;->message:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0, p2}, Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;->configure(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method
