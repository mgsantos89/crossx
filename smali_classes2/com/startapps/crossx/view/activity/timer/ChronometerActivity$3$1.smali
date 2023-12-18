.class Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3$1;
.super Ljava/lang/Object;
.source "ChronometerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3$1;->this$1:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3$1;->this$1:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->delayView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3$1;->this$1:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-static {v0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$mplayPause(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)V

    .line 353
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3$1;->this$1:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-static {v0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$fgetmpGo(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
