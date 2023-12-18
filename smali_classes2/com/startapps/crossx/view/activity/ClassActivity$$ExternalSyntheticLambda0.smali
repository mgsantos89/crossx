.class public final synthetic Lcom/startapps/crossx/view/activity/ClassActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/startapps/crossx/view/activity/ClassActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/startapps/crossx/view/activity/ClassActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ClassActivity$$ExternalSyntheticLambda0;->f$0:Lcom/startapps/crossx/view/activity/ClassActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ClassActivity$$ExternalSyntheticLambda0;->f$0:Lcom/startapps/crossx/view/activity/ClassActivity;

    check-cast p1, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;

    invoke-static {v0, p1}, Lcom/startapps/crossx/view/activity/ClassActivity;->$r8$lambda$YfSOZXMhPmRu-dSsCYz9KK86n-4(Lcom/startapps/crossx/view/activity/ClassActivity;Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;)V

    return-void
.end method
