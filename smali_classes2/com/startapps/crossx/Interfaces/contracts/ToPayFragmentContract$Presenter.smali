.class public interface abstract Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$Presenter;
.super Ljava/lang/Object;
.source "ToPayFragmentContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract checkDueDate(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract emptyData()V
.end method

.method public abstract getDetailsMembership(J)V
.end method

.method public abstract getMembershiId()J
.end method

.method public abstract getToPay()V
.end method

.method public abstract getToPayById()V
.end method

.method public abstract getToPayList()V
.end method

.method public abstract getTotalItems()I
.end method

.method public abstract getTotalValue()Ljava/lang/String;
.end method
