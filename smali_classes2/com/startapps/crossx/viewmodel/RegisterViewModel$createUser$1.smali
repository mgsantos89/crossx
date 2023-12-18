.class public final Lcom/startapps/crossx/viewmodel/RegisterViewModel$createUser$1;
.super Ljava/lang/Object;
.source "RegisterViewModel.kt"

# interfaces
.implements Lcom/startapps/crossx/rest/listener/ApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/viewmodel/RegisterViewModel;->createUser(Lcom/startapps/crossx/model/UserModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startapps/crossx/rest/listener/ApiListener<",
        "Lcom/startapps/crossx/model/AuthModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/startapps/crossx/viewmodel/RegisterViewModel$createUser$1",
        "Lcom/startapps/crossx/rest/listener/ApiListener;",
        "Lcom/startapps/crossx/model/AuthModel;",
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
.field final synthetic this$0:Lcom/startapps/crossx/viewmodel/RegisterViewModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/viewmodel/RegisterViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/RegisterViewModel$createUser$1;->this$0:Lcom/startapps/crossx/viewmodel/RegisterViewModel;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/RegisterViewModel$createUser$1;->this$0:Lcom/startapps/crossx/viewmodel/RegisterViewModel;

    invoke-static {v0}, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->access$getMRegisterUser$p(Lcom/startapps/crossx/viewmodel/RegisterViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/startapps/crossx/model/AuthModel;)V
    .locals 4

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->clearPreference()V

    .line 48
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/startapps/crossx/model/AuthModel;->getData()Lcom/startapps/crossx/model/DataAuthModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/DataAuthModel;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "token_jwt"

    invoke-virtual {v0, v2, v1}, Lcom/startapps/crossx/controller/utils/Preference;->storeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/startapps/crossx/model/AuthModel;->getData()Lcom/startapps/crossx/model/DataAuthModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/DataAuthModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/controller/utils/Preference;->saveUser(Lcom/startapps/crossx/model/UserModel;)V

    .line 51
    iget-object p1, p0, Lcom/startapps/crossx/viewmodel/RegisterViewModel$createUser$1;->this$0:Lcom/startapps/crossx/viewmodel/RegisterViewModel;

    invoke-static {p1}, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->access$getMRegisterUser$p(Lcom/startapps/crossx/viewmodel/RegisterViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;-><init>(ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/startapps/crossx/model/AuthModel;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/viewmodel/RegisterViewModel$createUser$1;->onSuccess(Lcom/startapps/crossx/model/AuthModel;)V

    return-void
.end method
