.class public final enum Lcom/startapps/crossx/model/enuns/PaymentStatus;
.super Ljava/lang/Enum;
.source "PaymentStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/enuns/PaymentStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/enuns/PaymentStatus;

.field public static final enum PAID:Lcom/startapps/crossx/model/enuns/PaymentStatus;

.field public static final enum PENDENT:Lcom/startapps/crossx/model/enuns/PaymentStatus;


# instance fields
.field private statusSTR:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/enuns/PaymentStatus;
    .locals 2

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/PaymentStatus;->PENDENT:Lcom/startapps/crossx/model/enuns/PaymentStatus;

    sget-object v1, Lcom/startapps/crossx/model/enuns/PaymentStatus;->PAID:Lcom/startapps/crossx/model/enuns/PaymentStatus;

    filled-new-array {v0, v1}, [Lcom/startapps/crossx/model/enuns/PaymentStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/startapps/crossx/model/enuns/PaymentStatus;

    const/4 v1, 0x0

    const-string v2, "PENDENTE"

    const-string v3, "PENDENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/PaymentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/PaymentStatus;->PENDENT:Lcom/startapps/crossx/model/enuns/PaymentStatus;

    .line 9
    new-instance v0, Lcom/startapps/crossx/model/enuns/PaymentStatus;

    const/4 v1, 0x1

    const-string v2, "PAGO"

    const-string v3, "PAID"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/PaymentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/PaymentStatus;->PAID:Lcom/startapps/crossx/model/enuns/PaymentStatus;

    .line 6
    invoke-static {}, Lcom/startapps/crossx/model/enuns/PaymentStatus;->$values()[Lcom/startapps/crossx/model/enuns/PaymentStatus;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/enuns/PaymentStatus;->$VALUES:[Lcom/startapps/crossx/model/enuns/PaymentStatus;

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/startapps/crossx/model/enuns/PaymentStatus;->statusSTR:Ljava/lang/String;

    return-void
.end method

.method public static getElementForPosition(I)Lcom/startapps/crossx/model/enuns/PaymentStatus;
    .locals 2

    .line 22
    invoke-static {}, Lcom/startapps/crossx/model/enuns/PaymentStatus;->values()[Lcom/startapps/crossx/model/enuns/PaymentStatus;

    move-result-object v0

    .line 23
    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    .line 24
    aget-object p0, v0, p0

    return-object p0

    .line 26
    :cond_0
    sget-object p0, Lcom/startapps/crossx/model/enuns/PaymentStatus;->PENDENT:Lcom/startapps/crossx/model/enuns/PaymentStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/PaymentStatus;
    .locals 1

    .line 6
    const-class v0, Lcom/startapps/crossx/model/enuns/PaymentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/enuns/PaymentStatus;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/enuns/PaymentStatus;
    .locals 1

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/PaymentStatus;->$VALUES:[Lcom/startapps/crossx/model/enuns/PaymentStatus;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/enuns/PaymentStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/enuns/PaymentStatus;

    return-object v0
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/startapps/crossx/model/enuns/PaymentStatus;->statusSTR:Ljava/lang/String;

    return-object v0
.end method
