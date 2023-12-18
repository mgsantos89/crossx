.class Lio/realm/StringMapChangeSet;
.super Ljava/lang/Object;
.source "MapChangeSet.java"

# interfaces
.implements Lio/realm/MapChangeSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/MapChangeSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final osMapChangeSet:Lio/realm/internal/OsMapChangeSet;


# direct methods
.method constructor <init>(J)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lio/realm/internal/OsMapChangeSet;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/OsMapChangeSet;-><init>(J)V

    iput-object v0, p0, Lio/realm/StringMapChangeSet;->osMapChangeSet:Lio/realm/internal/OsMapChangeSet;

    return-void
.end method


# virtual methods
.method public bridge synthetic getChanges()[Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lio/realm/StringMapChangeSet;->getChanges()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChanges()[Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lio/realm/StringMapChangeSet;->osMapChangeSet:Lio/realm/internal/OsMapChangeSet;

    invoke-virtual {v0}, Lio/realm/internal/OsMapChangeSet;->getStringKeyModifications()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeletions()[Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lio/realm/StringMapChangeSet;->getDeletions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeletions()[Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lio/realm/StringMapChangeSet;->osMapChangeSet:Lio/realm/internal/OsMapChangeSet;

    invoke-virtual {v0}, Lio/realm/internal/OsMapChangeSet;->getStringKeyDeletions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInsertions()[Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lio/realm/StringMapChangeSet;->getInsertions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInsertions()[Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lio/realm/StringMapChangeSet;->osMapChangeSet:Lio/realm/internal/OsMapChangeSet;

    invoke-virtual {v0}, Lio/realm/internal/OsMapChangeSet;->getStringKeyInsertions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lio/realm/StringMapChangeSet;->osMapChangeSet:Lio/realm/internal/OsMapChangeSet;

    invoke-virtual {v0}, Lio/realm/internal/OsMapChangeSet;->isEmpty()Z

    move-result v0

    return v0
.end method
