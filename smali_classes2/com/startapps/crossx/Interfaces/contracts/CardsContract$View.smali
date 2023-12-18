.class public interface abstract Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;
.super Ljava/lang/Object;
.source "CardsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/Interfaces/contracts/CardsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract checkViewWarningSafeConnection()V
.end method

.method public abstract hideAll()V
.end method

.method public abstract showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
.end method

.method public abstract showLoading()V
.end method

.method public abstract showMessageCardDefaultSuccess()V
.end method

.method public abstract showViewEmpty()V
.end method

.method public abstract upLayout(Ljava/util/List;Lcom/startapps/crossx/model/CreditCard;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CreditCard;",
            ">;",
            "Lcom/startapps/crossx/model/CreditCard;",
            ")V"
        }
    .end annotation
.end method
