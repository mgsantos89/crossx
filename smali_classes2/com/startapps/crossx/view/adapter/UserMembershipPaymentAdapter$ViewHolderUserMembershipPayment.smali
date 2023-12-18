.class public Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "UserMembershipPaymentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolderUserMembershipPayment"
.end annotation


# instance fields
.field public btnPaid:Landroid/widget/TextView;

.field public dueDate:Landroid/widget/TextView;

.field public grossValueLabel:Landroid/widget/TextView;

.field public item_user_membership_payment:Landroid/widget/LinearLayout;

.field public paymentMethod:Landroid/widget/TextView;

.field public paymentStatus:Landroid/view/View;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;Landroid/view/View;)V
    .locals 3

    .line 167
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->this$0:Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;

    .line 168
    invoke-direct {p0, p2}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    .line 170
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->paymentMethod:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->btnPaid:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->grossValueLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->dueDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItem()Landroid/widget/LinearLayout;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->item_user_membership_payment:Landroid/widget/LinearLayout;

    return-object v0
.end method
