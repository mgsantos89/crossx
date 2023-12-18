.class public Lcom/startapps/crossx/model/Membership;
.super Ljava/lang/Object;
.source "Membership.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public checkinCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "checkin_count"
    .end annotation
.end field

.field public checkinLimit:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "checkin_limit"
    .end annotation
.end field

.field public discountValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discount_value"
    .end annotation
.end field

.field public endDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end_date"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public installments:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "installments"
    .end annotation
.end field

.field public installmentsValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "installment_value"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "membership_name"
    .end annotation
.end field

.field public paymentPending:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_pending"
    .end annotation
.end field

.field public programs:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "programs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/Program;",
            ">;"
        }
    .end annotation
.end field

.field public recurrenceCreditCardId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recurrence_credit_card_id"
    .end annotation
.end field

.field public recurrenceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recurrence_name"
    .end annotation
.end field

.field public startDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_date"
    .end annotation
.end field

.field public statusDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status_description"
    .end annotation
.end field

.field public totalValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_value"
    .end annotation
.end field

.field public type:Lcom/startapps/crossx/model/MembershipType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "membership_type"
    .end annotation
.end field

.field public userId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lcom/startapps/crossx/model/Membership;->id:J

    .line 58
    iput-object p3, p0, Lcom/startapps/crossx/model/Membership;->installmentsValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFormatedDiscount(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/startapps/crossx/model/Membership;->totalValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/startapps/crossx/model/Membership;->discountValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 102
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Utils;->formatMoneyValue(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/model/Membership;->totalValue:Ljava/lang/String;

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/Utils;->formatMoneyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/startapps/crossx/model/Membership;->installments:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f120207

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFormatedTotalValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/startapps/crossx/model/Membership;->totalValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Utils;->formatMoneyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/startapps/crossx/model/Membership;->installments:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f12020f

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPayStatus()I
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/startapps/crossx/model/Membership;->paymentPending:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120209

    goto :goto_0

    :cond_0
    const v0, 0x7f120208

    :goto_0
    return v0
.end method

.method public getPlanStatus()Ljava/lang/String;
    .locals 3

    .line 66
    sget-object v0, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;->TYPE_SESSION:Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

    invoke-virtual {p0}, Lcom/startapps/crossx/model/Membership;->getType()Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/startapps/crossx/model/Membership;->checkinCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/model/Membership;->checkinLimit:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/startapps/crossx/view/CrossXApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12020a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/startapps/crossx/model/Membership;->type:Lcom/startapps/crossx/model/MembershipType;

    iget-object v1, v1, Lcom/startapps/crossx/model/MembershipType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapps/crossx/model/Membership;->getStatus()Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgram()Ljava/lang/String;
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/startapps/crossx/model/Membership;->programs:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/startapps/crossx/model/Membership;->programs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/Program;

    if-nez v1, :cond_0

    .line 86
    iget-object v1, v2, Lcom/startapps/crossx/model/Program;->name:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/startapps/crossx/model/Program;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getStatus()Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/startapps/crossx/model/Membership;->statusDescription:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->getStatus(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/startapps/crossx/model/Membership;->type:Lcom/startapps/crossx/model/MembershipType;

    iget-object v0, v0, Lcom/startapps/crossx/model/MembershipType;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;->getType(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

    move-result-object v0

    return-object v0
.end method
