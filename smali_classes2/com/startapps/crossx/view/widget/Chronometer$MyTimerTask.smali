.class Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask;
.super Ljava/util/TimerTask;
.source "Chronometer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/widget/Chronometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/widget/Chronometer;


# direct methods
.method private constructor <init>(Lcom/startapps/crossx/view/widget/Chronometer;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask;->this$0:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/startapps/crossx/view/widget/Chronometer;Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask;-><init>(Lcom/startapps/crossx/view/widget/Chronometer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask;->this$0:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-static {v0}, Lcom/startapps/crossx/view/widget/Chronometer;->-$$Nest$fgetmRunning(Lcom/startapps/crossx/view/widget/Chronometer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask$1;-><init>(Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
