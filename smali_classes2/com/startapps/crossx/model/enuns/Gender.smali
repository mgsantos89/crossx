.class public final enum Lcom/startapps/crossx/model/enuns/Gender;
.super Ljava/lang/Enum;
.source "Gender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/enuns/Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/enuns/Gender;

.field public static final enum DEFAULT:Lcom/startapps/crossx/model/enuns/Gender;

.field public static final enum FEMALE:Lcom/startapps/crossx/model/enuns/Gender;

.field public static final enum MALE:Lcom/startapps/crossx/model/enuns/Gender;


# instance fields
.field fullGender:Ljava/lang/String;

.field gender:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/enuns/Gender;
    .locals 3

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/Gender;->DEFAULT:Lcom/startapps/crossx/model/enuns/Gender;

    sget-object v1, Lcom/startapps/crossx/model/enuns/Gender;->MALE:Lcom/startapps/crossx/model/enuns/Gender;

    sget-object v2, Lcom/startapps/crossx/model/enuns/Gender;->FEMALE:Lcom/startapps/crossx/model/enuns/Gender;

    filled-new-array {v0, v1, v2}, [Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/startapps/crossx/model/enuns/Gender;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/startapps/crossx/model/enuns/Gender;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/Gender;->DEFAULT:Lcom/startapps/crossx/model/enuns/Gender;

    .line 9
    new-instance v0, Lcom/startapps/crossx/model/enuns/Gender;

    const-string v1, "m"

    const-string v2, "Masculino"

    const-string v3, "MALE"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/startapps/crossx/model/enuns/Gender;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/Gender;->MALE:Lcom/startapps/crossx/model/enuns/Gender;

    .line 10
    new-instance v0, Lcom/startapps/crossx/model/enuns/Gender;

    const-string v1, "f"

    const-string v2, "Feminino"

    const-string v3, "FEMALE"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/startapps/crossx/model/enuns/Gender;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/Gender;->FEMALE:Lcom/startapps/crossx/model/enuns/Gender;

    .line 6
    invoke-static {}, Lcom/startapps/crossx/model/enuns/Gender;->$values()[Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/enuns/Gender;->$VALUES:[Lcom/startapps/crossx/model/enuns/Gender;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/startapps/crossx/model/enuns/Gender;->gender:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/startapps/crossx/model/enuns/Gender;->fullGender:Ljava/lang/String;

    return-void
.end method

.method public static findByFullGender(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/Gender;
    .locals 2

    const/4 v0, 0x0

    .line 38
    :goto_0
    invoke-static {}, Lcom/startapps/crossx/model/enuns/Gender;->values()[Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 39
    invoke-static {}, Lcom/startapps/crossx/model/enuns/Gender;->values()[Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/startapps/crossx/model/enuns/Gender;->fullGender:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-static {}, Lcom/startapps/crossx/model/enuns/Gender;->values()[Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_1
    sget-object p0, Lcom/startapps/crossx/model/enuns/Gender;->DEFAULT:Lcom/startapps/crossx/model/enuns/Gender;

    return-object p0
.end method

.method public static findByGender(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/Gender;
    .locals 2

    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-static {}, Lcom/startapps/crossx/model/enuns/Gender;->values()[Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 30
    invoke-static {}, Lcom/startapps/crossx/model/enuns/Gender;->values()[Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/startapps/crossx/model/enuns/Gender;->gender:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-static {}, Lcom/startapps/crossx/model/enuns/Gender;->values()[Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_1
    sget-object p0, Lcom/startapps/crossx/model/enuns/Gender;->DEFAULT:Lcom/startapps/crossx/model/enuns/Gender;

    return-object p0
.end method

.method public static getGenderValues()[Ljava/lang/String;
    .locals 2

    .line 52
    sget-object v0, Lcom/startapps/crossx/model/enuns/Gender;->MALE:Lcom/startapps/crossx/model/enuns/Gender;

    iget-object v0, v0, Lcom/startapps/crossx/model/enuns/Gender;->fullGender:Ljava/lang/String;

    sget-object v1, Lcom/startapps/crossx/model/enuns/Gender;->FEMALE:Lcom/startapps/crossx/model/enuns/Gender;

    iget-object v1, v1, Lcom/startapps/crossx/model/enuns/Gender;->fullGender:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getValues()[Lcom/startapps/crossx/model/enuns/Gender;
    .locals 2

    .line 47
    sget-object v0, Lcom/startapps/crossx/model/enuns/Gender;->MALE:Lcom/startapps/crossx/model/enuns/Gender;

    sget-object v1, Lcom/startapps/crossx/model/enuns/Gender;->FEMALE:Lcom/startapps/crossx/model/enuns/Gender;

    filled-new-array {v0, v1}, [Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/Gender;
    .locals 1

    .line 6
    const-class v0, Lcom/startapps/crossx/model/enuns/Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/enuns/Gender;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/enuns/Gender;
    .locals 1

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/Gender;->$VALUES:[Lcom/startapps/crossx/model/enuns/Gender;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/enuns/Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/enuns/Gender;

    return-object v0
.end method


# virtual methods
.method public getFullGender()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/startapps/crossx/model/enuns/Gender;->fullGender:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/startapps/crossx/model/enuns/Gender;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/startapps/crossx/model/enuns/Gender;->fullGender:Ljava/lang/String;

    return-object v0
.end method
