.class public Lcom/startapps/crossx/model/DataPayment;
.super Ljava/lang/Object;
.source "DataPayment.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bank_slip_barcode"
    .end annotation
.end field

.field public creditCardId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "credit_card_id"
    .end annotation
.end field

.field public expirationDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bank_slip_expiration_date"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public pushData:Lcom/startapps/crossx/model/PushData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "push_data"
    .end annotation
.end field

.field public status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bank_slip_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
