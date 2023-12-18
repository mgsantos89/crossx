.class public final Lcom/startapps/crossx/viewmodel/RegisterViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "RegisterViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001dR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R \u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011\"\u0004\u0008\u0016\u0010\u0013\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/startapps/crossx/viewmodel/RegisterViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "mAuthRepository",
        "Lcom/startapps/crossx/rest/repository/AuthRepository;",
        "mBoxRepository",
        "Lcom/startapps/crossx/rest/repository/BoxRepository;",
        "mRegisterUser",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;",
        "mSearchBox",
        "Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;",
        "registerUser",
        "Landroidx/lifecycle/LiveData;",
        "getRegisterUser",
        "()Landroidx/lifecycle/LiveData;",
        "setRegisterUser",
        "(Landroidx/lifecycle/LiveData;)V",
        "searchBox",
        "getSearchBox",
        "setSearchBox",
        "createUser",
        "",
        "userModel",
        "Lcom/startapps/crossx/model/UserModel;",
        "searchBoxByName",
        "name",
        "",
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
.field private final mAuthRepository:Lcom/startapps/crossx/rest/repository/AuthRepository;

.field private final mBoxRepository:Lcom/startapps/crossx/rest/repository/BoxRepository;

.field private final mRegisterUser:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSearchBox:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;",
            ">;"
        }
    .end annotation
.end field

.field private registerUser:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;",
            ">;"
        }
    .end annotation
.end field

.field private searchBox:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 19
    new-instance v0, Lcom/startapps/crossx/rest/repository/BoxRepository;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/rest/repository/BoxRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->mBoxRepository:Lcom/startapps/crossx/rest/repository/BoxRepository;

    .line 20
    new-instance v0, Lcom/startapps/crossx/rest/repository/AuthRepository;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/rest/repository/AuthRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->mAuthRepository:Lcom/startapps/crossx/rest/repository/AuthRepository;

    .line 21
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->mSearchBox:Landroidx/lifecycle/MutableLiveData;

    .line 22
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->mRegisterUser:Landroidx/lifecycle/MutableLiveData;

    .line 23
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->searchBox:Landroidx/lifecycle/LiveData;

    .line 24
    check-cast v0, Landroidx/lifecycle/LiveData;

    iput-object v0, p0, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->registerUser:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getMRegisterUser$p(Lcom/startapps/crossx/viewmodel/RegisterViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->mRegisterUser:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$getMSearchBox$p(Lcom/startapps/crossx/viewmodel/RegisterViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->mSearchBox:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public final createUser(Lcom/startapps/crossx/model/UserModel;)V
    .locals 2

    const-string/jumbo v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->mAuthRepository:Lcom/startapps/crossx/rest/repository/AuthRepository;

    new-instance v1, Lcom/startapps/crossx/viewmodel/RegisterViewModel$createUser$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/viewmodel/RegisterViewModel$createUser$1;-><init>(Lcom/startapps/crossx/viewmodel/RegisterViewModel;)V

    check-cast v1, Lcom/startapps/crossx/rest/listener/ApiListener;

    invoke-virtual {v0, p1, v1}, Lcom/startapps/crossx/rest/repository/AuthRepository;->register(Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/rest/listener/ApiListener;)V

    return-void
.end method

.method public final getRegisterUser()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->registerUser:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getSearchBox()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->searchBox:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final searchBoxByName(Ljava/lang/String;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->mBoxRepository:Lcom/startapps/crossx/rest/repository/BoxRepository;

    new-instance v1, Lcom/startapps/crossx/viewmodel/RegisterViewModel$searchBoxByName$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/viewmodel/RegisterViewModel$searchBoxByName$1;-><init>(Lcom/startapps/crossx/viewmodel/RegisterViewModel;)V

    check-cast v1, Lcom/startapps/crossx/rest/listener/ApiListener;

    invoke-virtual {v0, p1, v1}, Lcom/startapps/crossx/rest/repository/BoxRepository;->searchByName(Ljava/lang/String;Lcom/startapps/crossx/rest/listener/ApiListener;)V

    return-void
.end method

.method public final setRegisterUser(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->registerUser:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public final setSearchBox(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->searchBox:Landroidx/lifecycle/LiveData;

    return-void
.end method
