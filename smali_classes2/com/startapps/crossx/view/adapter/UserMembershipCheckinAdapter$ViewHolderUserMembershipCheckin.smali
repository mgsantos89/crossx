.class public Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter$ViewHolderUserMembershipCheckin;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "UserMembershipCheckinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolderUserMembershipCheckin"
.end annotation


# instance fields
.field public dateLabel:Landroid/widget/TextView;

.field public itemCheckin:Landroid/widget/TextView;

.field public item_user_membership_checkin:Landroid/widget/LinearLayout;

.field public programLabel:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter;

.field public timeLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter;Landroid/view/View;)V
    .locals 4

    .line 87
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter$ViewHolderUserMembershipCheckin;->this$0:Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter;

    .line 88
    invoke-direct {p0, p2}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    .line 90
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter$ViewHolderUserMembershipCheckin;->dateLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter$ViewHolderUserMembershipCheckin;->programLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1201b0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter$ViewHolderUserMembershipCheckin;->timeLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter$ViewHolderUserMembershipCheckin;->itemCheckin:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItem()Landroid/widget/LinearLayout;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter$ViewHolderUserMembershipCheckin;->item_user_membership_checkin:Landroid/widget/LinearLayout;

    return-object v0
.end method
