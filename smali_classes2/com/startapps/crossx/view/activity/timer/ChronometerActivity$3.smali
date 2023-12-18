.class Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;
.super Ljava/lang/Object;
.source "ChronometerActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->startCountDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 346
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    sget-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->COUNTDOW_FINISH:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$fputchronometerState(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;)V

    .line 348
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3$1;-><init>(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3

    .line 361
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$fgetdelay(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$fputdelay(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;I)V

    .line 362
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3$2;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3$2;-><init>(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$fgetdelay(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 370
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$fgetmpBeep(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 340
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textDelayCount:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-static {v0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$fgetdelay(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
