.class public final Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$registerObserveGymClass$1$1;
.super Ljava/lang/Object;
.source "WorkoutItemFragment.kt"

# interfaces
.implements Lcom/startapps/crossx/controller/utils/AlertHelper$Companion$AlertListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->registerObserveGymClass$lambda-4(Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;)V
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
        "com/startapps/crossx/view/fragment/WorkoutItemFragment$registerObserveGymClass$1$1",
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
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$registerObserveGymClass$1$1;->this$0:Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;

    .line 369
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
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$registerObserveGymClass$1$1;->this$0:Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;

    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->access$getMViewModel$p(Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;)Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "mViewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$registerObserveGymClass$1$1;->this$0:Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;

    invoke-static {v0}, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->access$getWorkoutDayModel$p(Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;)Lcom/startapps/crossx/model/WorkoutModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutModel;->getMyCheckin()Lcom/startapps/crossx/model/CheckInModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/startapps/crossx/model/CheckInModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;->cancelCheckIn(I)V

    return-void
.end method
