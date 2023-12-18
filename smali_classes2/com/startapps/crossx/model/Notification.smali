.class public Lcom/startapps/crossx/model/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankSlipExpirationDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bank_slip_expiration_date"
    .end annotation
.end field

.field public creditCard:Lcom/startapps/crossx/model/CreditCard;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "credit_card"
    .end annotation
.end field

.field public dueDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "due_date"
    .end annotation
.end field

.field public membershipId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public membershipName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "membership_name"
    .end annotation
.end field

.field public message:Ljava/lang/String;

.field public products:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "products"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/Product;",
            ">;"
        }
    .end annotation
.end field

.field public recurrenceCreditCard:Lcom/startapps/crossx/model/CreditCard;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recurrence_credit_card"
    .end annotation
.end field

.field public recurrenceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recurrence_name"
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field public userHasCreditCards:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_has_credit_cards"
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
.method public getType()Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/startapps/crossx/model/Notification;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->getStatus(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    move-result-object v0

    return-object v0
.end method

.method public isNotPaymed()Z
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/startapps/crossx/model/Notification;->getType()Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->PAYMENT_SUCCESSFUL:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
