.class public final enum Lcom/startapps/crossx/model/enuns/UsersRole;
.super Ljava/lang/Enum;
.source "UsersRole.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/enuns/UsersRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/enuns/UsersRole;

.field public static final enum BOX:Lcom/startapps/crossx/model/enuns/UsersRole;

.field public static final enum COACH:Lcom/startapps/crossx/model/enuns/UsersRole;

.field public static final enum HEADCOACH:Lcom/startapps/crossx/model/enuns/UsersRole;

.field public static final enum MASTER:Lcom/startapps/crossx/model/enuns/UsersRole;

.field public static final enum NOT:Lcom/startapps/crossx/model/enuns/UsersRole;

.field public static final enum USER:Lcom/startapps/crossx/model/enuns/UsersRole;


# instance fields
.field private name:Ljava/lang/String;

.field private role:I


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/enuns/UsersRole;
    .locals 6

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/UsersRole;->USER:Lcom/startapps/crossx/model/enuns/UsersRole;

    sget-object v1, Lcom/startapps/crossx/model/enuns/UsersRole;->COACH:Lcom/startapps/crossx/model/enuns/UsersRole;

    sget-object v2, Lcom/startapps/crossx/model/enuns/UsersRole;->HEADCOACH:Lcom/startapps/crossx/model/enuns/UsersRole;

    sget-object v3, Lcom/startapps/crossx/model/enuns/UsersRole;->MASTER:Lcom/startapps/crossx/model/enuns/UsersRole;

    sget-object v4, Lcom/startapps/crossx/model/enuns/UsersRole;->BOX:Lcom/startapps/crossx/model/enuns/UsersRole;

    sget-object v5, Lcom/startapps/crossx/model/enuns/UsersRole;->NOT:Lcom/startapps/crossx/model/enuns/UsersRole;

    filled-new-array/range {v0 .. v5}, [Lcom/startapps/crossx/model/enuns/UsersRole;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/startapps/crossx/model/enuns/UsersRole;

    const/4 v1, 0x0

    const-string v2, "Atleta"

    const-string v3, "USER"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/startapps/crossx/model/enuns/UsersRole;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/UsersRole;->USER:Lcom/startapps/crossx/model/enuns/UsersRole;

    .line 9
    new-instance v0, Lcom/startapps/crossx/model/enuns/UsersRole;

    const/4 v1, 0x1

    const-string v2, "Coach"

    const-string v3, "COACH"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/startapps/crossx/model/enuns/UsersRole;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/UsersRole;->COACH:Lcom/startapps/crossx/model/enuns/UsersRole;

    .line 10
    new-instance v0, Lcom/startapps/crossx/model/enuns/UsersRole;

    const/4 v1, 0x2

    const-string v2, "Head Coach"

    const-string v3, "HEADCOACH"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/startapps/crossx/model/enuns/UsersRole;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/UsersRole;->HEADCOACH:Lcom/startapps/crossx/model/enuns/UsersRole;

    .line 11
    new-instance v0, Lcom/startapps/crossx/model/enuns/UsersRole;

    const/4 v1, 0x3

    const-string/jumbo v2, "your box out of the box"

    const-string v3, "MASTER"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/startapps/crossx/model/enuns/UsersRole;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/UsersRole;->MASTER:Lcom/startapps/crossx/model/enuns/UsersRole;

    .line 12
    new-instance v0, Lcom/startapps/crossx/model/enuns/UsersRole;

    const/4 v1, 0x4

    const-string v2, "Box"

    const-string v3, "BOX"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/startapps/crossx/model/enuns/UsersRole;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/UsersRole;->BOX:Lcom/startapps/crossx/model/enuns/UsersRole;

    .line 13
    new-instance v0, Lcom/startapps/crossx/model/enuns/UsersRole;

    const/4 v1, 0x5

    const-string v2, ""

    const-string v3, "NOT"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/startapps/crossx/model/enuns/UsersRole;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/UsersRole;->NOT:Lcom/startapps/crossx/model/enuns/UsersRole;

    .line 6
    invoke-static {}, Lcom/startapps/crossx/model/enuns/UsersRole;->$values()[Lcom/startapps/crossx/model/enuns/UsersRole;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/enuns/UsersRole;->$VALUES:[Lcom/startapps/crossx/model/enuns/UsersRole;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/startapps/crossx/model/enuns/UsersRole;->role:I

    .line 20
    iput-object p4, p0, Lcom/startapps/crossx/model/enuns/UsersRole;->name:Ljava/lang/String;

    return-void
.end method

.method public static getElementForPosition(I)Lcom/startapps/crossx/model/enuns/UsersRole;
    .locals 2

    .line 32
    invoke-static {}, Lcom/startapps/crossx/model/enuns/UsersRole;->values()[Lcom/startapps/crossx/model/enuns/UsersRole;

    move-result-object v0

    .line 33
    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    .line 34
    aget-object p0, v0, p0

    return-object p0

    .line 36
    :cond_0
    sget-object p0, Lcom/startapps/crossx/model/enuns/UsersRole;->USER:Lcom/startapps/crossx/model/enuns/UsersRole;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/UsersRole;
    .locals 1

    .line 6
    const-class v0, Lcom/startapps/crossx/model/enuns/UsersRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/enuns/UsersRole;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/enuns/UsersRole;
    .locals 1

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/UsersRole;->$VALUES:[Lcom/startapps/crossx/model/enuns/UsersRole;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/enuns/UsersRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/enuns/UsersRole;

    return-object v0
.end method


# virtual methods
.method public geRole()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/startapps/crossx/model/enuns/UsersRole;->role:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/startapps/crossx/model/enuns/UsersRole;->name:Ljava/lang/String;

    return-object v0
.end method
