.class public interface abstract Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;
.super Ljava/lang/Object;
.source "RegisterCardContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract backWithResult(Lcom/startapps/crossx/model/CreditCard;)V
.end method

.method public abstract hideAll()V
.end method

.method public abstract openHome()V
.end method

.method public abstract showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
.end method

.method public abstract showLoading()V
.end method

.method public abstract showRecurrenceOption()V
.end method

.method public abstract validate()Z
.end method
