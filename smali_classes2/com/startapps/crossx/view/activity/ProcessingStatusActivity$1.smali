.class Lcom/startapps/crossx/view/activity/ProcessingStatusActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ProcessingStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "entered onReceive() ProcessingStatusActivity"

    .line 69
    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/Logger;->d(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "broadcast_payment_polling"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "data_payment"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "dialog populated"

    .line 71
    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Logger;->d(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/DataPayment;

    .line 73
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;

    invoke-virtual {p2}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;

    invoke-static {p1, p2, v0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->show(Lcom/startapps/crossx/model/DataPayment;Landroidx/fragment/app/FragmentManager;Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "finished_time_for_payment"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "time expired"

    .line 75
    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/Logger;->d(Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;

    const-string p2, "Seu pagamento est\u00e1 sendo processado! Voc\u00ea ser\u00e1 notificado quando seu pagamento for confirmado"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 77
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->goToHome()V

    :cond_1
    :goto_0
    return-void
.end method
