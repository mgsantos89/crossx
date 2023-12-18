.class Lio/card/payment/DetectionInfo;
.super Ljava/lang/Object;
.source "DetectionInfo.java"


# instance fields
.field public bottomEdge:Z

.field public complete:Z

.field public detectedCard:Lio/card/payment/CreditCard;

.field public expiry_month:I

.field public expiry_year:I

.field public focusScore:F

.field public leftEdge:Z

.field public prediction:[I

.field public rightEdge:Z

.field public topEdge:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lio/card/payment/DetectionInfo;->complete:Z

    const/16 v1, 0x10

    new-array v1, v1, [I

    .line 27
    iput-object v1, p0, Lio/card/payment/DetectionInfo;->prediction:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    const/16 v0, 0xf

    aput v2, v1, v0

    .line 31
    new-instance v0, Lio/card/payment/CreditCard;

    invoke-direct {v0}, Lio/card/payment/CreditCard;-><init>()V

    iput-object v0, p0, Lio/card/payment/DetectionInfo;->detectedCard:Lio/card/payment/CreditCard;

    return-void
.end method


# virtual methods
.method creditCard()Lio/card/payment/CreditCard;
    .locals 4

    .line 50
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 51
    iget-object v2, p0, Lio/card/payment/DetectionInfo;->prediction:[I

    aget v2, v2, v1

    if-ltz v2, :cond_0

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/card/payment/DetectionInfo;->prediction:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lio/card/payment/DetectionInfo;->detectedCard:Lio/card/payment/CreditCard;

    iput-object v0, v1, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lio/card/payment/DetectionInfo;->detectedCard:Lio/card/payment/CreditCard;

    iget v1, p0, Lio/card/payment/DetectionInfo;->expiry_month:I

    iput v1, v0, Lio/card/payment/CreditCard;->expiryMonth:I

    .line 58
    iget-object v0, p0, Lio/card/payment/DetectionInfo;->detectedCard:Lio/card/payment/CreditCard;

    iget v1, p0, Lio/card/payment/DetectionInfo;->expiry_year:I

    iput v1, v0, Lio/card/payment/CreditCard;->expiryYear:I

    .line 60
    iget-object v0, p0, Lio/card/payment/DetectionInfo;->detectedCard:Lio/card/payment/CreditCard;

    return-object v0
.end method

.method detected()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lio/card/payment/DetectionInfo;->topEdge:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/card/payment/DetectionInfo;->bottomEdge:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/card/payment/DetectionInfo;->rightEdge:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/card/payment/DetectionInfo;->leftEdge:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method numVisibleEdges()I
    .locals 2

    .line 64
    iget-boolean v0, p0, Lio/card/payment/DetectionInfo;->topEdge:Z

    iget-boolean v1, p0, Lio/card/payment/DetectionInfo;->bottomEdge:Z

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lio/card/payment/DetectionInfo;->leftEdge:Z

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lio/card/payment/DetectionInfo;->rightEdge:Z

    add-int/2addr v0, v1

    return v0
.end method

.method predicted()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lio/card/payment/DetectionInfo;->complete:Z

    return v0
.end method

.method sameEdgesAs(Lio/card/payment/DetectionInfo;)Z
    .locals 2

    .line 37
    iget-boolean v0, p1, Lio/card/payment/DetectionInfo;->topEdge:Z

    iget-boolean v1, p0, Lio/card/payment/DetectionInfo;->topEdge:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lio/card/payment/DetectionInfo;->bottomEdge:Z

    iget-boolean v1, p0, Lio/card/payment/DetectionInfo;->bottomEdge:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lio/card/payment/DetectionInfo;->leftEdge:Z

    iget-boolean v1, p0, Lio/card/payment/DetectionInfo;->leftEdge:Z

    if-ne v0, v1, :cond_0

    iget-boolean p1, p1, Lio/card/payment/DetectionInfo;->rightEdge:Z

    iget-boolean v0, p0, Lio/card/payment/DetectionInfo;->rightEdge:Z

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
