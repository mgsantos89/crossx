.class public final enum Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;
.super Ljava/lang/Enum;
.source "MembershipTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

.field public static final enum TYPE_PLAN:Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

.field public static final enum TYPE_SESSION:Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;
    .locals 2

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;->TYPE_SESSION:Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

    sget-object v1, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;->TYPE_PLAN:Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

    filled-new-array {v0, v1}, [Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

    const/4 v1, 0x0

    const-string v2, "Sess\u00e3o"

    const-string v3, "TYPE_SESSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;->TYPE_SESSION:Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

    .line 8
    new-instance v0, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

    const/4 v1, 0x1

    const-string v2, "Plano"

    const-string v3, "TYPE_PLAN"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;->TYPE_PLAN:Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

    .line 6
    invoke-static {}, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;->$values()[Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;->type:Ljava/lang/String;

    return-void
.end method

.method public static getType(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;
    .locals 5

    if-eqz p0, :cond_1

    .line 18
    invoke-static {}, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;->values()[Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 19
    iget-object v4, v3, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;->type:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_1
    sget-object p0, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;->TYPE_PLAN:Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;
    .locals 1

    .line 6
    const-class v0, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;
    .locals 1

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

    return-object v0
.end method
