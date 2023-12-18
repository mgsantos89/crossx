.class public interface abstract Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;
.super Ljava/lang/Object;
.source "ProcessingStatusContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract finishActivity()V
.end method

.method public abstract goToHome()V
.end method

.method public abstract goToHomeAndClickChangeCard(Lcom/startapps/crossx/model/Notification;)V
.end method

.method public abstract goToHomeAndClickToPayNow(Lcom/startapps/crossx/model/Notification;)V
.end method

.method public abstract goToHomeEnablePayment(Lcom/startapps/crossx/model/Notification;)V
.end method

.method public abstract onBack()V
.end method

.method public abstract populateDialogCardRefused(Lcom/startapps/crossx/model/DataPayment;)V
.end method

.method public abstract populateDialogSuccess(Lcom/startapps/crossx/model/DataPayment;)V
.end method

.method public abstract processingPayment(Ljava/lang/String;)V
.end method

.method public abstract showErrorGenerateBillet()V
.end method

.method public abstract showErrorUnexpected()V
.end method

.method public abstract showMessagePaymentDone()V
.end method

.method public abstract startBilletActivity(Lcom/startapps/crossx/model/DataPayment;)V
.end method

.method public abstract startServicePolling()V
.end method
