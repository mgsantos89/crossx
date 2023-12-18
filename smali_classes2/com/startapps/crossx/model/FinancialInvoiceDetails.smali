.class public Lcom/startapps/crossx/model/FinancialInvoiceDetails;
.super Ljava/lang/Object;
.source "FinancialInvoiceDetails.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public financialInvoiceId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "financial_invoice_id"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public totalValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
