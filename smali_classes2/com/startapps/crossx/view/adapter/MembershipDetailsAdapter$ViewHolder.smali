.class public Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MembershipDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private root:Landroid/view/View;

.field private textViewDateExpiration:Landroid/widget/TextView;

.field private textViewFullDateExpiration:Landroid/widget/TextView;

.field private textViewPlots:Landroid/widget/TextView;

.field private textViewPrice:Landroid/widget/TextView;

.field private textViewTypePayment:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter;Landroid/view/View;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->this$0:Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter;

    .line 62
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a037b

    .line 63
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->root:Landroid/view/View;

    const p1, 0x7f0a0467

    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewPlots:Landroid/widget/TextView;

    const p1, 0x7f0a0453

    .line 65
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewDateExpiration:Landroid/widget/TextView;

    const p1, 0x7f0a045c

    .line 66
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewFullDateExpiration:Landroid/widget/TextView;

    const p1, 0x7f0a0468

    .line 67
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewPrice:Landroid/widget/TextView;

    const p1, 0x7f0a047d

    .line 68
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewTypePayment:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public format(Lcom/startapps/crossx/model/FinancialInvoice;)V
    .locals 7

    .line 76
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewPlots:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/startapps/crossx/model/FinancialInvoice;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewDateExpiration:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/FinancialInvoice;->getMonthExpirationDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewFullDateExpiration:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/FinancialInvoice;->getFullExpirationDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p1, Lcom/startapps/crossx/model/FinancialInvoice;->financialInvoicePayments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x7f0600bc

    const v2, 0x7f0600b8

    const v3, 0x7f0600c1

    const v4, 0x7f060121

    const/4 v5, 0x0

    if-lez v0, :cond_3

    .line 80
    iget-object v0, p1, Lcom/startapps/crossx/model/FinancialInvoice;->financialInvoicePayments:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/FinancialInvoicePayment;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/FinancialInvoicePayment;->getStatus()Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    move-result-object v0

    sget-object v6, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->P:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    if-ne v0, v6, :cond_0

    .line 81
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewPrice:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/startapps/crossx/controller/utils/Utils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 82
    :cond_0
    iget-object v0, p1, Lcom/startapps/crossx/model/FinancialInvoice;->financialInvoicePayments:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/FinancialInvoicePayment;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/FinancialInvoicePayment;->getStatus()Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    move-result-object v0

    sget-object v3, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->A:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    if-eq v0, v3, :cond_2

    iget-object v0, p1, Lcom/startapps/crossx/model/FinancialInvoice;->financialInvoicePayments:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/FinancialInvoicePayment;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/FinancialInvoicePayment;->getStatus()Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    move-result-object v0

    sget-object v3, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->W:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewPrice:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/startapps/crossx/controller/utils/Utils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->root:Landroid/view/View;

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/Utils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 83
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewPrice:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/startapps/crossx/controller/utils/Utils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    :goto_1
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewPrice:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/startapps/crossx/model/FinancialInvoice;->financialInvoicePayments:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/FinancialInvoicePayment;

    iget-object v1, v1, Lcom/startapps/crossx/model/FinancialInvoicePayment;->value:Ljava/lang/String;

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/Utils;->formatMoneyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewTypePayment:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/FinancialInvoice;->getPaymentStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 92
    :cond_3
    iget-object v0, p1, Lcom/startapps/crossx/model/FinancialInvoice;->status:Ljava/lang/String;

    sget-object v6, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->P:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    invoke-virtual {v6}, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewPrice:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/startapps/crossx/controller/utils/Utils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewTypePayment:Landroid/widget/TextView;

    sget-object v1, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->P:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 96
    :cond_4
    iget-object v0, p1, Lcom/startapps/crossx/model/FinancialInvoice;->status:Ljava/lang/String;

    sget-object v3, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->A:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    invoke-virtual {v3}, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewPrice:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/startapps/crossx/controller/utils/Utils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewTypePayment:Landroid/widget/TextView;

    sget-object v1, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->A:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 100
    :cond_5
    iget-object v0, p1, Lcom/startapps/crossx/model/FinancialInvoice;->status:Ljava/lang/String;

    sget-object v3, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->W:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    invoke-virtual {v3}, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 101
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewPrice:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/startapps/crossx/controller/utils/Utils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewTypePayment:Landroid/widget/TextView;

    sget-object v1, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->W:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 104
    :cond_6
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewPrice:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/startapps/crossx/controller/utils/Utils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->root:Landroid/view/View;

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/Utils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 107
    :goto_2
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->textViewPrice:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/startapps/crossx/model/FinancialInvoice;->financialInvoiceDetails:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/FinancialInvoiceDetails;

    iget-object p1, p1, Lcom/startapps/crossx/model/FinancialInvoiceDetails;->totalValue:Ljava/lang/String;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/Utils;->formatMoneyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method
