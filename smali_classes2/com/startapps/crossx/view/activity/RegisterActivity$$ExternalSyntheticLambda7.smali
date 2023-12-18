.class public final synthetic Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/startapps/crossx/view/activity/RegisterActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/startapps/crossx/view/activity/RegisterActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda7;->f$0:Lcom/startapps/crossx/view/activity/RegisterActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda7;->f$0:Lcom/startapps/crossx/view/activity/RegisterActivity;

    check-cast p1, Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;

    invoke-static {v0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->$r8$lambda$DY3sjmvMnMQXSbPRnfWIjbaM35c(Lcom/startapps/crossx/view/activity/RegisterActivity;Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;)V

    return-void
.end method
