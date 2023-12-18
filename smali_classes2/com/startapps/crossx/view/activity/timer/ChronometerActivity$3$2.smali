.class Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3$2;
.super Ljava/lang/Object;
.source "ChronometerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;->onAnimationRepeat(Landroid/view/animation/Animation;)V
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

    .line 362
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3$2;->this$1:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3$2;->this$1:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textDelayCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3$2;->this$1:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;

    iget-object v1, v1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-static {v1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$fgetdelay(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GO"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3$2;->this$1:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;

    iget-object v1, v1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;->this$0:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-static {v1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->-$$Nest$fgetdelay(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
