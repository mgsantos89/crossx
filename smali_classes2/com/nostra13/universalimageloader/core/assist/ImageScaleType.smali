.class public final enum Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
.super Ljava/lang/Enum;
.source "ImageScaleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum NONE_SAFE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 26
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 35
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string v2, "NONE_SAFE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE_SAFE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 43
    new-instance v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string v3, "IN_SAMPLE_POWER_OF_2"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 50
    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string v4, "IN_SAMPLE_INT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 63
    new-instance v4, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string v5, "EXACTLY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 77
    new-instance v5, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string v6, "EXACTLY_STRETCHED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 24
    filled-new-array/range {v0 .. v5}, [Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->$VALUES:[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    .line 24
    const-class v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object p0
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    .line 24
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->$VALUES:[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0}, [Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method
