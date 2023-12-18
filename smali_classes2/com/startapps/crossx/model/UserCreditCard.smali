.class public Lcom/startapps/crossx/model/UserCreditCard;
.super Ljava/lang/Object;
.source "UserCreditCard.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public brand:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "brand"
    .end annotation
.end field

.field public cardDefault:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default"
    .end annotation
.end field

.field public dueDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "due_date"
    .end annotation
.end field

.field public firstDigits:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "first_digits"
    .end annotation
.end field

.field public holderName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "holder_name"
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

.field public userId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
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
.method public getExpirationDateString()Ljava/lang/String;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/startapps/crossx/model/UserCreditCard;->dueDate:Ljava/lang/String;

    const-string/jumbo v1, "yyyy-MM-dd"

    const-string v2, "MM/yy"

    invoke-static {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDefault()Z
    .locals 4

    .line 35
    iget-wide v0, p0, Lcom/startapps/crossx/model/UserCreditCard;->cardDefault:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
