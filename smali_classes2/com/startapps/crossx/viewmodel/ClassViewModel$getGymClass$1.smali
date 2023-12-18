.class public final Lcom/startapps/crossx/viewmodel/ClassViewModel$getGymClass$1;
.super Ljava/lang/Object;
.source "ClassViewModel.kt"

# interfaces
.implements Lcom/startapps/crossx/rest/listener/ApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/viewmodel/ClassViewModel;->getGymClass(Ljava/lang/String;Ljava/lang/Integer;)V
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
        "Lcom/startapps/crossx/model/GymClassModel;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u0001J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J \u0010\t\u001a\u00020\u00062\u0016\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u0004H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/startapps/crossx/viewmodel/ClassViewModel$getGymClass$1",
        "Lcom/startapps/crossx/rest/listener/ApiListener;",
        "Ljava/util/ArrayList;",
        "Lcom/startapps/crossx/model/GymClassModel;",
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
.field final synthetic this$0:Lcom/startapps/crossx/viewmodel/ClassViewModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/viewmodel/ClassViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/ClassViewModel$getGymClass$1;->this$0:Lcom/startapps/crossx/viewmodel/ClassViewModel;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;-><init>()V

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->setSuccess(Z)V

    .line 30
    invoke-virtual {v0, p1}, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->setMessage(Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/startapps/crossx/viewmodel/ClassViewModel$getGymClass$1;->this$0:Lcom/startapps/crossx/viewmodel/ClassViewModel;

    invoke-static {p1}, Lcom/startapps/crossx/viewmodel/ClassViewModel;->access$getMGymClassList$p(Lcom/startapps/crossx/viewmodel/ClassViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/viewmodel/ClassViewModel$getGymClass$1;->onSuccess(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    .line 23
    invoke-static/range {v1 .. v6}, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->setDataGymClass$default(Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;Ljava/util/ArrayList;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 24
    iget-object p1, p0, Lcom/startapps/crossx/viewmodel/ClassViewModel$getGymClass$1;->this$0:Lcom/startapps/crossx/viewmodel/ClassViewModel;

    invoke-static {p1}, Lcom/startapps/crossx/viewmodel/ClassViewModel;->access$getMGymClassList$p(Lcom/startapps/crossx/viewmodel/ClassViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
