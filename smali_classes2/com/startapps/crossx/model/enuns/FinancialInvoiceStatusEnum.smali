.class public final enum Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;
.super Ljava/lang/Enum;
.source "FinancialInvoiceStatusEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

.field public static final enum A:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

.field public static final enum C:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

.field public static final enum D:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

.field public static final enum P:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

.field public static final enum W:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;


# instance fields
.field private final type:Ljava/lang/String;

.field private final typrRes:I


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;
    .locals 5

    .line 9
    sget-object v0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->A:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    sget-object v1, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->P:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    sget-object v2, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->C:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    sget-object v3, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->D:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    sget-object v4, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->W:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    const/4 v1, 0x0

    const v2, 0x7f1201aa

    const-string v3, "A"

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->A:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    .line 12
    new-instance v0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    const/4 v1, 0x1

    const v2, 0x7f1201a9

    const-string v3, "P"

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->P:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    .line 13
    new-instance v0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    const/4 v1, 0x2

    const v2, 0x7f1201a7

    const-string v3, "C"

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->C:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    .line 14
    new-instance v0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    const/4 v1, 0x3

    const v2, 0x7f1201a8

    const-string v3, "D"

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->D:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    .line 15
    new-instance v0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    const/4 v1, 0x4

    const v2, 0x7f1201ab

    const-string v3, "W"

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->W:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    .line 9
    invoke-static {}, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->$values()[Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

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

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->type:Ljava/lang/String;

    .line 22
    iput p4, p0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->typrRes:I

    return-void
.end method

.method public static getType(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;
    .locals 5

    if-eqz p0, :cond_1

    .line 27
    invoke-static {}, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->values()[Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 28
    iget-object v4, v3, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->type:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_1
    sget-object p0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->A:Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;
    .locals 1

    .line 9
    const-class v0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;
    .locals 1

    .line 9
    sget-object v0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    invoke-static {}, Lcom/startapps/crossx/view/CrossXApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/startapps/crossx/model/enuns/FinancialInvoiceStatusEnum;->typrRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
