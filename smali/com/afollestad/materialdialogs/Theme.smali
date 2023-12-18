.class public final enum Lcom/afollestad/materialdialogs/Theme;
.super Ljava/lang/Enum;
.source "Theme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/afollestad/materialdialogs/Theme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/afollestad/materialdialogs/Theme;

.field public static final enum DARK:Lcom/afollestad/materialdialogs/Theme;

.field public static final enum LIGHT:Lcom/afollestad/materialdialogs/Theme;


# direct methods
.method private static synthetic $values()[Lcom/afollestad/materialdialogs/Theme;
    .locals 2

    .line 6
    sget-object v0, Lcom/afollestad/materialdialogs/Theme;->LIGHT:Lcom/afollestad/materialdialogs/Theme;

    sget-object v1, Lcom/afollestad/materialdialogs/Theme;->DARK:Lcom/afollestad/materialdialogs/Theme;

    filled-new-array {v0, v1}, [Lcom/afollestad/materialdialogs/Theme;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/afollestad/materialdialogs/Theme;

    const-string v1, "LIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/afollestad/materialdialogs/Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/afollestad/materialdialogs/Theme;->LIGHT:Lcom/afollestad/materialdialogs/Theme;

    new-instance v0, Lcom/afollestad/materialdialogs/Theme;

    const-string v1, "DARK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/afollestad/materialdialogs/Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/afollestad/materialdialogs/Theme;->DARK:Lcom/afollestad/materialdialogs/Theme;

    .line 6
    invoke-static {}, Lcom/afollestad/materialdialogs/Theme;->$values()[Lcom/afollestad/materialdialogs/Theme;

    move-result-object v0

    sput-object v0, Lcom/afollestad/materialdialogs/Theme;->$VALUES:[Lcom/afollestad/materialdialogs/Theme;

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

.method public static valueOf(Ljava/lang/String;)Lcom/afollestad/materialdialogs/Theme;
    .locals 1

    .line 6
    const-class v0, Lcom/afollestad/materialdialogs/Theme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/afollestad/materialdialogs/Theme;

    return-object p0
.end method

.method public static values()[Lcom/afollestad/materialdialogs/Theme;
    .locals 1

    .line 6
    sget-object v0, Lcom/afollestad/materialdialogs/Theme;->$VALUES:[Lcom/afollestad/materialdialogs/Theme;

    invoke-virtual {v0}, [Lcom/afollestad/materialdialogs/Theme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/afollestad/materialdialogs/Theme;

    return-object v0
.end method
