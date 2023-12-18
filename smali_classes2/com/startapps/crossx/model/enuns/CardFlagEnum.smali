.class public final enum Lcom/startapps/crossx/model/enuns/CardFlagEnum;
.super Ljava/lang/Enum;
.source "CardFlagEnum.java"

# interfaces
.implements Lcom/startapps/crossx/controller/utils/Listable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/enuns/CardFlagEnum;",
        ">;",
        "Lcom/startapps/crossx/controller/utils/Listable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/enuns/CardFlagEnum;

.field public static final enum CHOICE:Lcom/startapps/crossx/model/enuns/CardFlagEnum;

.field public static final enum ELO:Lcom/startapps/crossx/model/enuns/CardFlagEnum;

.field public static final enum MASTER:Lcom/startapps/crossx/model/enuns/CardFlagEnum;

.field public static final enum VISA:Lcom/startapps/crossx/model/enuns/CardFlagEnum;


# instance fields
.field public final type:Ljava/lang/String;

.field public final typeResume:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/enuns/CardFlagEnum;
    .locals 4

    .line 8
    sget-object v0, Lcom/startapps/crossx/model/enuns/CardFlagEnum;->CHOICE:Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    sget-object v1, Lcom/startapps/crossx/model/enuns/CardFlagEnum;->ELO:Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    sget-object v2, Lcom/startapps/crossx/model/enuns/CardFlagEnum;->MASTER:Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    sget-object v3, Lcom/startapps/crossx/model/enuns/CardFlagEnum;->VISA:Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    filled-new-array {v0, v1, v2, v3}, [Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    const-string v1, ""

    const-string v2, "Escolha uma bandeira"

    const-string v3, "CHOICE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/startapps/crossx/model/enuns/CardFlagEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/CardFlagEnum;->CHOICE:Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    .line 11
    new-instance v0, Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    const-string v1, "elo"

    const-string v2, "Elo"

    const-string v3, "ELO"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/startapps/crossx/model/enuns/CardFlagEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/CardFlagEnum;->ELO:Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    .line 12
    new-instance v0, Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    const-string v1, "master"

    const-string v2, "Master Card"

    const-string v3, "MASTER"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/startapps/crossx/model/enuns/CardFlagEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/CardFlagEnum;->MASTER:Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    .line 13
    new-instance v0, Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    const-string/jumbo v1, "visa"

    const-string v2, "Visa"

    const-string v3, "VISA"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/startapps/crossx/model/enuns/CardFlagEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/CardFlagEnum;->VISA:Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    .line 8
    invoke-static {}, Lcom/startapps/crossx/model/enuns/CardFlagEnum;->$values()[Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/enuns/CardFlagEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/startapps/crossx/model/enuns/CardFlagEnum;->type:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/startapps/crossx/model/enuns/CardFlagEnum;->typeResume:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/CardFlagEnum;
    .locals 5

    if-eqz p0, :cond_1

    .line 25
    invoke-static {}, Lcom/startapps/crossx/model/enuns/CardFlagEnum;->values()[Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 26
    iget-object v4, v3, Lcom/startapps/crossx/model/enuns/CardFlagEnum;->type:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_1
    sget-object p0, Lcom/startapps/crossx/model/enuns/CardFlagEnum;->CHOICE:Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/CardFlagEnum;
    .locals 1

    .line 8
    const-class v0, Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/enuns/CardFlagEnum;
    .locals 1

    .line 8
    sget-object v0, Lcom/startapps/crossx/model/enuns/CardFlagEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/enuns/CardFlagEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/enuns/CardFlagEnum;

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/startapps/crossx/model/enuns/CardFlagEnum;->typeResume:Ljava/lang/String;

    return-object v0
.end method
