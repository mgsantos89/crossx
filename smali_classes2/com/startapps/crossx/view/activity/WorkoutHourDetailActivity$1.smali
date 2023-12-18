.class Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$1;
.super Ljava/lang/Object;
.source "WorkoutHourDetailActivity.java"

# interfaces
.implements Lcom/startapps/crossx/controller/utils/CRXAlertUtil$AlertCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->showDialogMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirme(Z)V
    .locals 1

    .line 443
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;

    const/16 v0, 0x78

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->setResult(I)V

    .line 444
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->finishActivity(I)V

    .line 445
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->finish()V

    return-void
.end method
