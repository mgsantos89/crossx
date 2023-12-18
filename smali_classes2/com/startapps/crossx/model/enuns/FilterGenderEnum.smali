.class public final enum Lcom/startapps/crossx/model/enuns/FilterGenderEnum;
.super Ljava/lang/Enum;
.source "FilterGenderEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/enuns/FilterGenderEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

.field public static final enum FEMALE:Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

.field public static final enum MALE:Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

.field public static final enum NONE:Lcom/startapps/crossx/model/enuns/FilterGenderEnum;


# instance fields
.field fullGender:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/enuns/FilterGenderEnum;
    .locals 3

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->NONE:Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    sget-object v1, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->MALE:Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    sget-object v2, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->FEMALE:Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    filled-new-array {v0, v1, v2}, [Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    const/4 v1, 0x0

    const-string v2, "nenhum"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->NONE:Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    .line 9
    new-instance v0, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    const/4 v1, 0x1

    const-string v2, "masculino"

    const-string v3, "MALE"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->MALE:Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    .line 10
    new-instance v0, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    const/4 v1, 0x2

    const-string v2, "feminino"

    const-string v3, "FEMALE"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->FEMALE:Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    .line 6
    invoke-static {}, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->$values()[Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->fullGender:Ljava/lang/String;

    return-void
.end method

.method public static getGenderValues()[Ljava/lang/String;
    .locals 3

    .line 28
    sget-object v0, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->NONE:Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    iget-object v0, v0, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->fullGender:Ljava/lang/String;

    sget-object v1, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->MALE:Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    iget-object v1, v1, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->fullGender:Ljava/lang/String;

    sget-object v2, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->FEMALE:Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    iget-object v2, v2, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->fullGender:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getValues()[Lcom/startapps/crossx/model/enuns/FilterGenderEnum;
    .locals 2

    .line 23
    sget-object v0, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->MALE:Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    sget-object v1, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->FEMALE:Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    filled-new-array {v0, v1}, [Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/FilterGenderEnum;
    .locals 1

    .line 6
    const-class v0, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/enuns/FilterGenderEnum;
    .locals 1

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/enuns/FilterGenderEnum;

    return-object v0
.end method


# virtual methods
.method public getFullGender()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->fullGender:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->fullGender:Ljava/lang/String;

    return-object v0
.end method
