.class Lcom/startapps/crossx/view/activity/RegisterCardActivity$1;
.super Ljava/lang/Object;
.source "RegisterCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/RegisterCardActivity;->showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/RegisterCardActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/RegisterCardActivity;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity$1;->this$0:Lcom/startapps/crossx/view/activity/RegisterCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 198
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p1, p2, :cond_1

    .line 200
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity$1;->this$0:Lcom/startapps/crossx/view/activity/RegisterCardActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->-$$Nest$fgetpresenter(Lcom/startapps/crossx/view/activity/RegisterCardActivity;)Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$Presenter;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity$1;->this$0:Lcom/startapps/crossx/view/activity/RegisterCardActivity;

    invoke-static {p2}, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->-$$Nest$fgetcreditCard(Lcom/startapps/crossx/view/activity/RegisterCardActivity;)Lcom/startapps/crossx/model/CreditCard;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$Presenter;->registerCard(Lcom/startapps/crossx/model/CreditCard;)V

    :cond_1
    :goto_0
    return-void
.end method
