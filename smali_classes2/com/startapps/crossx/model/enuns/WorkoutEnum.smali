.class public final enum Lcom/startapps/crossx/model/enuns/WorkoutEnum;
.super Ljava/lang/Enum;
.source "WorkoutEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/enuns/WorkoutEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/enuns/WorkoutEnum;

.field public static final enum HOURS:Lcom/startapps/crossx/model/enuns/WorkoutEnum;

.field public static final enum RESULTS:Lcom/startapps/crossx/model/enuns/WorkoutEnum;

.field public static final enum TECNIQUES:Lcom/startapps/crossx/model/enuns/WorkoutEnum;

.field public static final enum WARMUPS:Lcom/startapps/crossx/model/enuns/WorkoutEnum;

.field public static final enum WODS:Lcom/startapps/crossx/model/enuns/WorkoutEnum;


# instance fields
.field protected text:I


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/enuns/WorkoutEnum;
    .locals 5

    .line 8
    sget-object v0, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->WARMUPS:Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    sget-object v1, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->TECNIQUES:Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    sget-object v2, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->WODS:Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    sget-object v3, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->HOURS:Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    sget-object v4, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->RESULTS:Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    const/4 v1, 0x0

    const v2, 0x7f1202b8

    const-string v3, "WARMUPS"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/WorkoutEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->WARMUPS:Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    .line 11
    new-instance v0, Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    const/4 v1, 0x1

    const v2, 0x7f12027a

    const-string v3, "TECNIQUES"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/WorkoutEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->TECNIQUES:Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    .line 12
    new-instance v0, Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    const/4 v1, 0x2

    const v2, 0x7f1202b9

    const-string v3, "WODS"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/WorkoutEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->WODS:Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    .line 13
    new-instance v0, Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    const/4 v1, 0x3

    const v2, 0x7f1201f9

    const-string v3, "HOURS"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/WorkoutEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->HOURS:Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    .line 14
    new-instance v0, Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    const/4 v1, 0x4

    const v2, 0x7f120269

    const-string v3, "RESULTS"

    invoke-direct {v0, v3, v1, v2}, Lcom/startapps/crossx/model/enuns/WorkoutEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->RESULTS:Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    .line 8
    invoke-static {}, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->$values()[Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->text:I

    return-void
.end method

.method public static getElementForPosition(I)Lcom/startapps/crossx/model/enuns/WorkoutEnum;
    .locals 2

    .line 27
    invoke-static {}, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->values()[Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    move-result-object v0

    .line 28
    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    .line 29
    aget-object p0, v0, p0

    return-object p0

    .line 31
    :cond_0
    sget-object p0, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->WARMUPS:Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/WorkoutEnum;
    .locals 1

    .line 8
    const-class v0, Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/enuns/WorkoutEnum;
    .locals 1

    .line 8
    sget-object v0, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/enuns/WorkoutEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    return-object v0
.end method


# virtual methods
.method public getText()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->text:I

    return v0
.end method
