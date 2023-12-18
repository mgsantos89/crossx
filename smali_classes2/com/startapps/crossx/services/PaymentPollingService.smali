.class public Lcom/startapps/crossx/services/PaymentPollingService;
.super Landroid/app/Service;
.source "PaymentPollingService.java"


# static fields
.field public static final BROADCAST_PAYMENT_POLLING:Ljava/lang/String; = "broadcast_payment_polling"

.field public static final DATA_PAYMENT:Ljava/lang/String; = "data_payment"

.field public static final FINISHED_TIME_FOR_PAYMENT:Ljava/lang/String; = "finished_time_for_payment"


# instance fields
.field private TIME_INTERVAL_MILLIS:I

.field private TIME_TOTAL_IN_MILLIS:I

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private remoteId:J


# direct methods
.method static bridge synthetic -$$Nest$fgetremoteId(Lcom/startapps/crossx/services/PaymentPollingService;)J
    .locals 2

    iget-wide v0, p0, Lcom/startapps/crossx/services/PaymentPollingService;->remoteId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputremoteId(Lcom/startapps/crossx/services/PaymentPollingService;J)V
    .locals 0

    iput-wide p1, p0, Lcom/startapps/crossx/services/PaymentPollingService;->remoteId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const v0, 0xea60

    .line 31
    iput v0, p0, Lcom/startapps/crossx/services/PaymentPollingService;->TIME_TOTAL_IN_MILLIS:I

    const/16 v0, 0x2710

    .line 32
    iput v0, p0, Lcom/startapps/crossx/services/PaymentPollingService;->TIME_INTERVAL_MILLIS:I

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 7

    .line 42
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "entrouuu"

    .line 43
    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Logger;->i(Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/startapps/crossx/services/PaymentPollingService$1;

    iget v1, p0, Lcom/startapps/crossx/services/PaymentPollingService;->TIME_TOTAL_IN_MILLIS:I

    int-to-long v3, v1

    iget v1, p0, Lcom/startapps/crossx/services/PaymentPollingService;->TIME_INTERVAL_MILLIS:I

    int-to-long v5, v1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/startapps/crossx/services/PaymentPollingService$1;-><init>(Lcom/startapps/crossx/services/PaymentPollingService;JJ)V

    iput-object v0, p0, Lcom/startapps/crossx/services/PaymentPollingService;->countDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/startapps/crossx/services/PaymentPollingService;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/services/PaymentPollingService;->stopSelf()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 104
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getDataPaymentRemoteId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapps/crossx/services/PaymentPollingService;->remoteId:J

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tem remote id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/startapps/crossx/services/PaymentPollingService;->remoteId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Logger;->i(Ljava/lang/String;)V

    .line 106
    iget-wide v0, p0, Lcom/startapps/crossx/services/PaymentPollingService;->remoteId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/startapps/crossx/services/PaymentPollingService;->onDestroy()V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/services/PaymentPollingService;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 111
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
