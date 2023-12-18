.class Lio/realm/RealmModelSetIterator;
.super Lio/realm/SetIterator;
.source "SetValueOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/realm/RealmModel;",
        ">",
        "Lio/realm/SetIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final valueClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/OsSet;",
            "Lio/realm/BaseRealm;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1817
    invoke-direct {p0, p1, p2}, Lio/realm/SetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    .line 1818
    iput-object p3, p0, Lio/realm/RealmModelSetIterator;->valueClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected getValueAtIndex(I)Lio/realm/RealmModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1823
    iget-object v0, p0, Lio/realm/RealmModelSetIterator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSet;->getRow(I)J

    move-result-wide v3

    .line 1824
    iget-object v1, p0, Lio/realm/RealmModelSetIterator;->baseRealm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/RealmModelSetIterator;->valueClass:Ljava/lang/Class;

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getValueAtIndex(I)Ljava/lang/Object;
    .locals 0

    .line 1812
    invoke-virtual {p0, p1}, Lio/realm/RealmModelSetIterator;->getValueAtIndex(I)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method
