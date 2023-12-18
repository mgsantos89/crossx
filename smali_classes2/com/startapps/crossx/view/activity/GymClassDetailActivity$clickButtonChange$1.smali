.class public final Lcom/startapps/crossx/view/activity/GymClassDetailActivity$clickButtonChange$1;
.super Ljava/lang/Object;
.source "GymClassDetailActivity.kt"

# interfaces
.implements Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$AlertListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/GymClassDetailActivity;->clickButtonChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/startapps/crossx/view/activity/GymClassDetailActivity$clickButtonChange$1",
        "Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$AlertListener;",
        "onCancelButton",
        "",
        "dialog",
        "Landroid/app/AlertDialog;",
        "onConfirmButton",
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
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/GymClassDetailActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/GymClassDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/GymClassDetailActivity$clickButtonChange$1;->this$0:Lcom/startapps/crossx/view/activity/GymClassDetailActivity;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButton(Landroid/app/AlertDialog;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onConfirmButton(Landroid/app/AlertDialog;)V
    .locals 4

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/GymClassDetailActivity$clickButtonChange$1;->this$0:Lcom/startapps/crossx/view/activity/GymClassDetailActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/activity/GymClassDetailActivity;->access$isLoading(Lcom/startapps/crossx/view/activity/GymClassDetailActivity;Z)V

    .line 270
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/GymClassDetailActivity$clickButtonChange$1;->this$0:Lcom/startapps/crossx/view/activity/GymClassDetailActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/GymClassDetailActivity;->access$getMViewModel$p(Lcom/startapps/crossx/view/activity/GymClassDetailActivity;)Lcom/startapps/crossx/viewmodel/GymClassDetailViewModel;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "mViewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/GymClassDetailActivity$clickButtonChange$1;->this$0:Lcom/startapps/crossx/view/activity/GymClassDetailActivity;

    invoke-static {v1}, Lcom/startapps/crossx/view/activity/GymClassDetailActivity;->access$getMGymClassModel$p(Lcom/startapps/crossx/view/activity/GymClassDetailActivity;)Lcom/startapps/crossx/model/GymClassModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/GymClassModel;->getProgram_is_checkin_id()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/GymClassDetailActivity$clickButtonChange$1;->this$0:Lcom/startapps/crossx/view/activity/GymClassDetailActivity;

    invoke-static {v2}, Lcom/startapps/crossx/view/activity/GymClassDetailActivity;->access$getMGymClassModel$p(Lcom/startapps/crossx/view/activity/GymClassDetailActivity;)Lcom/startapps/crossx/model/GymClassModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/model/GymClassModel;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/startapps/crossx/view/activity/GymClassDetailActivity$clickButtonChange$1;->this$0:Lcom/startapps/crossx/view/activity/GymClassDetailActivity;

    invoke-static {v3}, Lcom/startapps/crossx/view/activity/GymClassDetailActivity;->access$getMGymClassModel$p(Lcom/startapps/crossx/view/activity/GymClassDetailActivity;)Lcom/startapps/crossx/model/GymClassModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapps/crossx/model/GymClassModel;->getEnable_reservation()Z

    move-result v3

    xor-int/2addr v0, v3

    invoke-virtual {p1, v1, v2, v0}, Lcom/startapps/crossx/viewmodel/GymClassDetailViewModel;->changeCheckIn(IIZ)V

    return-void
.end method
