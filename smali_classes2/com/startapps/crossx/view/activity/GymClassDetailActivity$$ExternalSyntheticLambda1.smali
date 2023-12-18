.class public final synthetic Lcom/startapps/crossx/view/activity/GymClassDetailActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/startapps/crossx/view/activity/GymClassDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/startapps/crossx/view/activity/GymClassDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/GymClassDetailActivity$$ExternalSyntheticLambda1;->f$0:Lcom/startapps/crossx/view/activity/GymClassDetailActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/GymClassDetailActivity$$ExternalSyntheticLambda1;->f$0:Lcom/startapps/crossx/view/activity/GymClassDetailActivity;

    check-cast p1, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;

    invoke-static {v0, p1}, Lcom/startapps/crossx/view/activity/GymClassDetailActivity;->$r8$lambda$km2Lx4TnyViTSchmrzri3xaCGXU(Lcom/startapps/crossx/view/activity/GymClassDetailActivity;Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;)V

    return-void
.end method
