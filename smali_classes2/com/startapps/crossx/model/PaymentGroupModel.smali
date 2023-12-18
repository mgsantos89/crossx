.class public Lcom/startapps/crossx/model/PaymentGroupModel;
.super Ljava/lang/Object;
.source "PaymentGroupModel.java"


# instance fields
.field public groupTotalValue:D

.field public name:Ljava/lang/String;

.field public productType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/startapps/crossx/model/PaymentGroupModel;->name:Ljava/lang/String;

    .line 16
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/startapps/crossx/model/PaymentGroupModel;->groupTotalValue:D

    .line 17
    iput-object p3, p0, Lcom/startapps/crossx/model/PaymentGroupModel;->productType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProductType()Lcom/startapps/crossx/model/enuns/ProductTypeEnum;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/startapps/crossx/model/PaymentGroupModel;->productType:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->getType(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    move-result-object v0

    return-object v0
.end method
