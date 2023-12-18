.class public interface abstract Lio/realm/mongodb/sync/SubscriptionSet$UpdateAsyncCallback;
.super Ljava/lang/Object;
.source "SubscriptionSet.java"

# interfaces
.implements Lio/realm/mongodb/sync/SubscriptionSet$UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/mongodb/sync/SubscriptionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateAsyncCallback"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Lio/realm/mongodb/sync/SubscriptionSet;)V
.end method
