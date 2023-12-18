.class public final enum Lorg/bson/json/JsonMode;
.super Ljava/lang/Enum;
.source "JsonMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bson/json/JsonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bson/json/JsonMode;

.field public static final enum EXTENDED:Lorg/bson/json/JsonMode;

.field public static final enum RELAXED:Lorg/bson/json/JsonMode;

.field public static final enum SHELL:Lorg/bson/json/JsonMode;

.field public static final enum STRICT:Lorg/bson/json/JsonMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    new-instance v0, Lorg/bson/json/JsonMode;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bson/json/JsonMode;->STRICT:Lorg/bson/json/JsonMode;

    .line 40
    new-instance v1, Lorg/bson/json/JsonMode;

    const-string v2, "SHELL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/bson/json/JsonMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/bson/json/JsonMode;->SHELL:Lorg/bson/json/JsonMode;

    .line 48
    new-instance v2, Lorg/bson/json/JsonMode;

    const-string v3, "EXTENDED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/bson/json/JsonMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/bson/json/JsonMode;->EXTENDED:Lorg/bson/json/JsonMode;

    .line 56
    new-instance v3, Lorg/bson/json/JsonMode;

    const-string v4, "RELAXED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/bson/json/JsonMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/bson/json/JsonMode;->RELAXED:Lorg/bson/json/JsonMode;

    .line 25
    filled-new-array {v0, v1, v2, v3}, [Lorg/bson/json/JsonMode;

    move-result-object v0

    sput-object v0, Lorg/bson/json/JsonMode;->$VALUES:[Lorg/bson/json/JsonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bson/json/JsonMode;
    .locals 1

    .line 25
    const-class v0, Lorg/bson/json/JsonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bson/json/JsonMode;

    return-object p0
.end method

.method public static values()[Lorg/bson/json/JsonMode;
    .locals 1

    .line 25
    sget-object v0, Lorg/bson/json/JsonMode;->$VALUES:[Lorg/bson/json/JsonMode;

    invoke-virtual {v0}, [Lorg/bson/json/JsonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bson/json/JsonMode;

    return-object v0
.end method
