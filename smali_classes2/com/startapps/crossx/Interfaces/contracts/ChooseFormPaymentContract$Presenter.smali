.class public interface abstract Lcom/startapps/crossx/Interfaces/contracts/ChooseFormPaymentContract$Presenter;
.super Ljava/lang/Object;
.source "ChooseFormPaymentContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/Interfaces/contracts/ChooseFormPaymentContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract createOptions(Lcom/startapps/crossx/model/PaymentMethod;)V
.end method

.method public abstract getBoxOptions()V
.end method

.method public abstract getCreditCardId()J
.end method

.method public abstract getExtra(Landroid/os/Bundle;)V
.end method

.method public abstract getMemberShip()Lcom/startapps/crossx/model/Membership;
.end method
