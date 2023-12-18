.class public final enum Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;
.super Ljava/lang/Enum;
.source "NotificationTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

.field public static final enum BANK_SLIP_CREATED:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

.field public static final enum CREDIT_CARD_REFUSED:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

.field public static final enum DUE_DATE:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

.field public static final enum FAIL:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

.field public static final enum PAYMENT_SUCCESSFUL:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;
    .locals 5

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->DUE_DATE:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    sget-object v1, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->BANK_SLIP_CREATED:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    sget-object v2, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->CREDIT_CARD_REFUSED:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    sget-object v3, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->PAYMENT_SUCCESSFUL:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    sget-object v4, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->FAIL:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    const/4 v1, 0x0

    const-string v2, "membership_invoice_due_date"

    const-string v3, "DUE_DATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->DUE_DATE:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    .line 8
    new-instance v0, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    const/4 v1, 0x1

    const-string v2, "bank_slip_created"

    const-string v3, "BANK_SLIP_CREATED"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->BANK_SLIP_CREATED:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    .line 9
    new-instance v0, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    const/4 v1, 0x2

    const-string v2, "credit_card_refused"

    const-string v3, "CREDIT_CARD_REFUSED"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->CREDIT_CARD_REFUSED:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    .line 10
    new-instance v0, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    const/4 v1, 0x3

    const-string v2, "payment_successful"

    const-string v3, "PAYMENT_SUCCESSFUL"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->PAYMENT_SUCCESSFUL:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    .line 11
    new-instance v0, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    const/4 v1, 0x4

    const-string v2, "fail"

    const-string v3, "FAIL"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->FAIL:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    .line 6
    invoke-static {}, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->$values()[Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->type:Ljava/lang/String;

    return-void
.end method

.method public static getStatus(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;
    .locals 5

    if-eqz p0, :cond_1

    .line 21
    invoke-static {}, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->values()[Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 22
    iget-object v4, v3, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->type:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    :cond_1
    sget-object p0, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->FAIL:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;
    .locals 1

    .line 6
    const-class v0, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;
    .locals 1

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->type:Ljava/lang/String;

    return-object v0
.end method
