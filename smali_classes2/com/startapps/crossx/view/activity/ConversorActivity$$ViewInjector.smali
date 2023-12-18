.class public Lcom/startapps/crossx/view/activity/ConversorActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "ConversorActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/ConversorActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0497

    const-string v1, "field \'toolbar\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ConversorActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0a041f

    const-string v1, "field \'kg\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ConversorActivity;->kg:Landroid/widget/EditText;

    const v0, 0x7f0a0420

    const-string v1, "field \'lbs\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 15
    check-cast p0, Landroid/widget/EditText;

    iput-object p0, p1, Lcom/startapps/crossx/view/activity/ConversorActivity;->lbs:Landroid/widget/EditText;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/ConversorActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ConversorActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 20
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ConversorActivity;->kg:Landroid/widget/EditText;

    .line 21
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ConversorActivity;->lbs:Landroid/widget/EditText;

    return-void
.end method
