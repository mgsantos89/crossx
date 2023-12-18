.class Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity$1;
.super Ljava/lang/Object;
.source "TimerConfigActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity$1;->this$0:Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity$1;->this$0:Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->checkCrescente:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity$1;->this$0:Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->checkCrescente:Landroid/widget/CheckBox;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity$1;->this$0:Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->checkDecrescente:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method
