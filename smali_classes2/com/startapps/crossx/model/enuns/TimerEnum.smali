.class public final enum Lcom/startapps/crossx/model/enuns/TimerEnum;
.super Ljava/lang/Enum;
.source "TimerEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/enuns/TimerEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/enuns/TimerEnum;

.field public static final enum EMON:Lcom/startapps/crossx/model/enuns/TimerEnum;

.field public static final enum STOPWATCH:Lcom/startapps/crossx/model/enuns/TimerEnum;

.field public static final enum TABATA:Lcom/startapps/crossx/model/enuns/TimerEnum;

.field public static final enum TIMER:Lcom/startapps/crossx/model/enuns/TimerEnum;


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/enuns/TimerEnum;
    .locals 4

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/TimerEnum;->STOPWATCH:Lcom/startapps/crossx/model/enuns/TimerEnum;

    sget-object v1, Lcom/startapps/crossx/model/enuns/TimerEnum;->TIMER:Lcom/startapps/crossx/model/enuns/TimerEnum;

    sget-object v2, Lcom/startapps/crossx/model/enuns/TimerEnum;->EMON:Lcom/startapps/crossx/model/enuns/TimerEnum;

    sget-object v3, Lcom/startapps/crossx/model/enuns/TimerEnum;->TABATA:Lcom/startapps/crossx/model/enuns/TimerEnum;

    filled-new-array {v0, v1, v2, v3}, [Lcom/startapps/crossx/model/enuns/TimerEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/startapps/crossx/model/enuns/TimerEnum;

    const-string v1, "STOPWATCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/enuns/TimerEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/TimerEnum;->STOPWATCH:Lcom/startapps/crossx/model/enuns/TimerEnum;

    .line 9
    new-instance v0, Lcom/startapps/crossx/model/enuns/TimerEnum;

    const-string v1, "TIMER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/enuns/TimerEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/TimerEnum;->TIMER:Lcom/startapps/crossx/model/enuns/TimerEnum;

    .line 10
    new-instance v0, Lcom/startapps/crossx/model/enuns/TimerEnum;

    const-string v1, "EMON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/enuns/TimerEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/TimerEnum;->EMON:Lcom/startapps/crossx/model/enuns/TimerEnum;

    .line 11
    new-instance v0, Lcom/startapps/crossx/model/enuns/TimerEnum;

    const-string v1, "TABATA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/enuns/TimerEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/TimerEnum;->TABATA:Lcom/startapps/crossx/model/enuns/TimerEnum;

    .line 6
    invoke-static {}, Lcom/startapps/crossx/model/enuns/TimerEnum;->$values()[Lcom/startapps/crossx/model/enuns/TimerEnum;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/enuns/TimerEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/TimerEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/TimerEnum;
    .locals 1

    .line 6
    const-class v0, Lcom/startapps/crossx/model/enuns/TimerEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/enuns/TimerEnum;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/enuns/TimerEnum;
    .locals 1

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/TimerEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/TimerEnum;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/enuns/TimerEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/enuns/TimerEnum;

    return-object v0
.end method
