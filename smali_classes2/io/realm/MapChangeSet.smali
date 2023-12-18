.class public interface abstract Lio/realm/MapChangeSet;
.super Ljava/lang/Object;
.source "MapChangeSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getChanges()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation
.end method

.method public abstract getDeletions()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation
.end method

.method public abstract getInsertions()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method
