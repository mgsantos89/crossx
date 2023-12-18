.class public Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "UserMembershipDocumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolderUserMembershipDocument"
.end annotation


# instance fields
.field public date:Landroid/widget/TextView;

.field public item_user_membership_document:Landroid/widget/LinearLayout;

.field public status:Landroid/view/View;

.field public statusLabel:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter;Landroid/view/View;)V
    .locals 3

    .line 86
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;->this$0:Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter;

    .line 87
    invoke-direct {p0, p2}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    .line 89
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;->date:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;->statusLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1201af

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItem()Landroid/widget/LinearLayout;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;->item_user_membership_document:Landroid/widget/LinearLayout;

    return-object v0
.end method
