.class public final enum Lcom/startapps/crossx/model/enuns/MaskTypeEnum;
.super Ljava/lang/Enum;
.source "MaskTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/enuns/MaskTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/enuns/MaskTypeEnum;

.field public static final enum CARD_NUMBER:Lcom/startapps/crossx/model/enuns/MaskTypeEnum;

.field public static final enum VALIDATE_CARD:Lcom/startapps/crossx/model/enuns/MaskTypeEnum;


# instance fields
.field private final mask:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/enuns/MaskTypeEnum;
    .locals 2

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/MaskTypeEnum;->CARD_NUMBER:Lcom/startapps/crossx/model/enuns/MaskTypeEnum;

    sget-object v1, Lcom/startapps/crossx/model/enuns/MaskTypeEnum;->VALIDATE_CARD:Lcom/startapps/crossx/model/enuns/MaskTypeEnum;

    filled-new-array {v0, v1}, [Lcom/startapps/crossx/model/enuns/MaskTypeEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/startapps/crossx/model/enuns/MaskTypeEnum;

    const/4 v1, 0x0

    const-string v2, "#### #### #### ####"

    const-string v3, "CARD_NUMBER"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/MaskTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MaskTypeEnum;->CARD_NUMBER:Lcom/startapps/crossx/model/enuns/MaskTypeEnum;

    .line 9
    new-instance v0, Lcom/startapps/crossx/model/enuns/MaskTypeEnum;

    const/4 v1, 0x1

    const-string v2, "##/##"

    const-string v3, "VALIDATE_CARD"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/MaskTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MaskTypeEnum;->VALIDATE_CARD:Lcom/startapps/crossx/model/enuns/MaskTypeEnum;

    .line 6
    invoke-static {}, Lcom/startapps/crossx/model/enuns/MaskTypeEnum;->$values()[Lcom/startapps/crossx/model/enuns/MaskTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/enuns/MaskTypeEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/MaskTypeEnum;

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
    iput-object p3, p0, Lcom/startapps/crossx/model/enuns/MaskTypeEnum;->mask:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/MaskTypeEnum;
    .locals 1

    .line 6
    const-class v0, Lcom/startapps/crossx/model/enuns/MaskTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/enuns/MaskTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/enuns/MaskTypeEnum;
    .locals 1

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/MaskTypeEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/MaskTypeEnum;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/enuns/MaskTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/enuns/MaskTypeEnum;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/startapps/crossx/model/enuns/MaskTypeEnum;->mask:Ljava/lang/String;

    return-object v0
.end method
