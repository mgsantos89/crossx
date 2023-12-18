.class public Lio/realm/internal/ObservableMap$Callback;
.super Ljava/lang/Object;
.source "ObservableMap.java"

# interfaces
.implements Lio/realm/internal/ObserverPairList$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/ObservableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/realm/internal/ObserverPairList$Callback<",
        "Lio/realm/internal/ObservableMap$MapObserverPair<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final changeSet:Lio/realm/MapChangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/MapChangeSet<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/MapChangeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/MapChangeSet<",
            "TK;>;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lio/realm/internal/ObservableMap$Callback;->changeSet:Lio/realm/MapChangeSet;

    return-void
.end method


# virtual methods
.method public onCalled(Lio/realm/internal/ObservableMap$MapObserverPair;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/ObservableMap$MapObserverPair<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lio/realm/internal/ObservableMap$Callback;->changeSet:Lio/realm/MapChangeSet;

    invoke-virtual {p1, p2, v0}, Lio/realm/internal/ObservableMap$MapObserverPair;->onChange(Ljava/lang/Object;Lio/realm/MapChangeSet;)V

    return-void
.end method

.method public bridge synthetic onCalled(Lio/realm/internal/ObserverPairList$ObserverPair;Ljava/lang/Object;)V
    .locals 0

    .line 68
    check-cast p1, Lio/realm/internal/ObservableMap$MapObserverPair;

    invoke-virtual {p0, p1, p2}, Lio/realm/internal/ObservableMap$Callback;->onCalled(Lio/realm/internal/ObservableMap$MapObserverPair;Ljava/lang/Object;)V

    return-void
.end method
