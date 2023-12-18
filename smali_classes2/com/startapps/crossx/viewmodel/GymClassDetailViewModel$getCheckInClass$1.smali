.class public final Lcom/startapps/crossx/viewmodel/GymClassDetailViewModel$getCheckInClass$1;
.super Ljava/lang/Object;
.source "GymClassDetailViewModel.kt"

# interfaces
.implements Lcom/startapps/crossx/rest/listener/ApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/viewmodel/GymClassDetailViewModel;->getCheckInClass(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startapps/crossx/rest/listener/ApiListener<",
        "Ljava/util/ArrayList<",
        "Lcom/startapps/crossx/model/CheckInModel;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u0001J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J \u0010\t\u001a\u00020\u00062\u0016\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u0004H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/startapps/crossx/viewmodel/GymClassDetailViewModel$getCheckInClass$1",
        "Lcom/startapps/crossx/rest/listener/ApiListener;",
        "Ljava/util/ArrayList;",
        "Lcom/startapps/crossx/model/CheckInModel;",
        "Lkotlin/collections/ArrayList;",
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
.field final synthetic this$0:Lcom/startapps/crossx/viewmodel/GymClassDetailViewModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/viewmodel/GymClassDetailViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/GymClassDetailViewModel$getCheckInClass$1;->this$0:Lcom/startapps/crossx/viewmodel/GymClassDetailViewModel;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/startapps/crossx/rest/listener/ValidationApiWithArrayListModelListener;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/listener/ValidationApiWithArrayListModelListener;-><init>()V

    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/rest/listener/ValidationApiWithArrayListModelListener;->setSuccess(Z)V

    .line 36
    invoke-virtual {v0, p1}, Lcom/startapps/crossx/rest/listener/ValidationApiWithArrayListModelListener;->setMessage(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/startapps/crossx/viewmodel/GymClassDetailViewModel$getCheckInClass$1;->this$0:Lcom/startapps/crossx/viewmodel/GymClassDetailViewModel;

    invoke-static {p1}, Lcom/startapps/crossx/viewmodel/GymClassDetailViewModel;->access$getMCheckInList$p(Lcom/startapps/crossx/viewmodel/GymClassDetailViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/viewmodel/GymClassDetailViewModel$getCheckInClass$1;->onSuccess(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/CheckInModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/startapps/crossx/rest/listener/ValidationApiWithArrayListModelListener;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/listener/ValidationApiWithArrayListModelListener;-><init>()V

    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/rest/listener/ValidationApiWithArrayListModelListener;->setSuccess(Z)V

    .line 29
    invoke-virtual {v0, p1}, Lcom/startapps/crossx/rest/listener/ValidationApiWithArrayListModelListener;->setDataList(Ljava/util/ArrayList;)V

    .line 30
    iget-object p1, p0, Lcom/startapps/crossx/viewmodel/GymClassDetailViewModel$getCheckInClass$1;->this$0:Lcom/startapps/crossx/viewmodel/GymClassDetailViewModel;

    invoke-static {p1}, Lcom/startapps/crossx/viewmodel/GymClassDetailViewModel;->access$getMCheckInList$p(Lcom/startapps/crossx/viewmodel/GymClassDetailViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
