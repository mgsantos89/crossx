.class public Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "UserMembershipAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/UserMembership;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private userModel:Lcom/startapps/crossx/model/UserModel;


# direct methods
.method static bridge synthetic -$$Nest$fgetuserModel(Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;)Lcom/startapps/crossx/model/UserModel;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;->userModel:Lcom/startapps/crossx/model/UserModel;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/startapps/crossx/model/UserModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserMembership;",
            ">;",
            "Lcom/startapps/crossx/model/UserModel;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 28
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;->context:Landroid/content/Context;

    .line 29
    iput-object p3, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;->userModel:Lcom/startapps/crossx/model/UserModel;

    return-void
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 5

    .line 43
    check-cast p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;

    .line 44
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/UserMembership;

    .line 46
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->membershipLabel:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/startapps/crossx/model/UserMembership;->membership:Lcom/startapps/crossx/model/MembershipModel;

    iget-object v0, v0, Lcom/startapps/crossx/model/MembershipModel;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->recurrenceLabel:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/startapps/crossx/model/UserMembership;->recurrence:Lcom/startapps/crossx/model/UserMembershipRecurrence;

    iget-object v0, v0, Lcom/startapps/crossx/model/UserMembershipRecurrence;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->boxLabel:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/startapps/crossx/model/UserMembership;->box:Lcom/startapps/crossx/model/Box;

    iget-object v0, v0, Lcom/startapps/crossx/model/Box;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-boolean p3, p2, Lcom/startapps/crossx/model/UserMembership;->contractPending:Z

    if-eqz p3, :cond_0

    .line 51
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->icDocument:Landroid/widget/ImageView;

    const v0, 0x7f080108

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->icDocument:Landroid/widget/ImageView;

    const v0, 0x7f080107

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    :goto_0
    iget-boolean p3, p2, Lcom/startapps/crossx/model/UserMembership;->paymentPending:Z

    if-eqz p3, :cond_1

    .line 57
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->icCreditCard:Landroid/widget/ImageView;

    const v0, 0x7f0800d8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 59
    :cond_1
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->icCreditCard:Landroid/widget/ImageView;

    const v0, 0x7f0800f0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    :goto_1
    iget-object p3, p2, Lcom/startapps/crossx/model/UserMembership;->status:Lcom/startapps/crossx/model/UserMembership$Status;

    sget-object v0, Lcom/startapps/crossx/model/UserMembership$Status;->STATUS_LOCKED:Lcom/startapps/crossx/model/UserMembership$Status;

    if-ne p3, v0, :cond_2

    .line 63
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->icLock:Landroid/widget/ImageView;

    const v0, 0x7f080127

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 65
    :cond_2
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->icLock:Landroid/widget/ImageView;

    const v0, 0x7f080134

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    :goto_2
    iget-object p3, p2, Lcom/startapps/crossx/model/UserMembership;->status:Lcom/startapps/crossx/model/UserMembership$Status;

    sget-object v0, Lcom/startapps/crossx/model/UserMembership$Status;->CANCELED:Lcom/startapps/crossx/model/UserMembership$Status;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p3, v0, :cond_3

    .line 69
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->cancelLabel:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 71
    :cond_3
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->cancelLabel:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :goto_3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "In\u00edcio: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/startapps/crossx/model/UserMembership;->startDate:Ljava/lang/String;

    const-string/jumbo v3, "yyyy-MM-dd"

    const-string v4, "dd/MM/yyyy"

    invoke-static {v0, v3, v4}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 76
    iget-object v0, p2, Lcom/startapps/crossx/model/UserMembership;->endDate:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " | T\u00e9rmino: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p2, Lcom/startapps/crossx/model/UserMembership;->endDate:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 79
    :cond_4
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->dateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p3, p2, Lcom/startapps/crossx/model/UserMembership;->cancelDate:Ljava/lang/String;

    if-eqz p3, :cond_5

    .line 82
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->cancelDateLabel:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cancelado: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/startapps/crossx/model/UserMembership;->cancelDate:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->cancelDateLabel:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 85
    :cond_5
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->cancelDateLabel:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    :goto_4
    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;->item_user_membership:Landroid/widget/LinearLayout;

    new-instance p3, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$1;

    invoke-direct {p3, p0, p2}, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$1;-><init>(Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;Lcom/startapps/crossx/model/UserMembership;)V

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 33
    new-instance v0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$ViewHolderUserMembership;-><init>(Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d00b0

    return v0
.end method
