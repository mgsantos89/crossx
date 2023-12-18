.class Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$1;
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

    .line 130
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$1;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 134
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$1;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$fgetchronometerState(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    move-result-object p1

    sget-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_STOP:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    if-ne p1, v0, :cond_0

    .line 135
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$1;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mask:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$1;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$mstartCountDelay(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$1;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$fgetchronometerState(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    move-result-object p1

    sget-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_START:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$1;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$fgetchronometerState(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    move-result-object p1

    sget-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_PAUSE:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    if-ne p1, v0, :cond_2

    .line 140
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$1;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$mplayPause(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)V

    :cond_2
    :goto_0
    return-void
.end method
