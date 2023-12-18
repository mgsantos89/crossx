.class public final Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel$cancelCheckIn$1;
.super Ljava/lang/Object;
.source "WorkoutItemViewModel.kt"

# interfaces
.implements Lcom/startapps/crossx/rest/listener/ApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;->cancelCheckIn(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startapps/crossx/rest/listener/ApiListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/startapps/crossx/viewmodel/WorkoutItemViewModel$cancelCheckIn$1",
        "Lcom/startapps/crossx/rest/listener/ApiListener;",
        "",
        "onFailure",
        "",
        "message",
        "",
        "onSuccess",
        "model",
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
.field final synthetic this$0:Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel$cancelCheckIn$1;->this$0:Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;-><init>()V

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;->setSuccess(Z)V

    .line 33
    invoke-virtual {v0, p1}, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;->setMessage(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel$cancelCheckIn$1;->this$0:Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;

    invoke-static {p1}, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;->access$getMCancelCheckIn$p(Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel$cancelCheckIn$1;->onSuccess(Z)V

    return-void
.end method

.method public onSuccess(Z)V
    .locals 1

    .line 25
    new-instance p1, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;

    invoke-direct {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;-><init>()V

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p1, v0}, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;->setSuccess(Z)V

    .line 27
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel$cancelCheckIn$1;->this$0:Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;

    invoke-static {v0}, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;->access$getMCancelCheckIn$p(Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
