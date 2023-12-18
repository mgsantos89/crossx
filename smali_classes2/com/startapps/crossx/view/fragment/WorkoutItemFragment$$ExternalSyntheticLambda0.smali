.class public final synthetic Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$$ExternalSyntheticLambda0;->f$0:Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$$ExternalSyntheticLambda0;->f$0:Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;

    check-cast p1, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;

    invoke-static {v0, p1}, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->$r8$lambda$-Faj1LDEcpsUVxynoL8Hh8_sccw(Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;)V

    return-void
.end method
