.class public interface abstract Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;
.super Ljava/lang/Object;
.source "MembershipDetailsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract hideAll()V
.end method

.method public abstract setMemberships(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/FinancialInvoice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
.end method

.method public abstract showLoading()V
.end method

.method public abstract upLayout(Lcom/startapps/crossx/model/Membership;)V
.end method
