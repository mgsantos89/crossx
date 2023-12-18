.class public Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock$$ViewInjector;
.super Ljava/lang/Object;
.source "UserMembershipLockAdapter$ViewHolderUserMembershipLock$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0147

    const-string v1, "field \'daysCount\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;->daysCount:Landroid/widget/TextView;

    const v0, 0x7f0a0148

    const-string v1, "field \'daysLabel\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;->daysLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0141

    const-string v1, "field \'dateFrom\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;->dateFrom:Landroid/widget/TextView;

    const v0, 0x7f0a0144

    const-string v1, "field \'dateTo\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;->dateTo:Landroid/widget/TextView;

    const v0, 0x7f0a0262

    const-string v1, "field \'item_user_membership_lock\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 19
    check-cast p0, Landroid/widget/LinearLayout;

    iput-object p0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;->item_user_membership_lock:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;->daysCount:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;->daysLabel:Landroid/widget/TextView;

    .line 25
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;->dateFrom:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;->dateTo:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;->item_user_membership_lock:Landroid/widget/LinearLayout;

    return-void
.end method
