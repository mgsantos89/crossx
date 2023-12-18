.class public final synthetic Lcom/startapps/crossx/view/activity/MissPasswordActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/startapps/crossx/view/activity/MissPasswordActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/startapps/crossx/view/activity/MissPasswordActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/MissPasswordActivity$$ExternalSyntheticLambda1;->f$0:Lcom/startapps/crossx/view/activity/MissPasswordActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MissPasswordActivity$$ExternalSyntheticLambda1;->f$0:Lcom/startapps/crossx/view/activity/MissPasswordActivity;

    check-cast p1, Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;

    invoke-static {v0, p1}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->$r8$lambda$OnCmtYrQJ20hKmua1NsvDqn_Y48(Lcom/startapps/crossx/view/activity/MissPasswordActivity;Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;)V

    return-void
.end method
