.class final enum Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;
.super Ljava/lang/Enum;
.source "ChronometerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ChronometerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

.field public static final enum CHRONOMETER_FINISH:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

.field public static final enum CHRONOMETER_PAUSE:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

.field public static final enum CHRONOMETER_START:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

.field public static final enum CHRONOMETER_STOP:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

.field public static final enum COUNTDOW_FINISH:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

.field public static final enum COUNTDOW_START:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

.field public static final enum COUNTDOW_STOP:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;
    .locals 7

    .line 39
    sget-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->COUNTDOW_STOP:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    sget-object v1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->COUNTDOW_START:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    sget-object v2, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->COUNTDOW_FINISH:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    sget-object v3, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_STOP:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    sget-object v4, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_PAUSE:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    sget-object v5, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_START:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    sget-object v6, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_FINISH:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    filled-new-array/range {v0 .. v6}, [Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    const-string v1, "COUNTDOW_STOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->COUNTDOW_STOP:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    .line 42
    new-instance v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    const-string v1, "COUNTDOW_START"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->COUNTDOW_START:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    .line 43
    new-instance v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    const-string v1, "COUNTDOW_FINISH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->COUNTDOW_FINISH:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    .line 44
    new-instance v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    const-string v1, "CHRONOMETER_STOP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_STOP:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    .line 45
    new-instance v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    const-string v1, "CHRONOMETER_PAUSE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_PAUSE:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    .line 46
    new-instance v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    const-string v1, "CHRONOMETER_START"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_START:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    .line 47
    new-instance v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    const-string v1, "CHRONOMETER_FINISH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_FINISH:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    .line 39
    invoke-static {}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->$values()[Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->$VALUES:[Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;
    .locals 1

    .line 39
    const-class v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;
    .locals 1

    .line 39
    sget-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->$VALUES:[Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    invoke-virtual {v0}, [Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    return-object v0
.end method
