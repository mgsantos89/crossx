.class Lcom/startapps/crossx/services/PaymentPollingService$1$1;
.super Lcom/startapps/crossx/rest/callback/SimpleCallback;
.source "PaymentPollingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/services/PaymentPollingService$1;->onTick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
        "Lcom/startapps/crossx/model/DataPayment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/startapps/crossx/services/PaymentPollingService$1;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/services/PaymentPollingService$1;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/startapps/crossx/services/PaymentPollingService$1$1;->this$1:Lcom/startapps/crossx/services/PaymentPollingService$1;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 0

    const-string p1, "faio"

    .line 69
    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/Logger;->i(Ljava/lang/String;)V

    const-string p1, "error getOnlinePayment"

    .line 70
    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Lcom/startapps/crossx/model/DataPayment;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    const-string p2, "entrouuu2"

    .line 51
    invoke-static {p2}, Lcom/startapps/crossx/controller/utils/Logger;->i(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/DataPayment;

    .line 53
    iget-object p2, p0, Lcom/startapps/crossx/services/PaymentPollingService$1$1;->this$1:Lcom/startapps/crossx/services/PaymentPollingService$1;

    iget-object p2, p2, Lcom/startapps/crossx/services/PaymentPollingService$1;->this$0:Lcom/startapps/crossx/services/PaymentPollingService;

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getDataPaymentRemoteId()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/startapps/crossx/services/PaymentPollingService;->-$$Nest$fputremoteId(Lcom/startapps/crossx/services/PaymentPollingService;J)V

    .line 54
    iget-object p2, p0, Lcom/startapps/crossx/services/PaymentPollingService$1$1;->this$1:Lcom/startapps/crossx/services/PaymentPollingService$1;

    iget-object p2, p2, Lcom/startapps/crossx/services/PaymentPollingService$1;->this$0:Lcom/startapps/crossx/services/PaymentPollingService;

    invoke-static {p2}, Lcom/startapps/crossx/services/PaymentPollingService;->-$$Nest$fgetremoteId(Lcom/startapps/crossx/services/PaymentPollingService;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 57
    iget-object p2, p1, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    if-eqz p2, :cond_1

    .line 58
    new-instance p2, Landroid/content/Intent;

    const-string v0, "broadcast_payment_polling"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "data_payment"

    .line 59
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 60
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/startapps/crossx/controller/utils/Preference;->setDataPaymentRemoteId(J)V

    .line 61
    iget-object p1, p0, Lcom/startapps/crossx/services/PaymentPollingService$1$1;->this$1:Lcom/startapps/crossx/services/PaymentPollingService$1;

    iget-object p1, p1, Lcom/startapps/crossx/services/PaymentPollingService$1;->this$0:Lcom/startapps/crossx/services/PaymentPollingService;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    .line 62
    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 63
    iget-object p1, p0, Lcom/startapps/crossx/services/PaymentPollingService$1$1;->this$1:Lcom/startapps/crossx/services/PaymentPollingService$1;

    iget-object p1, p1, Lcom/startapps/crossx/services/PaymentPollingService$1;->this$0:Lcom/startapps/crossx/services/PaymentPollingService;

    invoke-virtual {p1}, Lcom/startapps/crossx/services/PaymentPollingService;->onDestroy()V

    :cond_1
    return-void
.end method
