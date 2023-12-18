.class public final enum Lcom/startapps/crossx/model/enuns/ProductTypeEnum;
.super Ljava/lang/Enum;
.source "ProductTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/enuns/ProductTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

.field public static final enum ECOMMERCE:Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

.field public static final enum MEMBERSHIP:Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

.field public static final enum OTHERS:Lcom/startapps/crossx/model/enuns/ProductTypeEnum;


# instance fields
.field private drawableHistoryRes:I

.field private drawablePaymentRes:I

.field private name:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/enuns/ProductTypeEnum;
    .locals 3

    .line 8
    sget-object v0, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->MEMBERSHIP:Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    sget-object v1, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->ECOMMERCE:Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    sget-object v2, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->OTHERS:Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    filled-new-array {v0, v1, v2}, [Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 9
    new-instance v7, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    const-string v1, "MEMBERSHIP"

    const/4 v2, 0x0

    const-string v3, "membership"

    const-string v4, "Ades\u00e3o"

    const v5, 0x7f0800c0

    const v6, 0x7f0800bf

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v7, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->MEMBERSHIP:Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    .line 10
    new-instance v0, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    const-string v9, "ECOMMERCE"

    const/4 v10, 0x1

    const-string v11, "ecommerce"

    const-string v12, "Ecommerce"

    const v13, 0x7f080153

    const v14, 0x7f080154

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->ECOMMERCE:Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    .line 11
    new-instance v0, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    const-string v2, "OTHERS"

    const/4 v3, 0x2

    const-string v4, "others"

    const-string v5, "Compra no box"

    const v6, 0x7f08014b

    const v7, 0x7f08014a

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->OTHERS:Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    .line 8
    invoke-static {}, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->$values()[Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->type:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->name:Ljava/lang/String;

    .line 21
    iput p5, p0, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->drawableHistoryRes:I

    .line 22
    iput p6, p0, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->drawablePaymentRes:I

    return-void
.end method

.method public static getType(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/ProductTypeEnum;
    .locals 5

    if-eqz p0, :cond_1

    .line 27
    invoke-static {}, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->values()[Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 28
    iget-object v4, v3, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->type:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_1
    sget-object p0, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->OTHERS:Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/ProductTypeEnum;
    .locals 1

    .line 8
    const-class v0, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/enuns/ProductTypeEnum;
    .locals 1

    .line 8
    sget-object v0, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getDrawableHistoryRes()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->drawableHistoryRes:I

    return v0
.end method

.method public getDrawablePaymentRes()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->drawablePaymentRes:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->name:Ljava/lang/String;

    return-object v0
.end method
