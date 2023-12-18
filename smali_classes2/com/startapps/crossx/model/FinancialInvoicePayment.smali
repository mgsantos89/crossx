.class public Lcom/startapps/crossx/model/FinancialInvoicePayment;
.super Ljava/lang/Object;
.source "FinancialInvoicePayment.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public paymentMethod:Lcom/startapps/crossx/model/PaymentMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_method"
    .end annotation
.end field

.field public status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field public value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPaymentDescription()Ljava/lang/String;
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcom/startapps/crossx/model/FinancialInvoicePayment;->getStatus()Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->P:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    if-ne v0, v1, :cond_2

    .line 28
    sget-object v0, Lcom/startapps/crossx/model/FinancialInvoicePayment$1;->$SwitchMap$com$startapps$crossx$model$enuns$FinancialPaymentTypeEnum:[I

    iget-object v1, p0, Lcom/startapps/crossx/model/FinancialInvoicePayment;->paymentMethod:Lcom/startapps/crossx/model/PaymentMethod;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/PaymentMethod;->getType()Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/startapps/crossx/model/FinancialInvoicePayment;->paymentMethod:Lcom/startapps/crossx/model/PaymentMethod;

    iget-object v0, v0, Lcom/startapps/crossx/model/PaymentMethod;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->getType(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/startapps/crossx/model/FinancialInvoicePayment;->getStatus()Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " em "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/model/FinancialInvoicePayment;->paymentMethod:Lcom/startapps/crossx/model/PaymentMethod;

    iget-object v1, v1, Lcom/startapps/crossx/model/PaymentMethod;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->getType(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/startapps/crossx/model/FinancialInvoicePayment;->getStatus()Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " por "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/model/FinancialInvoicePayment;->paymentMethod:Lcom/startapps/crossx/model/PaymentMethod;

    iget-object v1, v1, Lcom/startapps/crossx/model/PaymentMethod;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->getType(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/startapps/crossx/model/FinancialInvoicePayment;->getStatus()Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/startapps/crossx/model/FinancialInvoicePayment;->status:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->getType(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    move-result-object v0

    return-object v0
.end method
