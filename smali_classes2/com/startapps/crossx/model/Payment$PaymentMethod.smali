.class public final enum Lcom/startapps/crossx/model/Payment$PaymentMethod;
.super Ljava/lang/Enum;
.source "Payment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/model/Payment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaymentMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/Payment$PaymentMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/Payment$PaymentMethod;

.field public static final enum ACCOUNT_CREDIT:Lcom/startapps/crossx/model/Payment$PaymentMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "9"
    .end annotation
.end field

.field public static final enum BANK_DRAFT:Lcom/startapps/crossx/model/Payment$PaymentMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "4"
    .end annotation
.end field

.field public static final enum CREDIT_CARD:Lcom/startapps/crossx/model/Payment$PaymentMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "2"
    .end annotation
.end field

.field public static final enum DEBIT_CARD:Lcom/startapps/crossx/model/Payment$PaymentMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "1"
    .end annotation
.end field

.field public static final enum MONEY:Lcom/startapps/crossx/model/Payment$PaymentMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "3"
    .end annotation
.end field

.field public static final enum ONLINE_CARD:Lcom/startapps/crossx/model/Payment$PaymentMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "7"
    .end annotation
.end field

.field public static final enum ONLINE_ORDER:Lcom/startapps/crossx/model/Payment$PaymentMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "8"
    .end annotation
.end field

.field public static final enum ORDER:Lcom/startapps/crossx/model/Payment$PaymentMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "5"
    .end annotation
.end field

.field public static final enum TRANSFER:Lcom/startapps/crossx/model/Payment$PaymentMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "6"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/Payment$PaymentMethod;
    .locals 9

    .line 29
    sget-object v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;->DEBIT_CARD:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    sget-object v1, Lcom/startapps/crossx/model/Payment$PaymentMethod;->CREDIT_CARD:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    sget-object v2, Lcom/startapps/crossx/model/Payment$PaymentMethod;->MONEY:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    sget-object v3, Lcom/startapps/crossx/model/Payment$PaymentMethod;->BANK_DRAFT:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    sget-object v4, Lcom/startapps/crossx/model/Payment$PaymentMethod;->ORDER:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    sget-object v5, Lcom/startapps/crossx/model/Payment$PaymentMethod;->TRANSFER:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    sget-object v6, Lcom/startapps/crossx/model/Payment$PaymentMethod;->ONLINE_CARD:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    sget-object v7, Lcom/startapps/crossx/model/Payment$PaymentMethod;->ONLINE_ORDER:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    sget-object v8, Lcom/startapps/crossx/model/Payment$PaymentMethod;->ACCOUNT_CREDIT:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    filled-new-array/range {v0 .. v8}, [Lcom/startapps/crossx/model/Payment$PaymentMethod;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;

    const-string v1, "DEBIT_CARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$PaymentMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;->DEBIT_CARD:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    .line 31
    new-instance v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;

    const-string v1, "CREDIT_CARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$PaymentMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;->CREDIT_CARD:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    .line 32
    new-instance v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;

    const-string v1, "MONEY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$PaymentMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;->MONEY:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    .line 33
    new-instance v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;

    const-string v1, "BANK_DRAFT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$PaymentMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;->BANK_DRAFT:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    .line 34
    new-instance v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;

    const-string v1, "ORDER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$PaymentMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;->ORDER:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    .line 35
    new-instance v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;

    const-string v1, "TRANSFER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$PaymentMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;->TRANSFER:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    .line 36
    new-instance v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;

    const-string v1, "ONLINE_CARD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$PaymentMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;->ONLINE_CARD:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    .line 37
    new-instance v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;

    const-string v1, "ONLINE_ORDER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$PaymentMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;->ONLINE_ORDER:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    .line 38
    new-instance v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;

    const-string v1, "ACCOUNT_CREDIT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$PaymentMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;->ACCOUNT_CREDIT:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    .line 29
    invoke-static {}, Lcom/startapps/crossx/model/Payment$PaymentMethod;->$values()[Lcom/startapps/crossx/model/Payment$PaymentMethod;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;->$VALUES:[Lcom/startapps/crossx/model/Payment$PaymentMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/Payment$PaymentMethod;
    .locals 1

    .line 29
    const-class v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/Payment$PaymentMethod;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/Payment$PaymentMethod;
    .locals 1

    .line 29
    sget-object v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;->$VALUES:[Lcom/startapps/crossx/model/Payment$PaymentMethod;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/Payment$PaymentMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/Payment$PaymentMethod;

    return-object v0
.end method
