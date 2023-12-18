.class public interface abstract Lcom/startapps/crossx/Interfaces/contracts/ChooseFormPaymentContract$View;
.super Ljava/lang/Object;
.source "ChooseFormPaymentContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/Interfaces/contracts/ChooseFormPaymentContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract hideAll()V
.end method

.method public abstract showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
.end method

.method public abstract showLoading()V
.end method

.method public abstract upCardInfo(Lcom/startapps/crossx/model/CreditCard;Z)V
.end method

.method public abstract upLayout(Lcom/startapps/crossx/model/CreditCard;Lcom/startapps/crossx/model/Membership;ZZ)V
.end method
