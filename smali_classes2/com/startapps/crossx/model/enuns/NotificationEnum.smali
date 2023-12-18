.class public final enum Lcom/startapps/crossx/model/enuns/NotificationEnum;
.super Ljava/lang/Enum;
.source "NotificationEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/enuns/NotificationEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/enuns/NotificationEnum;

.field public static final enum CHECK_IN:Lcom/startapps/crossx/model/enuns/NotificationEnum;

.field public static final enum RANKING:Lcom/startapps/crossx/model/enuns/NotificationEnum;

.field public static final enum TIMELINE_BOX:Lcom/startapps/crossx/model/enuns/NotificationEnum;

.field public static final enum TRAINING:Lcom/startapps/crossx/model/enuns/NotificationEnum;


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/enuns/NotificationEnum;
    .locals 4

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/NotificationEnum;->TRAINING:Lcom/startapps/crossx/model/enuns/NotificationEnum;

    sget-object v1, Lcom/startapps/crossx/model/enuns/NotificationEnum;->CHECK_IN:Lcom/startapps/crossx/model/enuns/NotificationEnum;

    sget-object v2, Lcom/startapps/crossx/model/enuns/NotificationEnum;->RANKING:Lcom/startapps/crossx/model/enuns/NotificationEnum;

    sget-object v3, Lcom/startapps/crossx/model/enuns/NotificationEnum;->TIMELINE_BOX:Lcom/startapps/crossx/model/enuns/NotificationEnum;

    filled-new-array {v0, v1, v2, v3}, [Lcom/startapps/crossx/model/enuns/NotificationEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/startapps/crossx/model/enuns/NotificationEnum;

    const-string v1, "TRAINING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/enuns/NotificationEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/NotificationEnum;->TRAINING:Lcom/startapps/crossx/model/enuns/NotificationEnum;

    .line 9
    new-instance v0, Lcom/startapps/crossx/model/enuns/NotificationEnum;

    const-string v1, "CHECK_IN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/enuns/NotificationEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/NotificationEnum;->CHECK_IN:Lcom/startapps/crossx/model/enuns/NotificationEnum;

    .line 10
    new-instance v0, Lcom/startapps/crossx/model/enuns/NotificationEnum;

    const-string v1, "RANKING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/enuns/NotificationEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/NotificationEnum;->RANKING:Lcom/startapps/crossx/model/enuns/NotificationEnum;

    .line 11
    new-instance v0, Lcom/startapps/crossx/model/enuns/NotificationEnum;

    const-string v1, "TIMELINE_BOX"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/enuns/NotificationEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/NotificationEnum;->TIMELINE_BOX:Lcom/startapps/crossx/model/enuns/NotificationEnum;

    .line 6
    invoke-static {}, Lcom/startapps/crossx/model/enuns/NotificationEnum;->$values()[Lcom/startapps/crossx/model/enuns/NotificationEnum;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/enuns/NotificationEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/NotificationEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/NotificationEnum;
    .locals 1

    .line 6
    const-class v0, Lcom/startapps/crossx/model/enuns/NotificationEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/enuns/NotificationEnum;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/enuns/NotificationEnum;
    .locals 1

    .line 6
    sget-object v0, Lcom/startapps/crossx/model/enuns/NotificationEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/NotificationEnum;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/enuns/NotificationEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/enuns/NotificationEnum;

    return-object v0
.end method
