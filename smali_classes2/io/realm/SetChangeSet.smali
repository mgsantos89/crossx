.class public Lio/realm/SetChangeSet;
.super Ljava/lang/Object;
.source "SetChangeSet.java"


# instance fields
.field private final osCollectionChangeSet:Lio/realm/internal/OsCollectionChangeSet;


# direct methods
.method public constructor <init>(Lio/realm/internal/OsCollectionChangeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lio/realm/SetChangeSet;->osCollectionChangeSet:Lio/realm/internal/OsCollectionChangeSet;

    return-void
.end method


# virtual methods
.method public getNumberOfDeletions()I
    .locals 1

    .line 51
    iget-object v0, p0, Lio/realm/SetChangeSet;->osCollectionChangeSet:Lio/realm/internal/OsCollectionChangeSet;

    invoke-virtual {v0}, Lio/realm/internal/OsCollectionChangeSet;->getDeletions()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getNumberOfInsertions()I
    .locals 1

    .line 42
    iget-object v0, p0, Lio/realm/SetChangeSet;->osCollectionChangeSet:Lio/realm/internal/OsCollectionChangeSet;

    invoke-virtual {v0}, Lio/realm/internal/OsCollectionChangeSet;->getInsertions()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .line 63
    iget-object v0, p0, Lio/realm/SetChangeSet;->osCollectionChangeSet:Lio/realm/internal/OsCollectionChangeSet;

    invoke-virtual {v0}, Lio/realm/internal/OsCollectionChangeSet;->getNativePtr()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
