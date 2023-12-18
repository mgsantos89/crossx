.class public Lcom/startapps/crossx/classes/presenter/PaymentsPresenter;
.super Ljava/lang/Object;
.source "PaymentsPresenter.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/PaymentsContract$Presenter;


# instance fields
.field private final viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/PaymentsContract$View;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/Interfaces/contracts/PaymentsContract$View;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/PaymentsPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/PaymentsContract$View;

    return-void
.end method
