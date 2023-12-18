.class public final synthetic Lcom/startapps/crossx/view/activity/BillingAddressRegister$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/startapps/crossx/view/activity/BillingAddressRegister;


# direct methods
.method public synthetic constructor <init>(Lcom/startapps/crossx/view/activity/BillingAddressRegister;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister$$ExternalSyntheticLambda1;->f$0:Lcom/startapps/crossx/view/activity/BillingAddressRegister;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister$$ExternalSyntheticLambda1;->f$0:Lcom/startapps/crossx/view/activity/BillingAddressRegister;

    check-cast p1, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;

    invoke-static {v0, p1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->$r8$lambda$3OJbKUt90eUNwK1VXfLA3YGry9U(Lcom/startapps/crossx/view/activity/BillingAddressRegister;Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;)V

    return-void
.end method
