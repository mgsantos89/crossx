.class public Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument$$ViewInjector;
.super Ljava/lang/Object;
.source "UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0140

    const-string v1, "field \'date\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;->date:Landroid/widget/TextView;

    const v0, 0x7f0a0162

    const-string v1, "field \'status\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;->status:Landroid/view/View;

    const v0, 0x7f0a0163

    const-string v1, "field \'statusLabel\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;->statusLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0261

    const-string v1, "field \'item_user_membership_document\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 17
    check-cast p0, Landroid/widget/LinearLayout;

    iput-object p0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;->item_user_membership_document:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;->date:Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;->status:Landroid/view/View;

    .line 23
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;->statusLabel:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;->item_user_membership_document:Landroid/widget/LinearLayout;

    return-void
.end method
