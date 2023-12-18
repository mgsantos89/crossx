.class public final enum Lcom/afollestad/materialdialogs/MaterialDialog$ListType;
.super Ljava/lang/Enum;
.source "MaterialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/MaterialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ListType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/afollestad/materialdialogs/MaterialDialog$ListType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

.field public static final enum MULTI:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

.field public static final enum REGULAR:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

.field public static final enum SINGLE:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;


# direct methods
.method private static synthetic $values()[Lcom/afollestad/materialdialogs/MaterialDialog$ListType;
    .locals 3

    .line 1815
    sget-object v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->REGULAR:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    sget-object v1, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->SINGLE:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    sget-object v2, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->MULTI:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    filled-new-array {v0, v1, v2}, [Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1816
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    const-string v1, "REGULAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->REGULAR:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    const-string v1, "SINGLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->SINGLE:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    const-string v1, "MULTI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->MULTI:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    .line 1815
    invoke-static {}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->$values()[Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    move-result-object v0

    sput-object v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->$VALUES:[Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1815
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getLayoutForType(Lcom/afollestad/materialdialogs/MaterialDialog$ListType;)I
    .locals 1

    .line 1819
    sget-object v0, Lcom/afollestad/materialdialogs/MaterialDialog$4;->$SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType:[I

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 1825
    sget p0, Lcom/afollestad/materialdialogs/R$layout;->md_listitem_multichoice:I

    return p0

    .line 1827
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a valid list type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1823
    :cond_1
    sget p0, Lcom/afollestad/materialdialogs/R$layout;->md_listitem_singlechoice:I

    return p0

    .line 1821
    :cond_2
    sget p0, Lcom/afollestad/materialdialogs/R$layout;->md_listitem:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/afollestad/materialdialogs/MaterialDialog$ListType;
    .locals 1

    .line 1815
    const-class v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    return-object p0
.end method

.method public static values()[Lcom/afollestad/materialdialogs/MaterialDialog$ListType;
    .locals 1

    .line 1815
    sget-object v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->$VALUES:[Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    invoke-virtual {v0}, [Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    return-object v0
.end method
