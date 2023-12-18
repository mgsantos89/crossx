.class Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$2;
.super Ljava/lang/Object;
.source "ChronometerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 145
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$2;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 148
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$2;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$fputround(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;I)V

    .line 150
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$2;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    sget-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_STOP:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$fputchronometerState(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;)V

    .line 151
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$2;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$mgetInitialTime(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$fputtime(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;J)V

    .line 152
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$2;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getTimerDelayInit()I

    move-result v0

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$fputdelay(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;I)V

    .line 154
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$2;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->buttonReset:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 155
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$2;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->imageStart:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$2;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$msetupUI(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)V

    return-void
.end method
