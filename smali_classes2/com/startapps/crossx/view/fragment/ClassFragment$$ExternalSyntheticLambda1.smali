.class public final synthetic Lcom/startapps/crossx/view/fragment/ClassFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/startapps/crossx/view/fragment/ClassFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/startapps/crossx/view/fragment/ClassFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassFragment$$ExternalSyntheticLambda1;->f$0:Lcom/startapps/crossx/view/fragment/ClassFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassFragment$$ExternalSyntheticLambda1;->f$0:Lcom/startapps/crossx/view/fragment/ClassFragment;

    check-cast p1, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;

    invoke-static {v0, p1}, Lcom/startapps/crossx/view/fragment/ClassFragment;->$r8$lambda$RRt1iwNfzlTBkelLrGs3Dm6fys0(Lcom/startapps/crossx/view/fragment/ClassFragment;Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;)V

    return-void
.end method
