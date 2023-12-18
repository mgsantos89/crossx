.class public interface abstract Lio/realm/MapChangeListener;
.super Ljava/lang/Object;
.source "MapChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onChange(Lio/realm/RealmMap;Lio/realm/MapChangeSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmMap<",
            "TK;TV;>;",
            "Lio/realm/MapChangeSet<",
            "TK;>;)V"
        }
    .end annotation
.end method
