.class public final enum Lorg/bson/UuidRepresentation;
.super Ljava/lang/Enum;
.source "UuidRepresentation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bson/UuidRepresentation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bson/UuidRepresentation;

.field public static final enum C_SHARP_LEGACY:Lorg/bson/UuidRepresentation;

.field public static final enum JAVA_LEGACY:Lorg/bson/UuidRepresentation;

.field public static final enum PYTHON_LEGACY:Lorg/bson/UuidRepresentation;

.field public static final enum STANDARD:Lorg/bson/UuidRepresentation;

.field public static final enum UNSPECIFIED:Lorg/bson/UuidRepresentation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lorg/bson/UuidRepresentation;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bson/UuidRepresentation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bson/UuidRepresentation;->UNSPECIFIED:Lorg/bson/UuidRepresentation;

    .line 40
    new-instance v1, Lorg/bson/UuidRepresentation;

    const-string v2, "STANDARD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/bson/UuidRepresentation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/bson/UuidRepresentation;->STANDARD:Lorg/bson/UuidRepresentation;

    .line 47
    new-instance v2, Lorg/bson/UuidRepresentation;

    const-string v3, "C_SHARP_LEGACY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/bson/UuidRepresentation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/bson/UuidRepresentation;->C_SHARP_LEGACY:Lorg/bson/UuidRepresentation;

    .line 54
    new-instance v3, Lorg/bson/UuidRepresentation;

    const-string v4, "JAVA_LEGACY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/bson/UuidRepresentation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/bson/UuidRepresentation;->JAVA_LEGACY:Lorg/bson/UuidRepresentation;

    .line 62
    new-instance v4, Lorg/bson/UuidRepresentation;

    const-string v5, "PYTHON_LEGACY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/bson/UuidRepresentation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/bson/UuidRepresentation;->PYTHON_LEGACY:Lorg/bson/UuidRepresentation;

    .line 26
    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/bson/UuidRepresentation;

    move-result-object v0

    sput-object v0, Lorg/bson/UuidRepresentation;->$VALUES:[Lorg/bson/UuidRepresentation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bson/UuidRepresentation;
    .locals 1

    .line 26
    const-class v0, Lorg/bson/UuidRepresentation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bson/UuidRepresentation;

    return-object p0
.end method

.method public static values()[Lorg/bson/UuidRepresentation;
    .locals 1

    .line 26
    sget-object v0, Lorg/bson/UuidRepresentation;->$VALUES:[Lorg/bson/UuidRepresentation;

    invoke-virtual {v0}, [Lorg/bson/UuidRepresentation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bson/UuidRepresentation;

    return-object v0
.end method
