.class final enum Lorg/bson/json/JsonScanner$NumberState;
.super Ljava/lang/Enum;
.source "JsonScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/json/JsonScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NumberState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bson/json/JsonScanner$NumberState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bson/json/JsonScanner$NumberState;

.field public static final enum DONE:Lorg/bson/json/JsonScanner$NumberState;

.field public static final enum INVALID:Lorg/bson/json/JsonScanner$NumberState;

.field public static final enum SAW_DECIMAL_POINT:Lorg/bson/json/JsonScanner$NumberState;

.field public static final enum SAW_EXPONENT_DIGITS:Lorg/bson/json/JsonScanner$NumberState;

.field public static final enum SAW_EXPONENT_LETTER:Lorg/bson/json/JsonScanner$NumberState;

.field public static final enum SAW_EXPONENT_SIGN:Lorg/bson/json/JsonScanner$NumberState;

.field public static final enum SAW_FRACTION_DIGITS:Lorg/bson/json/JsonScanner$NumberState;

.field public static final enum SAW_INTEGER_DIGITS:Lorg/bson/json/JsonScanner$NumberState;

.field public static final enum SAW_LEADING_MINUS:Lorg/bson/json/JsonScanner$NumberState;

.field public static final enum SAW_LEADING_ZERO:Lorg/bson/json/JsonScanner$NumberState;

.field public static final enum SAW_MINUS_I:Lorg/bson/json/JsonScanner$NumberState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 539
    new-instance v0, Lorg/bson/json/JsonScanner$NumberState;

    const-string v1, "SAW_LEADING_MINUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonScanner$NumberState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bson/json/JsonScanner$NumberState;->SAW_LEADING_MINUS:Lorg/bson/json/JsonScanner$NumberState;

    .line 540
    new-instance v1, Lorg/bson/json/JsonScanner$NumberState;

    const-string v2, "SAW_LEADING_ZERO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/bson/json/JsonScanner$NumberState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/bson/json/JsonScanner$NumberState;->SAW_LEADING_ZERO:Lorg/bson/json/JsonScanner$NumberState;

    .line 541
    new-instance v2, Lorg/bson/json/JsonScanner$NumberState;

    const-string v3, "SAW_INTEGER_DIGITS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/bson/json/JsonScanner$NumberState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/bson/json/JsonScanner$NumberState;->SAW_INTEGER_DIGITS:Lorg/bson/json/JsonScanner$NumberState;

    .line 542
    new-instance v3, Lorg/bson/json/JsonScanner$NumberState;

    const-string v4, "SAW_DECIMAL_POINT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/bson/json/JsonScanner$NumberState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/bson/json/JsonScanner$NumberState;->SAW_DECIMAL_POINT:Lorg/bson/json/JsonScanner$NumberState;

    .line 543
    new-instance v4, Lorg/bson/json/JsonScanner$NumberState;

    const-string v5, "SAW_FRACTION_DIGITS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/bson/json/JsonScanner$NumberState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/bson/json/JsonScanner$NumberState;->SAW_FRACTION_DIGITS:Lorg/bson/json/JsonScanner$NumberState;

    .line 544
    new-instance v5, Lorg/bson/json/JsonScanner$NumberState;

    const-string v6, "SAW_EXPONENT_LETTER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/bson/json/JsonScanner$NumberState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/bson/json/JsonScanner$NumberState;->SAW_EXPONENT_LETTER:Lorg/bson/json/JsonScanner$NumberState;

    .line 545
    new-instance v6, Lorg/bson/json/JsonScanner$NumberState;

    const-string v7, "SAW_EXPONENT_SIGN"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/bson/json/JsonScanner$NumberState;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/bson/json/JsonScanner$NumberState;->SAW_EXPONENT_SIGN:Lorg/bson/json/JsonScanner$NumberState;

    .line 546
    new-instance v7, Lorg/bson/json/JsonScanner$NumberState;

    const-string v8, "SAW_EXPONENT_DIGITS"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/bson/json/JsonScanner$NumberState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/bson/json/JsonScanner$NumberState;->SAW_EXPONENT_DIGITS:Lorg/bson/json/JsonScanner$NumberState;

    .line 547
    new-instance v8, Lorg/bson/json/JsonScanner$NumberState;

    const-string v9, "SAW_MINUS_I"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/bson/json/JsonScanner$NumberState;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/bson/json/JsonScanner$NumberState;->SAW_MINUS_I:Lorg/bson/json/JsonScanner$NumberState;

    .line 548
    new-instance v9, Lorg/bson/json/JsonScanner$NumberState;

    const-string v10, "DONE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lorg/bson/json/JsonScanner$NumberState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/bson/json/JsonScanner$NumberState;->DONE:Lorg/bson/json/JsonScanner$NumberState;

    .line 549
    new-instance v10, Lorg/bson/json/JsonScanner$NumberState;

    const-string v11, "INVALID"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lorg/bson/json/JsonScanner$NumberState;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/bson/json/JsonScanner$NumberState;->INVALID:Lorg/bson/json/JsonScanner$NumberState;

    .line 538
    filled-new-array/range {v0 .. v10}, [Lorg/bson/json/JsonScanner$NumberState;

    move-result-object v0

    sput-object v0, Lorg/bson/json/JsonScanner$NumberState;->$VALUES:[Lorg/bson/json/JsonScanner$NumberState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 538
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bson/json/JsonScanner$NumberState;
    .locals 1

    .line 538
    const-class v0, Lorg/bson/json/JsonScanner$NumberState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bson/json/JsonScanner$NumberState;

    return-object p0
.end method

.method public static values()[Lorg/bson/json/JsonScanner$NumberState;
    .locals 1

    .line 538
    sget-object v0, Lorg/bson/json/JsonScanner$NumberState;->$VALUES:[Lorg/bson/json/JsonScanner$NumberState;

    invoke-virtual {v0}, [Lorg/bson/json/JsonScanner$NumberState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bson/json/JsonScanner$NumberState;

    return-object v0
.end method
