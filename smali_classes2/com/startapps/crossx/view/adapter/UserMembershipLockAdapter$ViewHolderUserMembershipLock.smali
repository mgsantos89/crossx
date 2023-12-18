.class public Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "UserMembershipLockAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolderUserMembershipLock"
.end annotation


# instance fields
.field public dateFrom:Landroid/widget/TextView;

.field public dateTo:Landroid/widget/TextView;

.field public daysCount:Landroid/widget/TextView;

.field public daysLabel:Landroid/widget/TextView;

.field public item_user_membership_lock:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter;Landroid/view/View;)V
    .locals 4

    .line 64
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;->this$0:Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter;

    .line 65
    invoke-direct {p0, p2}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    .line 67
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;->daysCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;->daysLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1201af

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;->dateFrom:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;->dateTo:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItem()Landroid/widget/LinearLayout;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;->item_user_membership_lock:Landroid/widget/LinearLayout;

    return-object v0
.end method
