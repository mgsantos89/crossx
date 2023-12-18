.class public final synthetic Lcom/startapps/crossx/view/activity/ProfileActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/startapps/crossx/view/activity/ProfileActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/startapps/crossx/view/activity/ProfileActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ProfileActivity$$ExternalSyntheticLambda10;->f$0:Lcom/startapps/crossx/view/activity/ProfileActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProfileActivity$$ExternalSyntheticLambda10;->f$0:Lcom/startapps/crossx/view/activity/ProfileActivity;

    check-cast p1, Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;

    invoke-static {v0, p1}, Lcom/startapps/crossx/view/activity/ProfileActivity;->$r8$lambda$dkq0OAXr95-QIHBcpCo-weqGwn4(Lcom/startapps/crossx/view/activity/ProfileActivity;Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;)V

    return-void
.end method
