.class abstract Lio/realm/RealmMapEntrySet$EntrySetIterator;
.super Ljava/lang/Object;
.source "RealmMapEntrySet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmMapEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "EntrySetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field protected final baseRealm:Lio/realm/BaseRealm;

.field protected final osMap:Lio/realm/internal/OsMap;

.field private pos:I


# direct methods
.method constructor <init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V
    .locals 1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 273
    iput v0, p0, Lio/realm/RealmMapEntrySet$EntrySetIterator;->pos:I

    .line 276
    iput-object p1, p0, Lio/realm/RealmMapEntrySet$EntrySetIterator;->osMap:Lio/realm/internal/OsMap;

    .line 277
    iput-object p2, p0, Lio/realm/RealmMapEntrySet$EntrySetIterator;->baseRealm:Lio/realm/BaseRealm;

    return-void
.end method


# virtual methods
.method protected abstract getEntryInternal(I)Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 6

    .line 284
    iget v0, p0, Lio/realm/RealmMapEntrySet$EntrySetIterator;->pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-long v2, v0

    iget-object v0, p0, Lio/realm/RealmMapEntrySet$EntrySetIterator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 268
    invoke-virtual {p0}, Lio/realm/RealmMapEntrySet$EntrySetIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 289
    iget v0, p0, Lio/realm/RealmMapEntrySet$EntrySetIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/RealmMapEntrySet$EntrySetIterator;->pos:I

    .line 290
    iget-object v0, p0, Lio/realm/RealmMapEntrySet$EntrySetIterator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v0

    .line 291
    iget v2, p0, Lio/realm/RealmMapEntrySet$EntrySetIterator;->pos:I

    int-to-long v3, v2

    cmp-long v3, v3, v0

    if-gez v3, :cond_0

    .line 296
    invoke-virtual {p0, v2}, Lio/realm/RealmMapEntrySet$EntrySetIterator;->getEntryInternal(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 292
    :cond_0
    new-instance v2, Ljava/util/NoSuchElementException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot access index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lio/realm/RealmMapEntrySet$EntrySetIterator;->pos:I

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
