.class public final enum Landroidx/datastore/preferences/protobuf/NullValue;
.super Ljava/lang/Enum;
.source "NullValue.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/NullValue$NullValueVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/datastore/preferences/protobuf/NullValue;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/datastore/preferences/protobuf/NullValue;

.field public static final enum NULL_VALUE:Landroidx/datastore/preferences/protobuf/NullValue;

.field public static final NULL_VALUE_VALUE:I

.field public static final enum UNRECOGNIZED:Landroidx/datastore/preferences/protobuf/NullValue;

.field private static final internalValueMap:Landroidx/datastore/preferences/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Internal$EnumLiteMap<",
            "Landroidx/datastore/preferences/protobuf/NullValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Landroidx/datastore/preferences/protobuf/NullValue;

    const-string v1, "NULL_VALUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/datastore/preferences/protobuf/NullValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/NullValue;->NULL_VALUE:Landroidx/datastore/preferences/protobuf/NullValue;

    .line 25
    new-instance v1, Landroidx/datastore/preferences/protobuf/NullValue;

    const/4 v2, 0x1

    const/4 v3, -0x1

    const-string v4, "UNRECOGNIZED"

    invoke-direct {v1, v4, v2, v3}, Landroidx/datastore/preferences/protobuf/NullValue;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/datastore/preferences/protobuf/NullValue;->UNRECOGNIZED:Landroidx/datastore/preferences/protobuf/NullValue;

    .line 15
    filled-new-array {v0, v1}, [Landroidx/datastore/preferences/protobuf/NullValue;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/NullValue;->$VALUES:[Landroidx/datastore/preferences/protobuf/NullValue;

    .line 69
    new-instance v0, Landroidx/datastore/preferences/protobuf/NullValue$1;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/NullValue$1;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/NullValue;->internalValueMap:Landroidx/datastore/preferences/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput p3, p0, Landroidx/datastore/preferences/protobuf/NullValue;->value:I

    return-void
.end method

.method public static forNumber(I)Landroidx/datastore/preferences/protobuf/NullValue;
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_0
    sget-object p0, Landroidx/datastore/preferences/protobuf/NullValue;->NULL_VALUE:Landroidx/datastore/preferences/protobuf/NullValue;

    return-object p0
.end method

.method public static internalGetValueMap()Landroidx/datastore/preferences/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/Internal$EnumLiteMap<",
            "Landroidx/datastore/preferences/protobuf/NullValue;",
            ">;"
        }
    .end annotation

    .line 66
    sget-object v0, Landroidx/datastore/preferences/protobuf/NullValue;->internalValueMap:Landroidx/datastore/preferences/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 79
    sget-object v0, Landroidx/datastore/preferences/protobuf/NullValue$NullValueVerifier;->INSTANCE:Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Landroidx/datastore/preferences/protobuf/NullValue;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/NullValue;->forNumber(I)Landroidx/datastore/preferences/protobuf/NullValue;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/NullValue;
    .locals 1

    .line 15
    const-class v0, Landroidx/datastore/preferences/protobuf/NullValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/NullValue;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/NullValue;
    .locals 1

    .line 15
    sget-object v0, Landroidx/datastore/preferences/protobuf/NullValue;->$VALUES:[Landroidx/datastore/preferences/protobuf/NullValue;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/NullValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/protobuf/NullValue;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 40
    sget-object v0, Landroidx/datastore/preferences/protobuf/NullValue;->UNRECOGNIZED:Landroidx/datastore/preferences/protobuf/NullValue;

    if-eq p0, v0, :cond_0

    .line 44
    iget v0, p0, Landroidx/datastore/preferences/protobuf/NullValue;->value:I

    return v0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
