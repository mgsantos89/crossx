.class Lcom/startapps/crossx/services/PaymentPollingService$1;
.super Landroid/os/CountDownTimer;
.source "PaymentPollingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/services/PaymentPollingService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/services/PaymentPollingService;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/services/PaymentPollingService;JJ)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/startapps/crossx/services/PaymentPollingService$1;->this$0:Lcom/startapps/crossx/services/PaymentPollingService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    const-string/jumbo v0, "terminou"

    .line 77
    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Logger;->i(Ljava/lang/String;)V

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcast_payment_polling"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "finished_time_for_payment"

    const/4 v2, 0x1

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/startapps/crossx/services/PaymentPollingService$1;->this$0:Lcom/startapps/crossx/services/PaymentPollingService;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    .line 81
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 82
    iget-object v0, p0, Lcom/startapps/crossx/services/PaymentPollingService$1;->this$0:Lcom/startapps/crossx/services/PaymentPollingService;

    invoke-virtual {v0}, Lcom/startapps/crossx/services/PaymentPollingService;->onDestroy()V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    const-string p1, "entrouuu1"

    .line 47
    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/Logger;->i(Ljava/lang/String;)V

    .line 48
    new-instance p1, Lcom/startapps/crossx/rest/clients/PaymentClient;

    invoke-direct {p1}, Lcom/startapps/crossx/rest/clients/PaymentClient;-><init>()V

    iget-object p2, p0, Lcom/startapps/crossx/services/PaymentPollingService$1;->this$0:Lcom/startapps/crossx/services/PaymentPollingService;

    invoke-static {p2}, Lcom/startapps/crossx/services/PaymentPollingService;->-$$Nest$fgetremoteId(Lcom/startapps/crossx/services/PaymentPollingService;)J

    move-result-wide v0

    new-instance p2, Lcom/startapps/crossx/services/PaymentPollingService$1$1;

    invoke-direct {p2, p0}, Lcom/startapps/crossx/services/PaymentPollingService$1$1;-><init>(Lcom/startapps/crossx/services/PaymentPollingService$1;)V

    invoke-virtual {p1, v0, v1, p2}, Lcom/startapps/crossx/rest/clients/PaymentClient;->getOnlinePayment(JLcom/startapps/crossx/rest/callback/SimpleCallback;)V

    return-void
.end method
