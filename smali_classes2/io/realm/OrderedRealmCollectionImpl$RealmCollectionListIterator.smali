.class Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;
.super Lio/realm/internal/OsResults$ListIterator;
.source "OrderedRealmCollectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/OrderedRealmCollectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RealmCollectionListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/internal/OsResults$ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/OrderedRealmCollectionImpl;


# direct methods
.method constructor <init>(Lio/realm/OrderedRealmCollectionImpl;I)V
    .locals 0

    .line 577
    iput-object p1, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    .line 578
    iget-object p1, p1, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-direct {p0, p1, p2}, Lio/realm/internal/OsResults$ListIterator;-><init>(Lio/realm/internal/OsResults;I)V

    return-void
.end method


# virtual methods
.method protected convertRowToObject(Lio/realm/internal/UncheckedRow;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/UncheckedRow;",
            ")TE;"
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    iget-object v0, v0, Lio/realm/OrderedRealmCollectionImpl;->operator:Lio/realm/OrderedRealmCollectionImpl$CollectionOperator;

    invoke-virtual {v0, p1}, Lio/realm/OrderedRealmCollectionImpl$CollectionOperator;->convertRowToObject(Lio/realm/internal/UncheckedRow;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getInternal(ILio/realm/internal/OsResults;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/realm/internal/OsResults;",
            ")TE;"
        }
    .end annotation

    .line 588
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    iget-object v0, v0, Lio/realm/OrderedRealmCollectionImpl;->operator:Lio/realm/OrderedRealmCollectionImpl$CollectionOperator;

    invoke-virtual {v0, p1, p2}, Lio/realm/OrderedRealmCollectionImpl$CollectionOperator;->getFromResults(ILio/realm/internal/OsResults;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
