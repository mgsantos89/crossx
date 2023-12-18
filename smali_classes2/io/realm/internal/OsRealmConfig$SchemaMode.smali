.class public final enum Lio/realm/internal/OsRealmConfig$SchemaMode;
.super Ljava/lang/Enum;
.source "OsRealmConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsRealmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SchemaMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/internal/OsRealmConfig$SchemaMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/internal/OsRealmConfig$SchemaMode;

.field public static final enum SCHEMA_MODE_ADDITIVE_DISCOVERED:Lio/realm/internal/OsRealmConfig$SchemaMode;

.field public static final enum SCHEMA_MODE_AUTOMATIC:Lio/realm/internal/OsRealmConfig$SchemaMode;

.field public static final enum SCHEMA_MODE_IMMUTABLE:Lio/realm/internal/OsRealmConfig$SchemaMode;

.field public static final enum SCHEMA_MODE_MANUAL:Lio/realm/internal/OsRealmConfig$SchemaMode;

.field public static final enum SCHEMA_MODE_READONLY:Lio/realm/internal/OsRealmConfig$SchemaMode;

.field public static final enum SCHEMA_MODE_SOFT_RESET_FILE:Lio/realm/internal/OsRealmConfig$SchemaMode;


# instance fields
.field final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 60
    new-instance v0, Lio/realm/internal/OsRealmConfig$SchemaMode;

    const-string v1, "SCHEMA_MODE_AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/realm/internal/OsRealmConfig$SchemaMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_AUTOMATIC:Lio/realm/internal/OsRealmConfig$SchemaMode;

    .line 61
    new-instance v1, Lio/realm/internal/OsRealmConfig$SchemaMode;

    const-string v2, "SCHEMA_MODE_IMMUTABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lio/realm/internal/OsRealmConfig$SchemaMode;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_IMMUTABLE:Lio/realm/internal/OsRealmConfig$SchemaMode;

    .line 62
    new-instance v2, Lio/realm/internal/OsRealmConfig$SchemaMode;

    const-string v3, "SCHEMA_MODE_READONLY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lio/realm/internal/OsRealmConfig$SchemaMode;-><init>(Ljava/lang/String;IB)V

    sput-object v2, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_READONLY:Lio/realm/internal/OsRealmConfig$SchemaMode;

    .line 63
    new-instance v3, Lio/realm/internal/OsRealmConfig$SchemaMode;

    const-string v4, "SCHEMA_MODE_SOFT_RESET_FILE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lio/realm/internal/OsRealmConfig$SchemaMode;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_SOFT_RESET_FILE:Lio/realm/internal/OsRealmConfig$SchemaMode;

    .line 64
    new-instance v4, Lio/realm/internal/OsRealmConfig$SchemaMode;

    const-string v5, "SCHEMA_MODE_ADDITIVE_DISCOVERED"

    const/4 v6, 0x4

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lio/realm/internal/OsRealmConfig$SchemaMode;-><init>(Ljava/lang/String;IB)V

    sput-object v4, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_ADDITIVE_DISCOVERED:Lio/realm/internal/OsRealmConfig$SchemaMode;

    .line 68
    new-instance v5, Lio/realm/internal/OsRealmConfig$SchemaMode;

    const-string v6, "SCHEMA_MODE_MANUAL"

    const/4 v8, 0x7

    invoke-direct {v5, v6, v7, v8}, Lio/realm/internal/OsRealmConfig$SchemaMode;-><init>(Ljava/lang/String;IB)V

    sput-object v5, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_MANUAL:Lio/realm/internal/OsRealmConfig$SchemaMode;

    .line 59
    filled-new-array/range {v0 .. v5}, [Lio/realm/internal/OsRealmConfig$SchemaMode;

    move-result-object v0

    sput-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->$VALUES:[Lio/realm/internal/OsRealmConfig$SchemaMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput-byte p3, p0, Lio/realm/internal/OsRealmConfig$SchemaMode;->value:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/OsRealmConfig$SchemaMode;
    .locals 1

    .line 59
    const-class v0, Lio/realm/internal/OsRealmConfig$SchemaMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/internal/OsRealmConfig$SchemaMode;

    return-object p0
.end method

.method public static values()[Lio/realm/internal/OsRealmConfig$SchemaMode;
    .locals 1

    .line 59
    sget-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->$VALUES:[Lio/realm/internal/OsRealmConfig$SchemaMode;

    invoke-virtual {v0}, [Lio/realm/internal/OsRealmConfig$SchemaMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/OsRealmConfig$SchemaMode;

    return-object v0
.end method


# virtual methods
.method public getNativeValue()B
    .locals 1

    .line 77
    iget-byte v0, p0, Lio/realm/internal/OsRealmConfig$SchemaMode;->value:B

    return v0
.end method
