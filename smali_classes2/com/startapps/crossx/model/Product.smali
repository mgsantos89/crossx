.class public Lcom/startapps/crossx/model/Product;
.super Ljava/lang/Object;
.source "Product.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public membershipRecurrenceCreditCardId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "membership_recurrence_credit_card_id"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuyType()Lcom/startapps/crossx/model/enuns/ProductTypeEnum;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/startapps/crossx/model/Product;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->getType(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    move-result-object v0

    return-object v0
.end method
