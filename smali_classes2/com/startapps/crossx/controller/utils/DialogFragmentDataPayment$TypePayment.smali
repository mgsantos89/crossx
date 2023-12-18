.class final enum Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;
.super Ljava/lang/Enum;
.source "DialogFragmentDataPayment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TypePayment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

.field public static final enum CHANGE_CARD:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

.field public static final enum ENABLE_PAYMENT:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

.field public static final enum OK:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

.field public static final enum TO_PAY_NOW:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;
    .locals 4

    .line 230
    sget-object v0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;->ENABLE_PAYMENT:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    sget-object v1, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;->TO_PAY_NOW:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    sget-object v2, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;->OK:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    sget-object v3, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;->CHANGE_CARD:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    filled-new-array {v0, v1, v2, v3}, [Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 231
    new-instance v0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    const-string v1, "ENABLE_PAYMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;->ENABLE_PAYMENT:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    new-instance v0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    const-string v1, "TO_PAY_NOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;->TO_PAY_NOW:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    new-instance v0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    const-string v1, "OK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;->OK:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    new-instance v0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    const-string v1, "CHANGE_CARD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;->CHANGE_CARD:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    .line 230
    invoke-static {}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;->$values()[Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;->$VALUES:[Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;
    .locals 1

    .line 230
    const-class v0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;
    .locals 1

    .line 230
    sget-object v0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;->$VALUES:[Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    invoke-virtual {v0}, [Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    return-object v0
.end method
