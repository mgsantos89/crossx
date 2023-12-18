.class public Lcom/startapps/crossx/view/activity/RegisterCardActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "RegisterCardActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/RegisterCardActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0492

    const-string v1, "field \'toolbar\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0a0186

    const-string v1, "field \'editTextName\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextName:Landroid/widget/EditText;

    const v0, 0x7f0a0183

    const-string v1, "field \'editTextCardNumber\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextCardNumber:Landroid/widget/EditText;

    const v0, 0x7f0a0187

    const-string v1, "field \'editTextValidate\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextValidate:Landroid/widget/EditText;

    const v0, 0x7f0a0188

    const-string v1, "field \'editTextCvv\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextCvv:Landroid/widget/EditText;

    const v0, 0x7f0a0118

    const-string v1, "field \'recurrece\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    iput-object v0, p1, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->recurrece:Landroid/view/View;

    const v0, 0x7f0a00c8

    const-string v1, "method \'registerCard\'"

    .line 22
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/startapps/crossx/view/activity/RegisterCardActivity$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/activity/RegisterCardActivity$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/activity/RegisterCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00bf

    const-string v1, "method \'scannerCreditCard\'"

    .line 31
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 32
    new-instance p2, Lcom/startapps/crossx/view/activity/RegisterCardActivity$$ViewInjector$2;

    invoke-direct {p2, p1}, Lcom/startapps/crossx/view/activity/RegisterCardActivity$$ViewInjector$2;-><init>(Lcom/startapps/crossx/view/activity/RegisterCardActivity;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/RegisterCardActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 44
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextName:Landroid/widget/EditText;

    .line 45
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextCardNumber:Landroid/widget/EditText;

    .line 46
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextValidate:Landroid/widget/EditText;

    .line 47
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextCvv:Landroid/widget/EditText;

    .line 48
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->recurrece:Landroid/view/View;

    return-void
.end method
