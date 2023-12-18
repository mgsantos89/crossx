.class public final enum Lcom/startapps/crossx/model/Payment$Status;
.super Ljava/lang/Enum;
.source "Payment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/model/Payment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/Payment$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/Payment$Status;

.field public static final enum ACTIVE:Lcom/startapps/crossx/model/Payment$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "1"
    .end annotation
.end field

.field public static final enum AUTHORIZED:Lcom/startapps/crossx/model/Payment$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "5"
    .end annotation
.end field

.field public static final enum CANCELED:Lcom/startapps/crossx/model/Payment$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "2"
    .end annotation
.end field

.field public static final enum CHARGE_BACK:Lcom/startapps/crossx/model/Payment$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "11"
    .end annotation
.end field

.field public static final enum DISPUTE_CHARGE_BACK:Lcom/startapps/crossx/model/Payment$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "11"
    .end annotation
.end field

.field public static final enum NOT_CARD:Lcom/startapps/crossx/model/Payment$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "10"
    .end annotation
.end field

.field public static final enum PAID:Lcom/startapps/crossx/model/Payment$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "3"
    .end annotation
.end field

.field public static final enum PENDING_REFUND:Lcom/startapps/crossx/model/Payment$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "9"
    .end annotation
.end field

.field public static final enum REFUNDED:Lcom/startapps/crossx/model/Payment$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "8"
    .end annotation
.end field

.field public static final enum REFUSED:Lcom/startapps/crossx/model/Payment$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "6"
    .end annotation
.end field

.field public static final enum SEND_GATEWAY:Lcom/startapps/crossx/model/Payment$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "4"
    .end annotation
.end field

.field public static final enum WAINTING_PAYMENT:Lcom/startapps/crossx/model/Payment$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "7"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/Payment$Status;
    .locals 12

    .line 14
    sget-object v0, Lcom/startapps/crossx/model/Payment$Status;->ACTIVE:Lcom/startapps/crossx/model/Payment$Status;

    sget-object v1, Lcom/startapps/crossx/model/Payment$Status;->CANCELED:Lcom/startapps/crossx/model/Payment$Status;

    sget-object v2, Lcom/startapps/crossx/model/Payment$Status;->PAID:Lcom/startapps/crossx/model/Payment$Status;

    sget-object v3, Lcom/startapps/crossx/model/Payment$Status;->SEND_GATEWAY:Lcom/startapps/crossx/model/Payment$Status;

    sget-object v4, Lcom/startapps/crossx/model/Payment$Status;->AUTHORIZED:Lcom/startapps/crossx/model/Payment$Status;

    sget-object v5, Lcom/startapps/crossx/model/Payment$Status;->REFUSED:Lcom/startapps/crossx/model/Payment$Status;

    sget-object v6, Lcom/startapps/crossx/model/Payment$Status;->WAINTING_PAYMENT:Lcom/startapps/crossx/model/Payment$Status;

    sget-object v7, Lcom/startapps/crossx/model/Payment$Status;->REFUNDED:Lcom/startapps/crossx/model/Payment$Status;

    sget-object v8, Lcom/startapps/crossx/model/Payment$Status;->PENDING_REFUND:Lcom/startapps/crossx/model/Payment$Status;

    sget-object v9, Lcom/startapps/crossx/model/Payment$Status;->NOT_CARD:Lcom/startapps/crossx/model/Payment$Status;

    sget-object v10, Lcom/startapps/crossx/model/Payment$Status;->CHARGE_BACK:Lcom/startapps/crossx/model/Payment$Status;

    sget-object v11, Lcom/startapps/crossx/model/Payment$Status;->DISPUTE_CHARGE_BACK:Lcom/startapps/crossx/model/Payment$Status;

    filled-new-array/range {v0 .. v11}, [Lcom/startapps/crossx/model/Payment$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/startapps/crossx/model/Payment$Status;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$Status;->ACTIVE:Lcom/startapps/crossx/model/Payment$Status;

    .line 16
    new-instance v0, Lcom/startapps/crossx/model/Payment$Status;

    const-string v1, "CANCELED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$Status;->CANCELED:Lcom/startapps/crossx/model/Payment$Status;

    .line 17
    new-instance v0, Lcom/startapps/crossx/model/Payment$Status;

    const-string v1, "PAID"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$Status;->PAID:Lcom/startapps/crossx/model/Payment$Status;

    .line 18
    new-instance v0, Lcom/startapps/crossx/model/Payment$Status;

    const-string v1, "SEND_GATEWAY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$Status;->SEND_GATEWAY:Lcom/startapps/crossx/model/Payment$Status;

    .line 19
    new-instance v0, Lcom/startapps/crossx/model/Payment$Status;

    const-string v1, "AUTHORIZED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$Status;->AUTHORIZED:Lcom/startapps/crossx/model/Payment$Status;

    .line 20
    new-instance v0, Lcom/startapps/crossx/model/Payment$Status;

    const-string v1, "REFUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$Status;->REFUSED:Lcom/startapps/crossx/model/Payment$Status;

    .line 21
    new-instance v0, Lcom/startapps/crossx/model/Payment$Status;

    const-string v1, "WAINTING_PAYMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$Status;->WAINTING_PAYMENT:Lcom/startapps/crossx/model/Payment$Status;

    .line 22
    new-instance v0, Lcom/startapps/crossx/model/Payment$Status;

    const-string v1, "REFUNDED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$Status;->REFUNDED:Lcom/startapps/crossx/model/Payment$Status;

    .line 23
    new-instance v0, Lcom/startapps/crossx/model/Payment$Status;

    const-string v1, "PENDING_REFUND"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$Status;->PENDING_REFUND:Lcom/startapps/crossx/model/Payment$Status;

    .line 24
    new-instance v0, Lcom/startapps/crossx/model/Payment$Status;

    const-string v1, "NOT_CARD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$Status;->NOT_CARD:Lcom/startapps/crossx/model/Payment$Status;

    .line 25
    new-instance v0, Lcom/startapps/crossx/model/Payment$Status;

    const-string v1, "CHARGE_BACK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$Status;->CHARGE_BACK:Lcom/startapps/crossx/model/Payment$Status;

    .line 26
    new-instance v0, Lcom/startapps/crossx/model/Payment$Status;

    const-string v1, "DISPUTE_CHARGE_BACK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/Payment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/Payment$Status;->DISPUTE_CHARGE_BACK:Lcom/startapps/crossx/model/Payment$Status;

    .line 14
    invoke-static {}, Lcom/startapps/crossx/model/Payment$Status;->$values()[Lcom/startapps/crossx/model/Payment$Status;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/Payment$Status;->$VALUES:[Lcom/startapps/crossx/model/Payment$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/Payment$Status;
    .locals 1

    .line 14
    const-class v0, Lcom/startapps/crossx/model/Payment$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/Payment$Status;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/Payment$Status;
    .locals 1

    .line 14
    sget-object v0, Lcom/startapps/crossx/model/Payment$Status;->$VALUES:[Lcom/startapps/crossx/model/Payment$Status;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/Payment$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/Payment$Status;

    return-object v0
.end method
