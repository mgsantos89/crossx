.class public final Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$clickRemoveCheckIn$1;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;
.source "WorkoutItemFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->clickRemoveCheckIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007H\u0016\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "com/startapps/crossx/view/fragment/WorkoutItemFragment$clickRemoveCheckIn$1",
        "Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;",
        "onSucess",
        "",
        "content",
        "Lorg/json/JSONObject;",
        "headers",
        "",
        "Lcz/msebera/android/httpclient/Header;",
        "(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $checkin:Lcom/startapps/crossx/model/WorkoutHours;

.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;Lcom/startapps/crossx/model/WorkoutHours;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$clickRemoveCheckIn$1;->this$0:Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$clickRemoveCheckIn$1;->$checkin:Lcom/startapps/crossx/model/WorkoutHours;

    .line 410
    check-cast p3, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {p0, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V
    .locals 1

    const-string v0, "headers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V

    .line 413
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$clickRemoveCheckIn$1;->this$0:Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$clickRemoveCheckIn$1;->this$0:Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 414
    invoke-static {}, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->access$getDayTrainingListener$cp()Lcom/startapps/crossx/Interfaces/DayTrainingListener;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/DayTrainingListener;->onRefreshDayTraining()V

    .line 415
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$clickRemoveCheckIn$1;->$checkin:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getMyCheckin()Lcom/startapps/crossx/model/CheckInModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInModel;->getStatus()I

    move-result p1

    sget-object p2, Lcom/startapps/crossx/model/enuns/CheckinStatus;->RESERVED:Lcom/startapps/crossx/model/enuns/CheckinStatus;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/enuns/CheckinStatus;->getStatus()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 416
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$clickRemoveCheckIn$1;->this$0:Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;

    const p2, 0x7f12022a

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(R.string.message_reserve_removed)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->access$showDialogMessage(Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$clickRemoveCheckIn$1;->this$0:Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;

    const p2, 0x7f120226

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(R.string.message_checkin_removed)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->access$showDialogMessage(Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
