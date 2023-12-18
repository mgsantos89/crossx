.class public Lcom/startapps/crossx/view/activity/CreditCardListActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "CreditCardListActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/CreditCardListActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a02a8

    const-string v1, "field \'listCreditCard\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->listCreditCard:Landroid/widget/ListView;

    const v0, 0x7f0a034b

    const-string v1, "field \'progressBar\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0a00db

    const-string v1, "field \'cardPlaceholder\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->cardPlaceholder:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a009b

    const-string v1, "field \'btnNewCreditCard\' and method \'setNewCreditCardClick\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 17
    move-object p2, p0

    check-cast p2, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object p2, p1, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->btnNewCreditCard:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 18
    new-instance p2, Lcom/startapps/crossx/view/activity/CreditCardListActivity$$ViewInjector$1;

    invoke-direct {p2, p1}, Lcom/startapps/crossx/view/activity/CreditCardListActivity$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->listCreditCard:Landroid/widget/ListView;

    .line 30
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 31
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->cardPlaceholder:Landroid/widget/RelativeLayout;

    .line 32
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->btnNewCreditCard:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    return-void
.end method
