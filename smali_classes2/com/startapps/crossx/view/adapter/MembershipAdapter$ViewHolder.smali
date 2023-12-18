.class public Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MembershipAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/MembershipAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder$ItemClicked;
    }
.end annotation


# instance fields
.field private buttonPay:Landroid/view/View;

.field private root:Landroid/view/View;

.field private textViewPlanName:Landroid/widget/TextView;

.field private textViewPlanPaymentStatus:Landroid/widget/TextView;

.field private textViewPlanStatus:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/MembershipAdapter;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/MembershipAdapter;Landroid/view/View;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;->this$0:Lcom/startapps/crossx/view/adapter/MembershipAdapter;

    .line 66
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a037b

    .line 67
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;->root:Landroid/view/View;

    const p1, 0x7f0a0465

    .line 68
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;->textViewPlanStatus:Landroid/widget/TextView;

    const p1, 0x7f0a0463

    .line 69
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;->textViewPlanName:Landroid/widget/TextView;

    const p1, 0x7f0a0464

    .line 70
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;->textViewPlanPaymentStatus:Landroid/widget/TextView;

    const p1, 0x7f0a00b7

    .line 71
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;->buttonPay:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public format(Lcom/startapps/crossx/model/Membership;)V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;->root:Landroid/view/View;

    iget-boolean v1, p1, Lcom/startapps/crossx/model/Membership;->paymentPending:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0600bc

    goto :goto_0

    :cond_0
    const v1, 0x7f060158

    :goto_0
    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/Utils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;->textViewPlanName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/startapps/crossx/model/Membership;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;->textViewPlanStatus:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/Membership;->getPlanStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;->textViewPlanPaymentStatus:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/Membership;->getPayStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;->buttonPay:Landroid/view/View;

    iget-boolean v1, p1, Lcom/startapps/crossx/model/Membership;->paymentPending:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;->textViewPlanPaymentStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;->this$0:Lcom/startapps/crossx/view/adapter/MembershipAdapter;

    invoke-static {v1}, Lcom/startapps/crossx/view/adapter/MembershipAdapter;->-$$Nest$fgetcontext(Lcom/startapps/crossx/view/adapter/MembershipAdapter;)Landroid/content/Context;

    move-result-object v1

    .line 85
    iget-boolean v2, p1, Lcom/startapps/crossx/model/Membership;->paymentPending:Z

    if-eqz v2, :cond_2

    const v2, 0x7f060121

    goto :goto_2

    :cond_2
    const v2, 0x7f0600b8

    .line 84
    :goto_2
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;->root:Landroid/view/View;

    new-instance v1, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder$ItemClicked;

    invoke-direct {v1, p0, p1}, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder$ItemClicked;-><init>(Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;Lcom/startapps/crossx/model/Membership;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;->buttonPay:Landroid/view/View;

    new-instance v1, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder$ItemClicked;

    invoke-direct {v1, p0, p1}, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder$ItemClicked;-><init>(Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;Lcom/startapps/crossx/model/Membership;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
