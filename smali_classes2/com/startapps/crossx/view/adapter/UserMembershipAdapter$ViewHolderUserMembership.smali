.class public Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "UserMembershipAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolderUserMembership"
.end annotation


# instance fields
.field public boxLabel:Landroid/widget/TextView;

.field public cancelDateLabel:Landroid/widget/TextView;

.field public cancelLabel:Landroid/widget/TextView;

.field public dateLabel:Landroid/widget/TextView;

.field public icCreditCard:Landroid/widget/ImageView;

.field public icDocument:Landroid/widget/ImageView;

.field public icLock:Landroid/widget/ImageView;

.field public item_user_membership:Landroid/widget/LinearLayout;

.field public membershipLabel:Landroid/widget/TextView;

.field public recurrenceLabel:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;Landroid/view/View;)V
    .locals 4

    .line 125
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->this$0:Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;

    .line 126
    invoke-direct {p0, p2}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    .line 128
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->membershipLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->recurrenceLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1201b0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->cancelLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->dateLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1201af

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->cancelDateLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->boxLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItem()Landroid/widget/LinearLayout;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->item_user_membership:Landroid/widget/LinearLayout;

    return-object v0
.end method
