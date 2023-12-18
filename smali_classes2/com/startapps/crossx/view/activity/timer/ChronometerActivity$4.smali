.class Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$4;
.super Ljava/lang/Object;
.source "ChronometerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->restart()V
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

    .line 532
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$4;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$4;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-static {v0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$fgetmpGo(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 538
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$4;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-static {v0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$mupdateUI(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)V

    .line 539
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$4;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/Chronometer;->start()V

    return-void
.end method
