.class public final enum Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;
.super Ljava/lang/Enum;
.source "FinancialPaymentTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

.field public static final enum BILLET:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

.field public static final enum CHECK:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

.field public static final enum CREDIT:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

.field public static final enum DEBIT:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

.field public static final enum MONEY:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

.field public static final enum ONLINE_BILLET:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

.field public static final enum ONLINE_CREDIT:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

.field public static final enum OTHER:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

.field public static final enum TRANSFER:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;
    .locals 9

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->CREDIT:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    sget-object v1, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->MONEY:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    sget-object v2, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->DEBIT:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    sget-object v3, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->BILLET:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    sget-object v4, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->CHECK:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    sget-object v5, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->TRANSFER:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    sget-object v6, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->ONLINE_CREDIT:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    sget-object v7, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->ONLINE_BILLET:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    sget-object v8, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->OTHER:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    filled-new-array/range {v0 .. v8}, [Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    const/4 v1, 0x0

    const-string v2, "Cart\u00e3o de Cr\u00e9dito"

    const-string v3, "CREDIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->CREDIT:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    .line 8
    new-instance v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    const/4 v1, 0x1

    const-string v2, "Dinheiro"

    const-string v3, "MONEY"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->MONEY:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    .line 9
    new-instance v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    const/4 v1, 0x2

    const-string v2, "Cart\u00e3o de d\u00e9bito"

    const-string v3, "DEBIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->DEBIT:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    .line 10
    new-instance v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    const/4 v1, 0x3

    const-string v2, "Boleto Banc\u00e1rio"

    const-string v3, "BILLET"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->BILLET:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    .line 11
    new-instance v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    const/4 v1, 0x4

    const-string v2, "Cheque"

    const-string v3, "CHECK"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->CHECK:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    .line 12
    new-instance v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    const/4 v1, 0x5

    const-string v2, "Transfer\u00eancia"

    const-string v3, "TRANSFER"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->TRANSFER:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    .line 13
    new-instance v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    const/4 v1, 0x6

    const-string v2, "Online via cart\u00e3o de cr\u00e9dito"

    const-string v3, "ONLINE_CREDIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->ONLINE_CREDIT:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    .line 14
    new-instance v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    const/4 v1, 0x7

    const-string v2, "Online via boleto banc\u00e1rio"

    const-string v3, "ONLINE_BILLET"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->ONLINE_BILLET:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    .line 15
    new-instance v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    const/16 v1, 0x8

    const-string v2, "Cr\u00e9dito autom\u00e1tico"

    const-string v3, "OTHER"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->OTHER:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    .line 6
    invoke-static {}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->$values()[Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->type:Ljava/lang/String;

    return-void
.end method

.method public static getType(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;
    .locals 5

    if-eqz p0, :cond_1

    .line 25
    invoke-static {}, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->values()[Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 26
    iget-object v4, v3, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->type:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_1
    sget-object p0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->OTHER:Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;
    .locals 1

    .line 6
    const-class v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;
    .locals 1

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/startapps/crossx/model/enuns/FinancialPaymentTypeEnum;->type:Ljava/lang/String;

    return-object v0
.end method
