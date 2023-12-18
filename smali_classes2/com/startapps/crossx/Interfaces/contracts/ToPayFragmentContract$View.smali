.class public interface abstract Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;
.super Ljava/lang/Object;
.source "ToPayFragmentContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract hideAll()V
.end method

.method public abstract hideWarningPaymentPending()V
.end method

.method public abstract setPaymentItens(Ljava/util/List;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentGroupModel;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/startapps/crossx/model/PaymentGroupModel;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
.end method

.method public abstract showLoading()V
.end method

.method public abstract showViewEmpty()V
.end method

.method public abstract showWarningPaymentPending()V
.end method

.method public abstract startDetailsMembershipActivity(Lcom/startapps/crossx/model/Membership;)V
.end method
