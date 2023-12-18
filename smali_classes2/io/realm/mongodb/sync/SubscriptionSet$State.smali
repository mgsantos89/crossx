.class public final enum Lio/realm/mongodb/sync/SubscriptionSet$State;
.super Ljava/lang/Enum;
.source "SubscriptionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/mongodb/sync/SubscriptionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/mongodb/sync/SubscriptionSet$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/mongodb/sync/SubscriptionSet$State;

.field public static final enum AWAITING_MARK:Lio/realm/mongodb/sync/SubscriptionSet$State;

.field public static final enum BOOTSTRAPPING:Lio/realm/mongodb/sync/SubscriptionSet$State;

.field public static final enum COMPLETE:Lio/realm/mongodb/sync/SubscriptionSet$State;

.field public static final enum ERROR:Lio/realm/mongodb/sync/SubscriptionSet$State;

.field public static final enum PENDING:Lio/realm/mongodb/sync/SubscriptionSet$State;

.field public static final enum SUPERSEDED:Lio/realm/mongodb/sync/SubscriptionSet$State;

.field public static final enum UNCOMMITTED:Lio/realm/mongodb/sync/SubscriptionSet$State;


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 51
    new-instance v0, Lio/realm/mongodb/sync/SubscriptionSet$State;

    const-string v1, "UNCOMMITTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/realm/mongodb/sync/SubscriptionSet$State;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/mongodb/sync/SubscriptionSet$State;->UNCOMMITTED:Lio/realm/mongodb/sync/SubscriptionSet$State;

    .line 57
    new-instance v1, Lio/realm/mongodb/sync/SubscriptionSet$State;

    const-string v2, "PENDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lio/realm/mongodb/sync/SubscriptionSet$State;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lio/realm/mongodb/sync/SubscriptionSet$State;->PENDING:Lio/realm/mongodb/sync/SubscriptionSet$State;

    .line 63
    new-instance v2, Lio/realm/mongodb/sync/SubscriptionSet$State;

    const-string v3, "BOOTSTRAPPING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lio/realm/mongodb/sync/SubscriptionSet$State;-><init>(Ljava/lang/String;IB)V

    sput-object v2, Lio/realm/mongodb/sync/SubscriptionSet$State;->BOOTSTRAPPING:Lio/realm/mongodb/sync/SubscriptionSet$State;

    .line 68
    new-instance v3, Lio/realm/mongodb/sync/SubscriptionSet$State;

    const-string v4, "COMPLETE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lio/realm/mongodb/sync/SubscriptionSet$State;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lio/realm/mongodb/sync/SubscriptionSet$State;->COMPLETE:Lio/realm/mongodb/sync/SubscriptionSet$State;

    .line 74
    new-instance v4, Lio/realm/mongodb/sync/SubscriptionSet$State;

    const-string v5, "ERROR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lio/realm/mongodb/sync/SubscriptionSet$State;-><init>(Ljava/lang/String;IB)V

    sput-object v4, Lio/realm/mongodb/sync/SubscriptionSet$State;->ERROR:Lio/realm/mongodb/sync/SubscriptionSet$State;

    .line 81
    new-instance v5, Lio/realm/mongodb/sync/SubscriptionSet$State;

    const-string v6, "SUPERSEDED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lio/realm/mongodb/sync/SubscriptionSet$State;-><init>(Ljava/lang/String;IB)V

    sput-object v5, Lio/realm/mongodb/sync/SubscriptionSet$State;->SUPERSEDED:Lio/realm/mongodb/sync/SubscriptionSet$State;

    .line 88
    new-instance v6, Lio/realm/mongodb/sync/SubscriptionSet$State;

    const-string v7, "AWAITING_MARK"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lio/realm/mongodb/sync/SubscriptionSet$State;-><init>(Ljava/lang/String;IB)V

    sput-object v6, Lio/realm/mongodb/sync/SubscriptionSet$State;->AWAITING_MARK:Lio/realm/mongodb/sync/SubscriptionSet$State;

    .line 45
    filled-new-array/range {v0 .. v6}, [Lio/realm/mongodb/sync/SubscriptionSet$State;

    move-result-object v0

    sput-object v0, Lio/realm/mongodb/sync/SubscriptionSet$State;->$VALUES:[Lio/realm/mongodb/sync/SubscriptionSet$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput-byte p3, p0, Lio/realm/mongodb/sync/SubscriptionSet$State;->value:B

    return-void
.end method

.method public static fromNativeValue(J)Lio/realm/mongodb/sync/SubscriptionSet$State;
    .locals 6

    .line 97
    invoke-static {}, Lio/realm/mongodb/sync/SubscriptionSet$State;->values()[Lio/realm/mongodb/sync/SubscriptionSet$State;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 98
    iget-byte v4, v3, Lio/realm/mongodb/sync/SubscriptionSet$State;->value:B

    int-to-long v4, v4

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown SubscriptionSetState code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/mongodb/sync/SubscriptionSet$State;
    .locals 1

    .line 45
    const-class v0, Lio/realm/mongodb/sync/SubscriptionSet$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/mongodb/sync/SubscriptionSet$State;

    return-object p0
.end method

.method public static values()[Lio/realm/mongodb/sync/SubscriptionSet$State;
    .locals 1

    .line 45
    sget-object v0, Lio/realm/mongodb/sync/SubscriptionSet$State;->$VALUES:[Lio/realm/mongodb/sync/SubscriptionSet$State;

    invoke-virtual {v0}, [Lio/realm/mongodb/sync/SubscriptionSet$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/mongodb/sync/SubscriptionSet$State;

    return-object v0
.end method
