.class public Lcom/startapps/crossx/view/adapter/NotificationAdapter$ViewHolderRanking;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "NotificationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/NotificationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolderRanking"
.end annotation


# instance fields
.field public date:Landroid/widget/TextView;

.field public message:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/NotificationAdapter;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/NotificationAdapter;Landroid/view/View;)V
    .locals 3

    .line 61
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/NotificationAdapter$ViewHolderRanking;->this$0:Lcom/startapps/crossx/view/adapter/NotificationAdapter;

    .line 62
    invoke-direct {p0, p2}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    .line 64
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/NotificationAdapter$ViewHolderRanking;->message:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/NotificationAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/NotificationAdapter$ViewHolderRanking;->date:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/NotificationAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1201af

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDate()Landroid/widget/TextView;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/NotificationAdapter$ViewHolderRanking;->date:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMessage()Landroid/widget/TextView;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/NotificationAdapter$ViewHolderRanking;->message:Landroid/widget/TextView;

    return-object v0
.end method

.method public setDate(Landroid/widget/TextView;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/NotificationAdapter$ViewHolderRanking;->date:Landroid/widget/TextView;

    return-void
.end method

.method public setMessage(Landroid/widget/TextView;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/NotificationAdapter$ViewHolderRanking;->message:Landroid/widget/TextView;

    return-void
.end method
