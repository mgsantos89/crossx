.class public Lcom/startapps/crossx/view/activity/BilletActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "BilletActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/BilletActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0492

    const-string v1, "field \'toolbar\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/BilletActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0a0449

    const-string v1, "field \'textViewBilletCode\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/BilletActivity;->textViewBilletCode:Landroid/widget/TextView;

    const v0, 0x7f0a044b

    const-string v1, "field \'textViewBilletValue\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/BilletActivity;->textViewBilletValue:Landroid/widget/TextView;

    const v0, 0x7f0a0448

    const-string v1, "field \'textViewExpirationDate\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/BilletActivity;->textViewExpirationDate:Landroid/widget/TextView;

    const v0, 0x7f0a010e

    const-string v1, "field \'containerView\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    iput-object v0, p1, Lcom/startapps/crossx/view/activity/BilletActivity;->containerView:Landroid/view/View;

    const v0, 0x7f0a00b2

    const-string v1, "method \'copyText\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/startapps/crossx/view/activity/BilletActivity$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/activity/BilletActivity$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/activity/BilletActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00c1

    const-string v1, "method \'sendEmailButton\'"

    .line 29
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 30
    new-instance p2, Lcom/startapps/crossx/view/activity/BilletActivity$$ViewInjector$2;

    invoke-direct {p2, p1}, Lcom/startapps/crossx/view/activity/BilletActivity$$ViewInjector$2;-><init>(Lcom/startapps/crossx/view/activity/BilletActivity;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/BilletActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/BilletActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 42
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/BilletActivity;->textViewBilletCode:Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/BilletActivity;->textViewBilletValue:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/BilletActivity;->textViewExpirationDate:Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/BilletActivity;->containerView:Landroid/view/View;

    return-void
.end method
