.class public final enum Lcom/afollestad/materialdialogs/DialogAction;
.super Ljava/lang/Enum;
.source "DialogAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/afollestad/materialdialogs/DialogAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/afollestad/materialdialogs/DialogAction;

.field public static final enum NEGATIVE:Lcom/afollestad/materialdialogs/DialogAction;

.field public static final enum NEUTRAL:Lcom/afollestad/materialdialogs/DialogAction;

.field public static final enum POSITIVE:Lcom/afollestad/materialdialogs/DialogAction;


# direct methods
.method private static synthetic $values()[Lcom/afollestad/materialdialogs/DialogAction;
    .locals 3

    .line 6
    sget-object v0, Lcom/afollestad/materialdialogs/DialogAction;->POSITIVE:Lcom/afollestad/materialdialogs/DialogAction;

    sget-object v1, Lcom/afollestad/materialdialogs/DialogAction;->NEUTRAL:Lcom/afollestad/materialdialogs/DialogAction;

    sget-object v2, Lcom/afollestad/materialdialogs/DialogAction;->NEGATIVE:Lcom/afollestad/materialdialogs/DialogAction;

    filled-new-array {v0, v1, v2}, [Lcom/afollestad/materialdialogs/DialogAction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/afollestad/materialdialogs/DialogAction;

    const-string v1, "POSITIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/afollestad/materialdialogs/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/afollestad/materialdialogs/DialogAction;->POSITIVE:Lcom/afollestad/materialdialogs/DialogAction;

    .line 8
    new-instance v0, Lcom/afollestad/materialdialogs/DialogAction;

    const-string v1, "NEUTRAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/afollestad/materialdialogs/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/afollestad/materialdialogs/DialogAction;->NEUTRAL:Lcom/afollestad/materialdialogs/DialogAction;

    .line 9
    new-instance v0, Lcom/afollestad/materialdialogs/DialogAction;

    const-string v1, "NEGATIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/afollestad/materialdialogs/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/afollestad/materialdialogs/DialogAction;->NEGATIVE:Lcom/afollestad/materialdialogs/DialogAction;

    .line 6
    invoke-static {}, Lcom/afollestad/materialdialogs/DialogAction;->$values()[Lcom/afollestad/materialdialogs/DialogAction;

    move-result-object v0

    sput-object v0, Lcom/afollestad/materialdialogs/DialogAction;->$VALUES:[Lcom/afollestad/materialdialogs/DialogAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/afollestad/materialdialogs/DialogAction;
    .locals 1

    .line 6
    const-class v0, Lcom/afollestad/materialdialogs/DialogAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/afollestad/materialdialogs/DialogAction;

    return-object p0
.end method

.method public static values()[Lcom/afollestad/materialdialogs/DialogAction;
    .locals 1

    .line 6
    sget-object v0, Lcom/afollestad/materialdialogs/DialogAction;->$VALUES:[Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual {v0}, [Lcom/afollestad/materialdialogs/DialogAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/afollestad/materialdialogs/DialogAction;

    return-object v0
.end method
