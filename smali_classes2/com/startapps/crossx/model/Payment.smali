.class public Lcom/startapps/crossx/model/Payment;
.super Ljava/lang/Object;
.source "Payment.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/model/Payment$TaxTerm;,
        Lcom/startapps/crossx/model/Payment$Tax;,
        Lcom/startapps/crossx/model/Payment$Method;,
        Lcom/startapps/crossx/model/Payment$PaymentMethod;,
        Lcom/startapps/crossx/model/Payment$Status;
    }
.end annotation


# instance fields
.field public authorizationCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authorization_code"
    .end annotation
.end field

.field public competenceDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "competence_date"
    .end annotation
.end field

.field public discountDays:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discount_days"
    .end annotation
.end field

.field private discountPercentage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discount_percentage"
    .end annotation
.end field

.field public dueDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "due_date"
    .end annotation
.end field

.field public grossValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gross_value"
    .end annotation
.end field

.field public grouped:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "grouped"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public netValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "net_value"
    .end annotation
.end field

.field public onlineOrderBarcode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "online_order_barcode"
    .end annotation
.end field

.field public onlineOrderUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "online_order_url"
    .end annotation
.end field

.field public paymentDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_date"
    .end annotation
.end field

.field public paymentMethod:Lcom/startapps/crossx/model/Payment$Method;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_method"
    .end annotation
.end field

.field public paymentMethodId:Lcom/startapps/crossx/model/Payment$PaymentMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_methods_id"
    .end annotation
.end field

.field public paymentTax:Lcom/startapps/crossx/model/Payment$Tax;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_tax"
    .end annotation
.end field

.field public paymentTaxTerm:Lcom/startapps/crossx/model/Payment$TaxTerm;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_tax_term"
    .end annotation
.end field

.field public rateValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rate_value"
    .end annotation
.end field

.field public status:Lcom/startapps/crossx/model/Payment$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field public taxValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tax_value"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiscountValue()Ljava/lang/String;
    .locals 9

    .line 104
    iget-object v0, p0, Lcom/startapps/crossx/model/Payment;->discountPercentage:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/startapps/crossx/model/Payment;->grossValue:Ljava/lang/String;

    const-string v2, "[.]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[,]"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iget-object v0, p0, Lcom/startapps/crossx/model/Payment;->discountPercentage:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v7

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Utils;->formatMoneyValue(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getMaxDateTodDscount()Ljava/lang/String;
    .locals 4

    .line 115
    iget v0, p0, Lcom/startapps/crossx/model/Payment;->discountDays:I

    if-lez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/startapps/crossx/model/Payment;->dueDate:Ljava/lang/String;

    const-string v1, "dd/MM/yyyy"

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->stringForDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 118
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 119
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 120
    iget v0, p0, Lcom/startapps/crossx/model/Payment;->discountDays:I

    mul-int/lit8 v0, v0, -0x1

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 121
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
