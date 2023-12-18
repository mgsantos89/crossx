.class Lcom/startapps/crossx/view/widget/Chronometer$Handle;
.super Landroid/os/Handler;
.source "Chronometer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/widget/Chronometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/widget/Chronometer;


# direct methods
.method private constructor <init>(Lcom/startapps/crossx/view/widget/Chronometer;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/Chronometer$Handle;->this$0:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/startapps/crossx/view/widget/Chronometer;Lcom/startapps/crossx/view/widget/Chronometer$Handle-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/widget/Chronometer$Handle;-><init>(Lcom/startapps/crossx/view/widget/Chronometer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 322
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 324
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/Chronometer$Handle;->this$0:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-static {p1}, Lcom/startapps/crossx/view/widget/Chronometer;->-$$Nest$fgetmRunning(Lcom/startapps/crossx/view/widget/Chronometer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/Chronometer$Handle;->this$0:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/startapps/crossx/view/widget/Chronometer;->-$$Nest$mupdateText(Lcom/startapps/crossx/view/widget/Chronometer;J)V

    .line 328
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/Chronometer$Handle;->this$0:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/widget/Chronometer;->dispatchChronometerTick()V

    const/4 p1, 0x2

    .line 329
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/startapps/crossx/view/widget/Chronometer$Handle;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
