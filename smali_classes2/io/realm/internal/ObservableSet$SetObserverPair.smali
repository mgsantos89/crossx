.class public Lio/realm/internal/ObservableSet$SetObserverPair;
.super Lio/realm/internal/ObserverPairList$ObserverPair;
.source "ObservableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/ObservableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetObserverPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/internal/ObserverPairList$ObserverPair<",
        "Lio/realm/RealmSet<",
        "TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/realm/RealmSet;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmSet<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ObserverPairList$ObserverPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/Object;Lio/realm/SetChangeSet;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lio/realm/internal/ObservableSet$SetObserverPair;->listener:Ljava/lang/Object;

    check-cast v0, Lio/realm/SetChangeListener;

    check-cast p1, Lio/realm/RealmSet;

    invoke-interface {v0, p1, p2}, Lio/realm/SetChangeListener;->onChange(Lio/realm/RealmSet;Lio/realm/SetChangeSet;)V

    return-void
.end method
