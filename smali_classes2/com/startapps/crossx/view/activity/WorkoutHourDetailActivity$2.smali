.class Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$2;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;
.source "WorkoutHourDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->doRemoveCheckIn()V
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

    .line 453
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$2;->this$0:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V
    .locals 0

    .line 457
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V

    .line 458
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$2;->this$0:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->-$$Nest$fgetworkoutHours(Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;)Lcom/startapps/crossx/model/WorkoutHours;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getMyCheckin()Lcom/startapps/crossx/model/CheckInModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInModel;->getStatus()I

    move-result p1

    sget-object p2, Lcom/startapps/crossx/model/enuns/CheckinStatus;->RESERVED:Lcom/startapps/crossx/model/enuns/CheckinStatus;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/enuns/CheckinStatus;->getStatus()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 459
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$2;->this$0:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;

    const p2, 0x7f12022a

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->-$$Nest$mshowDialogMessage(Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$2;->this$0:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;

    const p2, 0x7f120226

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->-$$Nest$mshowDialogMessage(Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
