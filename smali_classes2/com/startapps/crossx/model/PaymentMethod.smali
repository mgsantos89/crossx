.class public Lcom/startapps/crossx/model/PaymentMethod;
.super Ljava/lang/Object;
.source "PaymentMethod.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankSlipEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accept_bank_slip"
    .end annotation
.end field

.field public creditCardEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accept_credit_card"
    .end annotation
.end field

.field public creditCards:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "credit_cards"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CreditCard;",
            ">;"
        }
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public paymentEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_enabled"
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
.method public getType()Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/startapps/crossx/model/PaymentMethod;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->getType(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    move-result-object v0

    return-object v0
.end method
