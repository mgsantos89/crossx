.class public final enum Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;
.super Ljava/lang/Enum;
.source "BrandCardTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

.field public static final enum AMEX:Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

.field public static final enum ELO:Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

.field public static final enum MASTER_CARD:Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

.field public static final enum VISA:Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;


# instance fields
.field private drawableRes:I

.field private type:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;
    .locals 4

    .line 8
    sget-object v0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->VISA:Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    sget-object v1, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->MASTER_CARD:Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    sget-object v2, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->AMEX:Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    sget-object v3, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->ELO:Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    filled-new-array {v0, v1, v2, v3}, [Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    const-string/jumbo v1, "visa"

    const v2, 0x7f0800d9

    const-string v3, "VISA"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->VISA:Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    .line 11
    new-instance v0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    const-string v1, "mastercard"

    const v2, 0x7f0800d6

    const-string v3, "MASTER_CARD"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->MASTER_CARD:Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    .line 12
    new-instance v0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    const-string v1, "amex"

    const v2, 0x7f0800d0

    const-string v3, "AMEX"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->AMEX:Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    .line 13
    new-instance v0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    const-string v1, "elo"

    const v2, 0x7f0800d2

    const-string v3, "ELO"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->ELO:Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    .line 8
    invoke-static {}, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->$values()[Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->type:Ljava/lang/String;

    .line 20
    iput p4, p0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->drawableRes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;
    .locals 1

    .line 8
    const-class v0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;
    .locals 1

    .line 8
    sget-object v0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getDrawableRes()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->drawableRes:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->type:Ljava/lang/String;

    return-object v0
.end method
