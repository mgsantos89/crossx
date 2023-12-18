.class public Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "UserMembershipPaymentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/Payment;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private onPaymentListener:Lcom/startapps/crossx/Interfaces/OnPaymentListener;

.field userMembership:Lcom/startapps/crossx/model/UserMembership;


# direct methods
.method static bridge synthetic -$$Nest$fgetonPaymentListener(Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;)Lcom/startapps/crossx/Interfaces/OnPaymentListener;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->onPaymentListener:Lcom/startapps/crossx/Interfaces/OnPaymentListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/startapps/crossx/model/UserMembership;Lcom/startapps/crossx/Interfaces/OnPaymentListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/Payment;",
            ">;",
            "Lcom/startapps/crossx/model/UserMembership;",
            "Lcom/startapps/crossx/Interfaces/OnPaymentListener;",
            ")V"
        }
    .end annotation

    .line 32
    iget-object p2, p3, Lcom/startapps/crossx/model/UserMembership;->payments:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 33
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->context:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    .line 35
    iput-object p4, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->onPaymentListener:Lcom/startapps/crossx/Interfaces/OnPaymentListener;

    return-void
.end method

.method private isEnabledToPaid(Lcom/startapps/crossx/model/Payment;)Z
    .locals 3

    .line 120
    iget-object v0, p1, Lcom/startapps/crossx/model/Payment;->status:Lcom/startapps/crossx/model/Payment$Status;

    sget-object v1, Lcom/startapps/crossx/model/Payment$Status;->PAID:Lcom/startapps/crossx/model/Payment$Status;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    iget-object v0, p1, Lcom/startapps/crossx/model/Payment;->status:Lcom/startapps/crossx/model/Payment$Status;

    sget-object v1, Lcom/startapps/crossx/model/Payment$Status;->REFUNDED:Lcom/startapps/crossx/model/Payment$Status;

    if-eq v0, v1, :cond_4

    iget-object v0, p1, Lcom/startapps/crossx/model/Payment;->status:Lcom/startapps/crossx/model/Payment$Status;

    sget-object v1, Lcom/startapps/crossx/model/Payment$Status;->CANCELED:Lcom/startapps/crossx/model/Payment$Status;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p1, Lcom/startapps/crossx/model/Payment;->grouped:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    return v2

    .line 128
    :cond_1
    iget-object v0, p1, Lcom/startapps/crossx/model/Payment;->paymentTaxTerm:Lcom/startapps/crossx/model/Payment$TaxTerm;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/startapps/crossx/model/Payment;->paymentTaxTerm:Lcom/startapps/crossx/model/Payment$TaxTerm;

    iget v0, v0, Lcom/startapps/crossx/model/Payment$TaxTerm;->order:I

    if-le v0, v1, :cond_2

    return v2

    .line 132
    :cond_2
    iget-object v0, p1, Lcom/startapps/crossx/model/Payment;->paymentMethodId:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    sget-object v2, Lcom/startapps/crossx/model/Payment$PaymentMethod;->ONLINE_ORDER:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    if-ne v0, v2, :cond_3

    return v1

    .line 136
    :cond_3
    iget-object p1, p1, Lcom/startapps/crossx/model/Payment;->dueDate:Ljava/lang/String;

    const-string v0, "dd/MM/yyyy"

    invoke-static {p1, v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->stringForDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 137
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x5

    const/4 v2, -0x3

    .line 139
    invoke-virtual {v0, p1, v2}, Ljava/util/Calendar;->add(II)V

    .line 140
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 142
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 144
    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_4
    :goto_0
    return v2
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 6

    .line 49
    check-cast p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;

    .line 50
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/startapps/crossx/model/Payment;

    .line 52
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->btnPaid:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->grossValueLabel:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v3, v3, Lcom/startapps/crossx/model/UserMembership;->boxSettings:Lcom/startapps/crossx/model/BoxSettingsModel;

    iget-object v3, v3, Lcom/startapps/crossx/model/BoxSettingsModel;->currency:Lcom/startapps/crossx/model/BoxSettingsModel$Currency;

    iget-object v3, v3, Lcom/startapps/crossx/model/BoxSettingsModel$Currency;->symbol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/startapps/crossx/model/Payment;->grossValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->paymentMethod:Landroid/widget/TextView;

    iget-object v2, p3, Lcom/startapps/crossx/model/Payment;->paymentMethod:Lcom/startapps/crossx/model/Payment$Method;

    iget-object v2, v2, Lcom/startapps/crossx/model/Payment$Method;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->dueDate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Vencimento: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p3, Lcom/startapps/crossx/model/Payment;->dueDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    sget-object v0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$3;->$SwitchMap$com$startapps$crossx$model$Payment$Status:[I

    iget-object v2, p3, Lcom/startapps/crossx/model/Payment;->status:Lcom/startapps/crossx/model/Payment$Status;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/Payment$Status;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const v2, 0x7f060127

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v2, 0x7f060124

    goto :goto_1

    :pswitch_1
    const v2, 0x7f060126

    goto :goto_1

    :pswitch_2
    const v2, 0x7f060125

    goto :goto_1

    .line 61
    :pswitch_3
    iget-object v0, p3, Lcom/startapps/crossx/model/Payment;->dueDate:Ljava/lang/String;

    const-string v3, "dd/MM/yyyy"

    invoke-static {v0, v3}, Lcom/startapps/crossx/controller/utils/DateUtility;->stringForDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 62
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 63
    invoke-virtual {v0, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const v2, 0x7f060122

    .line 82
    :goto_1
    :pswitch_4
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v0, v0, Lcom/startapps/crossx/model/UserMembership;->boxSettings:Lcom/startapps/crossx/model/BoxSettingsModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/BoxSettingsModel;->isEnabledAppPayment()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 83
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->btnPaid:Landroid/widget/TextView;

    iget-object v4, p3, Lcom/startapps/crossx/model/Payment;->paymentMethodId:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    sget-object v5, Lcom/startapps/crossx/model/Payment$PaymentMethod;->ONLINE_ORDER:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    if-ne v4, v5, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->item_user_membership_payment:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$1;-><init>(Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;Lcom/startapps/crossx/model/Payment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v0, v0, Lcom/startapps/crossx/model/UserMembership;->boxSettings:Lcom/startapps/crossx/model/BoxSettingsModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/BoxSettingsModel;->isEnabledAppPayment()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p3}, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->isEnabledToPaid(Lcom/startapps/crossx/model/Payment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->btnPaid:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->item_user_membership_payment:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$2;

    invoke-direct {v1, p0, p3, p2}, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$2;-><init>(Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;Lcom/startapps/crossx/model/Payment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_3
    :goto_2
    iget-object p2, p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->paymentStatus:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    .line 107
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 108
    iget-object p2, p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->btnPaid:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 109
    iget-object p2, p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->grossValueLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object p2, p3, Lcom/startapps/crossx/model/Payment;->paymentMethodId:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    sget-object p3, Lcom/startapps/crossx/model/Payment$PaymentMethod;->ONLINE_ORDER:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    if-ne p2, p3, :cond_4

    .line 112
    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->btnPaid:Landroid/widget/TextView;

    const-string p2, "VER"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 114
    :cond_4
    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;->btnPaid:Landroid/widget/TextView;

    const-string p2, "PAGAR"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 39
    new-instance v0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$ViewHolderUserMembershipPayment;-><init>(Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d00b4

    return v0
.end method
