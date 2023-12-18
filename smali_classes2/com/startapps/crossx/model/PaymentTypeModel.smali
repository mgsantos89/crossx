.class public Lcom/startapps/crossx/model/PaymentTypeModel;
.super Ljava/lang/Object;
.source "PaymentTypeModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankSlipBarcode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bank_slip_barcode"
    .end annotation
.end field

.field public bankSlipExpirationDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bank_slip_expiration_date"
    .end annotation
.end field

.field public bankSlipUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bank_slip_url"
    .end annotation
.end field

.field public creditCardId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "credit_card_id"
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
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
