.class Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask$1;
.super Ljava/lang/Object;
.source "Chronometer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask$1;->this$1:Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask$1;->this$1:Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask;

    iget-object v0, v0, Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask;->this$0:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/startapps/crossx/view/widget/Chronometer;->-$$Nest$mupdateText(Lcom/startapps/crossx/view/widget/Chronometer;J)V

    .line 345
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask$1;->this$1:Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask;

    iget-object v0, v0, Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask;->this$0:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/Chronometer;->dispatchChronometerTick()V

    return-void
.end method
