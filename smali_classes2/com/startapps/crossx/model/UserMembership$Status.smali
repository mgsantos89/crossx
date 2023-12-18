.class public final enum Lcom/startapps/crossx/model/UserMembership$Status;
.super Ljava/lang/Enum;
.source "UserMembership.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/model/UserMembership;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/UserMembership$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/UserMembership$Status;

.field public static final enum ACTIVE:Lcom/startapps/crossx/model/UserMembership$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "1"
    .end annotation
.end field

.field public static final enum CANCELED:Lcom/startapps/crossx/model/UserMembership$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "2"
    .end annotation
.end field

.field public static final enum INACTIVE:Lcom/startapps/crossx/model/UserMembership$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "0"
    .end annotation
.end field

.field public static final enum STATUS_EXPIRED:Lcom/startapps/crossx/model/UserMembership$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "4"
    .end annotation
.end field

.field public static final enum STATUS_LOCKED:Lcom/startapps/crossx/model/UserMembership$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "3"
    .end annotation
.end field

.field public static final enum STATUS_WAITING:Lcom/startapps/crossx/model/UserMembership$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "5"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/UserMembership$Status;
    .locals 6

    .line 10
    sget-object v0, Lcom/startapps/crossx/model/UserMembership$Status;->INACTIVE:Lcom/startapps/crossx/model/UserMembership$Status;

    sget-object v1, Lcom/startapps/crossx/model/UserMembership$Status;->ACTIVE:Lcom/startapps/crossx/model/UserMembership$Status;

    sget-object v2, Lcom/startapps/crossx/model/UserMembership$Status;->CANCELED:Lcom/startapps/crossx/model/UserMembership$Status;

    sget-object v3, Lcom/startapps/crossx/model/UserMembership$Status;->STATUS_LOCKED:Lcom/startapps/crossx/model/UserMembership$Status;

    sget-object v4, Lcom/startapps/crossx/model/UserMembership$Status;->STATUS_EXPIRED:Lcom/startapps/crossx/model/UserMembership$Status;

    sget-object v5, Lcom/startapps/crossx/model/UserMembership$Status;->STATUS_WAITING:Lcom/startapps/crossx/model/UserMembership$Status;

    filled-new-array/range {v0 .. v5}, [Lcom/startapps/crossx/model/UserMembership$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/startapps/crossx/model/UserMembership$Status;

    const-string v1, "INACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/UserMembership$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/UserMembership$Status;->INACTIVE:Lcom/startapps/crossx/model/UserMembership$Status;

    .line 12
    new-instance v0, Lcom/startapps/crossx/model/UserMembership$Status;

    const-string v1, "ACTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/UserMembership$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/UserMembership$Status;->ACTIVE:Lcom/startapps/crossx/model/UserMembership$Status;

    .line 13
    new-instance v0, Lcom/startapps/crossx/model/UserMembership$Status;

    const-string v1, "CANCELED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/UserMembership$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/UserMembership$Status;->CANCELED:Lcom/startapps/crossx/model/UserMembership$Status;

    .line 14
    new-instance v0, Lcom/startapps/crossx/model/UserMembership$Status;

    const-string v1, "STATUS_LOCKED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/UserMembership$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/UserMembership$Status;->STATUS_LOCKED:Lcom/startapps/crossx/model/UserMembership$Status;

    .line 15
    new-instance v0, Lcom/startapps/crossx/model/UserMembership$Status;

    const-string v1, "STATUS_EXPIRED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/UserMembership$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/UserMembership$Status;->STATUS_EXPIRED:Lcom/startapps/crossx/model/UserMembership$Status;

    .line 16
    new-instance v0, Lcom/startapps/crossx/model/UserMembership$Status;

    const-string v1, "STATUS_WAITING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/model/UserMembership$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/model/UserMembership$Status;->STATUS_WAITING:Lcom/startapps/crossx/model/UserMembership$Status;

    .line 10
    invoke-static {}, Lcom/startapps/crossx/model/UserMembership$Status;->$values()[Lcom/startapps/crossx/model/UserMembership$Status;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/UserMembership$Status;->$VALUES:[Lcom/startapps/crossx/model/UserMembership$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/UserMembership$Status;
    .locals 1

    .line 10
    const-class v0, Lcom/startapps/crossx/model/UserMembership$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/UserMembership$Status;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/UserMembership$Status;
    .locals 1

    .line 10
    sget-object v0, Lcom/startapps/crossx/model/UserMembership$Status;->$VALUES:[Lcom/startapps/crossx/model/UserMembership$Status;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/UserMembership$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/UserMembership$Status;

    return-object v0
.end method
