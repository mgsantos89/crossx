.class public Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "FinancialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/FinancialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FinancialViewHolder"
.end annotation


# instance fields
.field protected textMonth:Landroid/widget/TextView;

.field protected textStatus:Landroid/widget/TextView;

.field protected textValue:Landroid/widget/TextView;

.field protected textVencimento:Landroid/widget/TextView;

.field protected textYear:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/FinancialAdapter;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/FinancialAdapter;Landroid/view/View;)V
    .locals 4

    .line 73
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->this$0:Lcom/startapps/crossx/view/adapter/FinancialAdapter;

    .line 74
    invoke-direct {p0, p2}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    .line 76
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->textYear:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/FinancialAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->textMonth:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/FinancialAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1201b0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->textStatus:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/FinancialAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->textVencimento:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/FinancialAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->textValue:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/FinancialAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTextMonth()Landroid/widget/TextView;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->textMonth:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextStatus()Landroid/widget/TextView;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->textStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextValue()Landroid/widget/TextView;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->textValue:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextVencimento()Landroid/widget/TextView;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->textVencimento:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextYear()Landroid/widget/TextView;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->textYear:Landroid/widget/TextView;

    return-object v0
.end method

.method public setTextMonth(Landroid/widget/TextView;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->textMonth:Landroid/widget/TextView;

    return-void
.end method

.method public setTextStatus(Landroid/widget/TextView;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->textStatus:Landroid/widget/TextView;

    return-void
.end method

.method public setTextValue(Landroid/widget/TextView;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->textValue:Landroid/widget/TextView;

    return-void
.end method

.method public setTextVencimento(Landroid/widget/TextView;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->textVencimento:Landroid/widget/TextView;

    return-void
.end method

.method public setTextYear(Landroid/widget/TextView;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->textYear:Landroid/widget/TextView;

    return-void
.end method
