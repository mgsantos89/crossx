.class synthetic Lcom/startapps/crossx/model/FinancialInvoicePayment$1;
.super Ljava/lang/Object;
.source "FinancialInvoicePayment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/model/FinancialInvoicePayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$startapps$crossx$model$enuns$FinancialPaymentTypeEnum:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    invoke-static {}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->values()[Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/startapps/crossx/model/FinancialInvoicePayment$1;->$SwitchMap$com$startapps$crossx$model$enuns$FinancialPaymentTypeEnum:[I

    :try_start_0
    sget-object v1, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->CREDIT:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/startapps/crossx/model/FinancialInvoicePayment$1;->$SwitchMap$com$startapps$crossx$model$enuns$FinancialPaymentTypeEnum:[I

    sget-object v1, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->DEBIT:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/startapps/crossx/model/FinancialInvoicePayment$1;->$SwitchMap$com$startapps$crossx$model$enuns$FinancialPaymentTypeEnum:[I

    sget-object v1, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->MONEY:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
