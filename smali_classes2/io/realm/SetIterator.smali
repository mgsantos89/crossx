.class abstract Lio/realm/SetIterator;
.super Ljava/lang/Object;
.source "SetValueOperator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected final baseRealm:Lio/realm/BaseRealm;

.field protected final osSet:Lio/realm/internal/OsSet;

.field private pos:I


# direct methods
.method constructor <init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V
    .locals 1

    .line 1605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1603
    iput v0, p0, Lio/realm/SetIterator;->pos:I

    .line 1606
    iput-object p1, p0, Lio/realm/SetIterator;->osSet:Lio/realm/internal/OsSet;

    .line 1607
    iput-object p2, p0, Lio/realm/SetIterator;->baseRealm:Lio/realm/BaseRealm;

    return-void
.end method


# virtual methods
.method protected getValueAtIndex(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1630
    iget-object v0, p0, Lio/realm/SetIterator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSet;->getValueAtIndex(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasNext()Z
    .locals 6

    .line 1612
    iget v0, p0, Lio/realm/SetIterator;->pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-long v2, v0

    iget-object v0, p0, Lio/realm/SetIterator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0}, Lio/realm/internal/OsSet;->size()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1617
    iget v0, p0, Lio/realm/SetIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/SetIterator;->pos:I

    .line 1618
    iget-object v0, p0, Lio/realm/SetIterator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0}, Lio/realm/internal/OsSet;->size()J

    move-result-wide v0

    .line 1619
    iget v2, p0, Lio/realm/SetIterator;->pos:I

    int-to-long v3, v2

    cmp-long v3, v3, v0

    if-gez v3, :cond_0

    .line 1624
    invoke-virtual {p0, v2}, Lio/realm/SetIterator;->getValueAtIndex(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1620
    :cond_0
    new-instance v2, Ljava/util/NoSuchElementException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot access index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lio/realm/SetIterator;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Remember to check hasNext() before using next()."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
