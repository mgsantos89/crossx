.class public Lcom/startapps/crossx/view/adapter/FinancialAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "FinancialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/FinancialModel;",
        ">;"
    }
.end annotation


# instance fields
.field formatter:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/FinancialModel;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 32
    new-instance p1, Ljava/util/Locale;

    const-string p2, "pt"

    const-string v0, "BR"

    invoke-direct {p1, p2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/FinancialAdapter;->formatter:Ljava/text/NumberFormat;

    return-void
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 5

    .line 48
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/FinancialAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/FinancialModel;

    .line 49
    check-cast p1, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;

    .line 51
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "content "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/startapps/crossx/model/FinancialModel;->getMonth()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "content"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->getTextMonth()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/FinancialModel;->getMonth()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMM"

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-static {v0, v2, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->getTextYear()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/FinancialModel;->getMonth()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yyyy"

    invoke-static {v0, v2, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->getTextStatus()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/FinancialModel;->getStatus()I

    move-result v0

    invoke-static {v0}, Lcom/startapps/crossx/model/enuns/PaymentStatus;->getElementForPosition(I)Lcom/startapps/crossx/model/enuns/PaymentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/PaymentStatus;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->getTextValue()Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "valor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/FinancialAdapter;->formatter:Ljava/text/NumberFormat;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/FinancialModel;->getPrice()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;->getTextVencimento()Landroid/widget/TextView;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "vencimento: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/startapps/crossx/model/FinancialModel;->getMonth()Ljava/lang/String;

    move-result-object p2

    const-string v0, "dd/MM/yyyy"

    invoke-static {p2, v2, v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 42
    new-instance v0, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/FinancialAdapter$FinancialViewHolder;-><init>(Lcom/startapps/crossx/view/adapter/FinancialAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d009d

    return v0
.end method
