.class public final enum Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;
.super Ljava/lang/Enum;
.source "NotificationTitleEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

.field public static final enum CARD_REFUSED:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

.field public static final enum PAYMENT_RECCURENT:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

.field public static final enum PAYMENT_SUCCESS:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

.field public static final enum PLOT_EXPIRATION:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

.field public static final enum PLOT_EXPIREAD:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

.field public static final enum PLOT_TO_PAY:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

.field public static final enum WAINTING_CONFIMATION:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;


# instance fields
.field private colorRes:I

.field private iconResId:I

.field private title:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;
    .locals 7

    .line 9
    sget-object v0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PLOT_TO_PAY:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    sget-object v1, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PAYMENT_RECCURENT:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    sget-object v2, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PLOT_EXPIRATION:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    sget-object v3, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PLOT_EXPIREAD:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    sget-object v4, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->WAINTING_CONFIMATION:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    sget-object v5, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->CARD_REFUSED:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    sget-object v6, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PAYMENT_SUCCESS:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    filled-new-array/range {v0 .. v6}, [Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 10
    new-instance v6, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    const-string v1, "PLOT_TO_PAY"

    const/4 v2, 0x0

    const-string v3, "Parcela \u00e0 pagar"

    const v4, 0x7f0800fc

    const v5, 0x7f060034

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PLOT_TO_PAY:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    .line 11
    new-instance v0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    const-string v8, "PAYMENT_RECCURENT"

    const/4 v9, 0x1

    const-string v10, "Pagamento Autom\u00e1tico"

    const v11, 0x7f0800f6

    const v12, 0x7f060034

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PAYMENT_RECCURENT:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    .line 12
    new-instance v0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    const-string v2, "PLOT_EXPIRATION"

    const/4 v3, 0x2

    const-string v4, "Vencimento da parcela"

    const v5, 0x7f0800f9

    const v6, 0x7f06015b

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PLOT_EXPIRATION:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    .line 13
    new-instance v0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    const-string v8, "PLOT_EXPIREAD"

    const/4 v9, 0x3

    const-string v10, "Parcela Vencida"

    const v11, 0x7f0800f9

    const v12, 0x7f060058

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PLOT_EXPIREAD:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    .line 14
    new-instance v0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    const-string v2, "WAINTING_CONFIMATION"

    const/4 v3, 0x4

    const-string v4, "Aguardando Confirma\u00e7\u00e3o"

    const v5, 0x7f080101

    const v6, 0x7f060034

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->WAINTING_CONFIMATION:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    .line 15
    new-instance v0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    const-string v8, "CARD_REFUSED"

    const/4 v9, 0x5

    const-string v10, "Cart\u00e3o recusado"

    const v11, 0x7f0800f8

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->CARD_REFUSED:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    .line 16
    new-instance v0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    const-string v2, "PAYMENT_SUCCESS"

    const/4 v3, 0x6

    const-string v4, "Pagamento Realizado"

    const v5, 0x7f0800f6

    const v6, 0x7f0600c1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PAYMENT_SUCCESS:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    .line 9
    invoke-static {}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->$values()[Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->title:Ljava/lang/String;

    .line 24
    iput p4, p0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->iconResId:I

    .line 25
    iput p5, p0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->colorRes:I

    return-void
.end method

.method public static getTypeByString(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;
    .locals 5

    if-eqz p0, :cond_1

    .line 30
    invoke-static {}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->values()[Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 31
    iget-object v4, v3, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->title:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    sget-object p0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PLOT_TO_PAY:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;
    .locals 1

    .line 9
    const-class v0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;
    .locals 1

    .line 9
    sget-object v0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    return-object v0
.end method


# virtual methods
.method public getColorRes()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->colorRes:I

    return v0
.end method

.method public getIconResId()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->iconResId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->title:Ljava/lang/String;

    return-object v0
.end method
