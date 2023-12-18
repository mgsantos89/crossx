.class public final enum Lio/realm/internal/OsSet$ExternalCollectionOperation;
.super Ljava/lang/Enum;
.source "OsSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExternalCollectionOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/internal/OsSet$ExternalCollectionOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/internal/OsSet$ExternalCollectionOperation;

.field public static final enum ADD_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

.field public static final enum CONTAINS_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

.field public static final enum REMOVE_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

.field public static final enum RETAIN_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Lio/realm/internal/OsSet$ExternalCollectionOperation;

    const-string v1, "CONTAINS_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/realm/internal/OsSet$ExternalCollectionOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/OsSet$ExternalCollectionOperation;->CONTAINS_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    .line 36
    new-instance v1, Lio/realm/internal/OsSet$ExternalCollectionOperation;

    const-string v2, "ADD_ALL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/realm/internal/OsSet$ExternalCollectionOperation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/realm/internal/OsSet$ExternalCollectionOperation;->ADD_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    .line 37
    new-instance v2, Lio/realm/internal/OsSet$ExternalCollectionOperation;

    const-string v3, "REMOVE_ALL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lio/realm/internal/OsSet$ExternalCollectionOperation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/realm/internal/OsSet$ExternalCollectionOperation;->REMOVE_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    .line 38
    new-instance v3, Lio/realm/internal/OsSet$ExternalCollectionOperation;

    const-string v4, "RETAIN_ALL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lio/realm/internal/OsSet$ExternalCollectionOperation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/realm/internal/OsSet$ExternalCollectionOperation;->RETAIN_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    .line 34
    filled-new-array {v0, v1, v2, v3}, [Lio/realm/internal/OsSet$ExternalCollectionOperation;

    move-result-object v0

    sput-object v0, Lio/realm/internal/OsSet$ExternalCollectionOperation;->$VALUES:[Lio/realm/internal/OsSet$ExternalCollectionOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/OsSet$ExternalCollectionOperation;
    .locals 1

    .line 34
    const-class v0, Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/internal/OsSet$ExternalCollectionOperation;

    return-object p0
.end method

.method public static values()[Lio/realm/internal/OsSet$ExternalCollectionOperation;
    .locals 1

    .line 34
    sget-object v0, Lio/realm/internal/OsSet$ExternalCollectionOperation;->$VALUES:[Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {v0}, [Lio/realm/internal/OsSet$ExternalCollectionOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/OsSet$ExternalCollectionOperation;

    return-object v0
.end method
