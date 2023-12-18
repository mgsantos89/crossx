.class Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$3;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;
.source "WorkoutHourDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->doCheckIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$3;->this$0:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V
    .locals 1

    .line 477
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V

    .line 479
    new-instance p2, Lcom/startapps/crossx/model/CheckInModel;

    invoke-direct {p2, p1}, Lcom/startapps/crossx/model/CheckInModel;-><init>(Lorg/json/JSONObject;)V

    .line 481
    invoke-virtual {p2}, Lcom/startapps/crossx/model/CheckInModel;->isGympass()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/CheckInModel;->getStatus()I

    move-result p1

    sget-object v0, Lcom/startapps/crossx/model/enuns/CheckinStatus;->RESERVED:Lcom/startapps/crossx/model/enuns/CheckinStatus;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/CheckinStatus;->getStatus()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 482
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$3;->this$0:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;

    const p2, 0x7f120229

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->-$$Nest$mshowDialogMessage(Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {p2}, Lcom/startapps/crossx/model/CheckInModel;->isGympass()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/startapps/crossx/model/CheckInModel;->getStatus()I

    move-result p1

    sget-object p2, Lcom/startapps/crossx/model/enuns/CheckinStatus;->RESERVED:Lcom/startapps/crossx/model/enuns/CheckinStatus;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/enuns/CheckinStatus;->getStatus()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 485
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$3;->this$0:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;

    const p2, 0x7f12022b

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->-$$Nest$mshowDialogMessage(Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$3;->this$0:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;

    const p2, 0x7f120227

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->-$$Nest$mshowDialogMessage(Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
