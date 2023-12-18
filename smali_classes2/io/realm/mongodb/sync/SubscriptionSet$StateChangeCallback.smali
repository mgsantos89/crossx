.class public interface abstract Lio/realm/mongodb/sync/SubscriptionSet$StateChangeCallback;
.super Ljava/lang/Object;
.source "SubscriptionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/mongodb/sync/SubscriptionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateChangeCallback"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public abstract onStateChange(Lio/realm/mongodb/sync/SubscriptionSet;)V
.end method
