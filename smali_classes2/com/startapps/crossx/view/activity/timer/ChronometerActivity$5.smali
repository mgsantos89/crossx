.class Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$5;
.super Ljava/lang/Object;
.source "ChronometerActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;
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

    .line 599
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$5;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 605
    check-cast p2, Lcom/startapps/crossx/controller/service/ChronometerService$INotificationListenerWrapper;

    .line 606
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$5;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-virtual {p2}, Lcom/startapps/crossx/controller/service/ChronometerService$INotificationListenerWrapper;->getService()Lcom/startapps/crossx/controller/service/ChronometerService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$fputmService(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;Lcom/startapps/crossx/controller/service/ChronometerService;)V

    .line 607
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$5;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$fgetmService(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)Lcom/startapps/crossx/controller/service/ChronometerService;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$5;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/controller/service/ChronometerService;->setChronometerServiceListener(Lcom/startapps/crossx/Interfaces/OnChronometerServiceListener;)V

    .line 608
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$5;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mBound:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 613
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$5;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mBound:Z

    return-void
.end method
