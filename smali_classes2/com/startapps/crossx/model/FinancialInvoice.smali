.class public Lcom/startapps/crossx/model/FinancialInvoice;
.super Ljava/lang/Object;
.source "FinancialInvoice.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field public dueDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "due_date"
    .end annotation
.end field

.field public financialInvoiceDetails:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "financial_invoice_details"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/FinancialInvoiceDetails;",
            ">;"
        }
    .end annotation
.end field

.field public financialInvoicePayments:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "financial_invoice_payments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/FinancialInvoicePayment;",
            ">;"
        }
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/model/FinancialInvoice;Lcom/startapps/crossx/model/FinancialInvoicePayment;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iget-wide v0, p1, Lcom/startapps/crossx/model/FinancialInvoice;->id:J

    iput-wide v0, p0, Lcom/startapps/crossx/model/FinancialInvoice;->id:J

    .line 32
    iget-object v0, p1, Lcom/startapps/crossx/model/FinancialInvoice;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapps/crossx/model/FinancialInvoice;->description:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/startapps/crossx/model/FinancialInvoice;->dueDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapps/crossx/model/FinancialInvoice;->dueDate:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/startapps/crossx/model/FinancialInvoice;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapps/crossx/model/FinancialInvoice;->status:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iget-object p1, p1, Lcom/startapps/crossx/model/FinancialInvoice;->financialInvoiceDetails:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    iput-object v0, p0, Lcom/startapps/crossx/model/FinancialInvoice;->financialInvoiceDetails:Ljava/util/List;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iput-object p1, p0, Lcom/startapps/crossx/model/FinancialInvoice;->financialInvoicePayments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFullExpirationDate()Ljava/lang/String;
    .locals 4

    .line 51
    invoke-static {}, Lcom/startapps/crossx/view/CrossXApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/model/FinancialInvoice;->dueDate:Ljava/lang/String;

    const-string/jumbo v2, "yyyy-MM-dd"

    const-string v3, "dd/MM/yyyy"

    .line 52
    invoke-static {v1, v2, v3}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1200fd

    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonthExpirationDate()Ljava/lang/String;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/startapps/crossx/model/FinancialInvoice;->dueDate:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/startapps/crossx/model/FinancialInvoice;->dueDate:Ljava/lang/String;

    invoke-static {v2}, Lcom/startapps/crossx/controller/utils/DateUtility;->getSortMonth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentStatus()Ljava/lang/String;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/startapps/crossx/model/FinancialInvoice;->financialInvoicePayments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/FinancialInvoicePayment;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/FinancialInvoicePayment;->getPaymentDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
