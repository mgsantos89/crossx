.class final enum Lorg/bson/json/StrictCharacterStreamJsonWriter$State;
.super Ljava/lang/Enum;
.source "StrictCharacterStreamJsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/json/StrictCharacterStreamJsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bson/json/StrictCharacterStreamJsonWriter$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

.field public static final enum DONE:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

.field public static final enum INITIAL:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

.field public static final enum NAME:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

.field public static final enum VALUE:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 40
    new-instance v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->INITIAL:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    .line 41
    new-instance v1, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    const-string v2, "NAME"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->NAME:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    .line 42
    new-instance v2, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    const-string v3, "VALUE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->VALUE:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    .line 43
    new-instance v3, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    const-string v4, "DONE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->DONE:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    .line 39
    filled-new-array {v0, v1, v2, v3}, [Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    move-result-object v0

    sput-object v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->$VALUES:[Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bson/json/StrictCharacterStreamJsonWriter$State;
    .locals 1

    .line 39
    const-class v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    return-object p0
.end method

.method public static values()[Lorg/bson/json/StrictCharacterStreamJsonWriter$State;
    .locals 1

    .line 39
    sget-object v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->$VALUES:[Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    invoke-virtual {v0}, [Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    return-object v0
.end method
