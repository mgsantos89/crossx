.class Lcom/startapps/crossx/controller/utils/CountTimeHelper$1;
.super Landroid/os/CountDownTimer;
.source "CountTimeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/controller/utils/CountTimeHelper;->startCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/controller/utils/CountTimeHelper;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/controller/utils/CountTimeHelper;JJ)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/CountTimeHelper$1;->this$0:Lcom/startapps/crossx/controller/utils/CountTimeHelper;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/CountTimeHelper$1;->this$0:Lcom/startapps/crossx/controller/utils/CountTimeHelper;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/CountTimeHelper;->-$$Nest$fgetcountFinished(Lcom/startapps/crossx/controller/utils/CountTimeHelper;)Lcom/startapps/crossx/controller/utils/CountTimeHelper$CountFinished;

    move-result-object v0

    invoke-interface {v0}, Lcom/startapps/crossx/controller/utils/CountTimeHelper$CountFinished;->countTimeout()V

    .line 37
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/CountTimeHelper$1;->this$0:Lcom/startapps/crossx/controller/utils/CountTimeHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/CountTimeHelper;->-$$Nest$fputcountTimer(Lcom/startapps/crossx/controller/utils/CountTimeHelper;Landroid/os/CountDownTimer;)V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CountTimeHelper] time remaining: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Logger;->d(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/CountTimeHelper$1;->this$0:Lcom/startapps/crossx/controller/utils/CountTimeHelper;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Lcom/startapps/crossx/controller/utils/CountTimeHelper;->-$$Nest$fputtime(Lcom/startapps/crossx/controller/utils/CountTimeHelper;J)V

    return-void
.end method
