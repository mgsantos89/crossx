.class public final enum Lcom/startapps/crossx/model/enuns/CheckinStatus;
.super Ljava/lang/Enum;
.source "CheckinStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/enuns/CheckinStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/enuns/CheckinStatus;

.field public static final enum CANCELED:Lcom/startapps/crossx/model/enuns/CheckinStatus;

.field public static final enum CONFIRMED:Lcom/startapps/crossx/model/enuns/CheckinStatus;

.field public static final enum LATE_CANCELED:Lcom/startapps/crossx/model/enuns/CheckinStatus;

.field public static final enum NO_SHOW:Lcom/startapps/crossx/model/enuns/CheckinStatus;

.field public static final enum RESERVED:Lcom/startapps/crossx/model/enuns/CheckinStatus;

.field public static final enum WAITI_LISR:Lcom/startapps/crossx/model/enuns/CheckinStatus;


# instance fields
.field private name:Ljava/lang/String;

.field private status:I


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/enuns/CheckinStatus;
    .locals 6

    .line 7
    sget-object v0, Lcom/startapps/crossx/model/enuns/CheckinStatus;->RESERVED:Lcom/startapps/crossx/model/enuns/CheckinStatus;

    sget-object v1, Lcom/startapps/crossx/model/enuns/CheckinStatus;->WAITI_LISR:Lcom/startapps/crossx/model/enuns/CheckinStatus;

    sget-object v2, Lcom/startapps/crossx/model/enuns/CheckinStatus;->CONFIRMED:Lcom/startapps/crossx/model/enuns/CheckinStatus;

    sget-object v3, Lcom/startapps/crossx/model/enuns/CheckinStatus;->CANCELED:Lcom/startapps/crossx/model/enuns/CheckinStatus;

    sget-object v4, Lcom/startapps/crossx/model/enuns/CheckinStatus;->LATE_CANCELED:Lcom/startapps/crossx/model/enuns/CheckinStatus;

    sget-object v5, Lcom/startapps/crossx/model/enuns/CheckinStatus;->NO_SHOW:Lcom/startapps/crossx/model/enuns/CheckinStatus;

    filled-new-array/range {v0 .. v5}, [Lcom/startapps/crossx/model/enuns/CheckinStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/startapps/crossx/model/enuns/CheckinStatus;

    const-string v1, "Reserva"

    const-string v2, "RESERVED"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/startapps/crossx/model/enuns/CheckinStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/CheckinStatus;->RESERVED:Lcom/startapps/crossx/model/enuns/CheckinStatus;

    .line 9
    new-instance v0, Lcom/startapps/crossx/model/enuns/CheckinStatus;

    const-string v1, "Lista de espera"

    const-string v2, "WAITI_LISR"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/startapps/crossx/model/enuns/CheckinStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/CheckinStatus;->WAITI_LISR:Lcom/startapps/crossx/model/enuns/CheckinStatus;

    .line 10
    new-instance v0, Lcom/startapps/crossx/model/enuns/CheckinStatus;

    const-string v1, "Confirmado"

    const-string v2, "CONFIRMED"

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/startapps/crossx/model/enuns/CheckinStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/CheckinStatus;->CONFIRMED:Lcom/startapps/crossx/model/enuns/CheckinStatus;

    .line 11
    new-instance v0, Lcom/startapps/crossx/model/enuns/CheckinStatus;

    const-string v1, "Cancelado"

    const-string v2, "CANCELED"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/startapps/crossx/model/enuns/CheckinStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/CheckinStatus;->CANCELED:Lcom/startapps/crossx/model/enuns/CheckinStatus;

    .line 12
    new-instance v0, Lcom/startapps/crossx/model/enuns/CheckinStatus;

    const-string v1, "Cancelamento tardio"

    const-string v2, "LATE_CANCELED"

    const/4 v4, 0x5

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/startapps/crossx/model/enuns/CheckinStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/CheckinStatus;->LATE_CANCELED:Lcom/startapps/crossx/model/enuns/CheckinStatus;

    .line 13
    new-instance v0, Lcom/startapps/crossx/model/enuns/CheckinStatus;

    const/4 v1, 0x6

    const-string v2, "No Show"

    const-string v3, "NO_SHOW"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/startapps/crossx/model/enuns/CheckinStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/CheckinStatus;->NO_SHOW:Lcom/startapps/crossx/model/enuns/CheckinStatus;

    .line 7
    invoke-static {}, Lcom/startapps/crossx/model/enuns/CheckinStatus;->$values()[Lcom/startapps/crossx/model/enuns/CheckinStatus;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/enuns/CheckinStatus;->$VALUES:[Lcom/startapps/crossx/model/enuns/CheckinStatus;

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
    iput p3, p0, Lcom/startapps/crossx/model/enuns/CheckinStatus;->status:I

    .line 20
    iput-object p4, p0, Lcom/startapps/crossx/model/enuns/CheckinStatus;->name:Ljava/lang/String;

    return-void
.end method

.method public static getElementForPosition(I)Lcom/startapps/crossx/model/enuns/CheckinStatus;
    .locals 2

    .line 32
    invoke-static {}, Lcom/startapps/crossx/model/enuns/CheckinStatus;->values()[Lcom/startapps/crossx/model/enuns/CheckinStatus;

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
    sget-object p0, Lcom/startapps/crossx/model/enuns/CheckinStatus;->RESERVED:Lcom/startapps/crossx/model/enuns/CheckinStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/CheckinStatus;
    .locals 1

    .line 7
    const-class v0, Lcom/startapps/crossx/model/enuns/CheckinStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/enuns/CheckinStatus;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/enuns/CheckinStatus;
    .locals 1

    .line 7
    sget-object v0, Lcom/startapps/crossx/model/enuns/CheckinStatus;->$VALUES:[Lcom/startapps/crossx/model/enuns/CheckinStatus;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/enuns/CheckinStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/enuns/CheckinStatus;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/startapps/crossx/model/enuns/CheckinStatus;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/startapps/crossx/model/enuns/CheckinStatus;->status:I

    return v0
.end method
