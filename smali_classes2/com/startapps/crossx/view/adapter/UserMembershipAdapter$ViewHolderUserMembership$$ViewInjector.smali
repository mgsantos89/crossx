.class public Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership$$ViewInjector;
.super Ljava/lang/Object;
.source "UserMembershipAdapter$ViewHolderUserMembership$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a02d6

    const-string v1, "field \'membershipLabel\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->membershipLabel:Landroid/widget/TextView;

    const v0, 0x7f0a036f

    const-string v1, "field \'recurrenceLabel\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->recurrenceLabel:Landroid/widget/TextView;

    const v0, 0x7f0a00cf

    const-string v1, "field \'cancelLabel\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->cancelLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0142

    const-string v1, "field \'dateLabel\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->dateLabel:Landroid/widget/TextView;

    const v0, 0x7f0a00ce

    const-string v1, "field \'cancelDateLabel\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->cancelDateLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0082

    const-string v1, "field \'boxLabel\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->boxLabel:Landroid/widget/TextView;

    const v0, 0x7f0a01e8

    const-string v1, "field \'icCreditCard\'"

    .line 22
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->icCreditCard:Landroid/widget/ImageView;

    const v0, 0x7f0a01e9

    const-string v1, "field \'icDocument\'"

    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->icDocument:Landroid/widget/ImageView;

    const v0, 0x7f0a01f1

    const-string v1, "field \'icLock\'"

    .line 26
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->icLock:Landroid/widget/ImageView;

    const v0, 0x7f0a025f

    const-string v1, "field \'item_user_membership\'"

    .line 28
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 29
    check-cast p0, Landroid/widget/LinearLayout;

    iput-object p0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->item_user_membership:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->membershipLabel:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->recurrenceLabel:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->cancelLabel:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->dateLabel:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->cancelDateLabel:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->boxLabel:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->icCreditCard:Landroid/widget/ImageView;

    .line 40
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->icDocument:Landroid/widget/ImageView;

    .line 41
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->icLock:Landroid/widget/ImageView;

    .line 42
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->item_user_membership:Landroid/widget/LinearLayout;

    return-void
.end method
