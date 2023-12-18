.class public final enum Lcom/startapps/crossx/model/MembershipModel$LimitType;
.super Ljava/lang/Enum;
.source "MembershipModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/model/MembershipModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LimitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/MembershipModel$LimitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/MembershipModel$LimitType;

.field public static final enum LIMIT_BY_MONTH:Lcom/startapps/crossx/model/MembershipModel$LimitType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "1"
    .end annotation
.end field

.field public static final enum LIMIT_BY_WEEK:Lcom/startapps/crossx/model/MembershipModel$LimitType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "0"
    .end annotation
.end field

.field public static final enum LIMIT_HOUR:Lcom/startapps/crossx/model/MembershipModel$LimitType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "2"
    .end annotation
.end field

.field public static final enum LIMIT_HOUR_AND_CHECKIN:Lcom/startapps/crossx/model/MembershipModel$LimitType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "4"
    .end annotation
.end field

.field public static final enum LIMIT_SESSION:Lcom/startapps/crossx/model/MembershipModel$LimitType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "3"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/MembershipModel$LimitType;
    .locals 5

    .line 9
    sget-object v0, Lcom/startapps/crossx/model/MembershipModel$LimitType;->LIMIT_BY_WEEK:Lcom/startapps/crossx/model/MembershipModel$LimitType;

    sget-object v1, Lcom/startapps/crossx/model/MembershipModel$LimitType;->LIMIT_BY_MONTH:Lcom/startapps/crossx/model/MembershipModel$LimitType;

    sget-object v2, Lcom/startapps/crossx/model/MembershipModel$LimitType;->LIMIT_HOUR:Lcom/startapps/crossx/model/MembershipModel$LimitType;

    sget-object v3, Lcom/startapps/crossx/model/MembershipModel$LimitType;->LIMIT_SESSION:Lcom/startapps/crossx/model/MembershipModel$LimitType;

    sget-object v4, Lcom/startapps/crossx/model/MembershipModel$LimitType;->LIMIT_HOUR_AND_CHECKIN:Lcom/startapps/crossx/model/MembershipModel$LimitType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/startapps/crossx/model/MembershipModel$LimitType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/startapps/crossx/model/MembershipModel$LimitType;

    const-string v1, "LIMIT_BY_WEEK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/MembershipModel$LimitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/MembershipModel$LimitType;->LIMIT_BY_WEEK:Lcom/startapps/crossx/model/MembershipModel$LimitType;

    .line 11
    new-instance v0, Lcom/startapps/crossx/model/MembershipModel$LimitType;

    const-string v1, "LIMIT_BY_MONTH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/MembershipModel$LimitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/MembershipModel$LimitType;->LIMIT_BY_MONTH:Lcom/startapps/crossx/model/MembershipModel$LimitType;

    .line 12
    new-instance v0, Lcom/startapps/crossx/model/MembershipModel$LimitType;

    const-string v1, "LIMIT_HOUR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/MembershipModel$LimitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/MembershipModel$LimitType;->LIMIT_HOUR:Lcom/startapps/crossx/model/MembershipModel$LimitType;

    .line 13
    new-instance v0, Lcom/startapps/crossx/model/MembershipModel$LimitType;

    const-string v1, "LIMIT_SESSION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/MembershipModel$LimitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/MembershipModel$LimitType;->LIMIT_SESSION:Lcom/startapps/crossx/model/MembershipModel$LimitType;

    .line 14
    new-instance v0, Lcom/startapps/crossx/model/MembershipModel$LimitType;

    const-string v1, "LIMIT_HOUR_AND_CHECKIN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/MembershipModel$LimitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/MembershipModel$LimitType;->LIMIT_HOUR_AND_CHECKIN:Lcom/startapps/crossx/model/MembershipModel$LimitType;

    .line 9
    invoke-static {}, Lcom/startapps/crossx/model/MembershipModel$LimitType;->$values()[Lcom/startapps/crossx/model/MembershipModel$LimitType;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/MembershipModel$LimitType;->$VALUES:[Lcom/startapps/crossx/model/MembershipModel$LimitType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/MembershipModel$LimitType;
    .locals 1

    .line 9
    const-class v0, Lcom/startapps/crossx/model/MembershipModel$LimitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/MembershipModel$LimitType;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/MembershipModel$LimitType;
    .locals 1

    .line 9
    sget-object v0, Lcom/startapps/crossx/model/MembershipModel$LimitType;->$VALUES:[Lcom/startapps/crossx/model/MembershipModel$LimitType;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/MembershipModel$LimitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/MembershipModel$LimitType;

    return-object v0
.end method
