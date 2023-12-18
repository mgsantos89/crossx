.class public Lcom/startapps/crossx/classes/presenter/ToPayPresenter;
.super Ljava/lang/Object;
.source "ToPayPresenter.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/ToPayContract$Presenter;


# instance fields
.field private membership:Lcom/startapps/crossx/model/Membership;

.field private final viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ToPayContract$View;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/Interfaces/contracts/ToPayContract$View;Landroid/os/Bundle;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/ToPayPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ToPayContract$View;

    .line 20
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/classes/presenter/ToPayPresenter;->getExtra(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getExtra(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "membership_extra"

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/Membership;

    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/ToPayPresenter;->membership:Lcom/startapps/crossx/model/Membership;

    .line 27
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ToPayContract$View;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/Interfaces/contracts/ToPayContract$View;->upLayout(Lcom/startapps/crossx/model/Membership;)V

    :cond_0
    return-void
.end method
