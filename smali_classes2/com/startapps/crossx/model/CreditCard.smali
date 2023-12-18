.class public Lcom/startapps/crossx/model/CreditCard;
.super Ljava/lang/Object;
.source "CreditCard.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public brand:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "brand"
    .end annotation
.end field

.field public cardDefault:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default"
    .end annotation
.end field

.field public cvv:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cvv"
    .end annotation
.end field

.field public expirationMonth:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expiration_month"
    .end annotation
.end field

.field public expirationYear:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expiration_year"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public lastDigits:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_digits"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "holder_name"
    .end annotation
.end field

.field public number:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number"
    .end annotation
.end field

.field public userId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
