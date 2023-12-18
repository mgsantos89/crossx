.class public Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment$$ViewInjector;
.super Ljava/lang/Object;
.source "UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a01be

    const-string v1, "field \'grossValueLabel\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->grossValueLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0335

    const-string v1, "field \'paymentStatus\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->paymentStatus:Landroid/view/View;

    const v0, 0x7f0a0171

    const-string v1, "field \'dueDate\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->dueDate:Landroid/widget/TextView;

    const v0, 0x7f0a0334

    const-string v1, "field \'paymentMethod\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->paymentMethod:Landroid/widget/TextView;

    const v0, 0x7f0a009d

    const-string v1, "field \'btnPaid\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->btnPaid:Landroid/widget/TextView;

    const v0, 0x7f0a0263

    const-string v1, "field \'item_user_membership_payment\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 21
    check-cast p0, Landroid/widget/LinearLayout;

    iput-object p0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->item_user_membership_payment:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->grossValueLabel:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->paymentStatus:Landroid/view/View;

    .line 27
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->dueDate:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->paymentMethod:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->btnPaid:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->item_user_membership_payment:Landroid/widget/LinearLayout;

    return-void
.end method
