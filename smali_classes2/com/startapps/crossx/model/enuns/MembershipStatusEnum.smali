.class public final enum Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;
.super Ljava/lang/Enum;
.source "MembershipStatusEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

.field public static final enum ACTIVCE:Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

.field public static final enum FINISHED:Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

.field public static final enum LOCKED:Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

.field public static final enum WAITING:Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;


# instance fields
.field private final type:Ljava/lang/String;

.field private final typeRes:I


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;
    .locals 4

    .line 9
    sget-object v0, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->FINISHED:Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    sget-object v1, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->LOCKED:Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    sget-object v2, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->ACTIVCE:Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    sget-object v3, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->WAITING:Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    filled-new-array {v0, v1, v2, v3}, [Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    const-string v1, "finished"

    const v2, 0x7f12020c

    const-string v3, "FINISHED"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->FINISHED:Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    .line 12
    new-instance v0, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    const-string v1, "locked"

    const v2, 0x7f12020d

    const-string v3, "LOCKED"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->LOCKED:Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    .line 13
    new-instance v0, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    const-string v1, "active"

    const v2, 0x7f12020b

    const-string v3, "ACTIVCE"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->ACTIVCE:Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    .line 14
    new-instance v0, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    const-string/jumbo v1, "waiting"

    const v2, 0x7f12020e

    const-string v3, "WAITING"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->WAITING:Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    .line 9
    invoke-static {}, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->$values()[Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->type:Ljava/lang/String;

    .line 21
    iput p4, p0, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->typeRes:I

    return-void
.end method

.method public static getStatus(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;
    .locals 5

    if-eqz p0, :cond_1

    .line 30
    invoke-static {}, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->values()[Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 31
    iget-object v4, v3, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->type:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    sget-object p0, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->ACTIVCE:Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;
    .locals 1

    .line 9
    const-class v0, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;
    .locals 1

    .line 9
    sget-object v0, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    invoke-static {}, Lcom/startapps/crossx/view/CrossXApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->typeRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
