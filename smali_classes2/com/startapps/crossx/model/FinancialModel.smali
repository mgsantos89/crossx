.class public Lcom/startapps/crossx/model/FinancialModel;
.super Lcom/startapps/crossx/model/AbstractModel;
.source "FinancialModel.java"


# instance fields
.field private created:Ljava/lang/String;

.field private id:J

.field private month:Ljava/lang/String;

.field private price:D

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/startapps/crossx/model/AbstractModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreated()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/startapps/crossx/model/FinancialModel;->created:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/startapps/crossx/model/FinancialModel;->id:J

    return-wide v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/startapps/crossx/model/FinancialModel;->month:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/startapps/crossx/model/FinancialModel;->price:D

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/startapps/crossx/model/FinancialModel;->status:I

    return v0
.end method

.method public setCreated(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/startapps/crossx/model/FinancialModel;->created:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/startapps/crossx/model/FinancialModel;->id:J

    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/startapps/crossx/model/FinancialModel;->month:Ljava/lang/String;

    return-void
.end method

.method public setPrice(D)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/startapps/crossx/model/FinancialModel;->price:D

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/startapps/crossx/model/FinancialModel;->status:I

    return-void
.end method
