.class public final Lcom/startapps/crossx/viewmodel/ProfileViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "ProfileViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\nR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R&\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014\u00a8\u0006!"
    }
    d2 = {
        "Lcom/startapps/crossx/viewmodel/ProfileViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "mBoxRepository",
        "Lcom/startapps/crossx/rest/repository/BoxRepository;",
        "mMutableLiveDataUser",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;",
        "Lcom/startapps/crossx/model/UserModel;",
        "mSearchBox",
        "Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;",
        "mUserRepository",
        "Lcom/startapps/crossx/rest/repository/UserRepository;",
        "searchBox",
        "Landroidx/lifecycle/LiveData;",
        "getSearchBox",
        "()Landroidx/lifecycle/LiveData;",
        "setSearchBox",
        "(Landroidx/lifecycle/LiveData;)V",
        "userLiveData",
        "getUserLiveData",
        "setUserLiveData",
        "searchBoxByName",
        "",
        "name",
        "",
        "updateImageUser",
        "avatar",
        "Ljava/io/File;",
        "updateUser",
        "userModel",
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
.field private final mBoxRepository:Lcom/startapps/crossx/rest/repository/BoxRepository;

.field private final mMutableLiveDataUser:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;>;"
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

.field private final mUserRepository:Lcom/startapps/crossx/rest/repository/UserRepository;

.field private searchBox:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;",
            ">;"
        }
    .end annotation
.end field

.field private userLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 18
    new-instance v0, Lcom/startapps/crossx/rest/repository/BoxRepository;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/rest/repository/BoxRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapps/crossx/viewmodel/ProfileViewModel;->mBoxRepository:Lcom/startapps/crossx/rest/repository/BoxRepository;

    .line 19
    new-instance v0, Lcom/startapps/crossx/rest/repository/UserRepository;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/rest/repository/UserRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapps/crossx/viewmodel/ProfileViewModel;->mUserRepository:Lcom/startapps/crossx/rest/repository/UserRepository;

    .line 20
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/ProfileViewModel;->mSearchBox:Landroidx/lifecycle/MutableLiveData;

    .line 21
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/viewmodel/ProfileViewModel;->mMutableLiveDataUser:Landroidx/lifecycle/MutableLiveData;

    .line 22
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/ProfileViewModel;->searchBox:Landroidx/lifecycle/LiveData;

    .line 23
    check-cast v0, Landroidx/lifecycle/LiveData;

    iput-object v0, p0, Lcom/startapps/crossx/viewmodel/ProfileViewModel;->userLiveData:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getMMutableLiveDataUser$p(Lcom/startapps/crossx/viewmodel/ProfileViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/startapps/crossx/viewmodel/ProfileViewModel;->mMutableLiveDataUser:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$getMSearchBox$p(Lcom/startapps/crossx/viewmodel/ProfileViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/startapps/crossx/viewmodel/ProfileViewModel;->mSearchBox:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
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

    .line 22
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/ProfileViewModel;->searchBox:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getUserLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/ProfileViewModel;->userLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final searchBoxByName(Ljava/lang/String;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/ProfileViewModel;->mBoxRepository:Lcom/startapps/crossx/rest/repository/BoxRepository;

    new-instance v1, Lcom/startapps/crossx/viewmodel/ProfileViewModel$searchBoxByName$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/viewmodel/ProfileViewModel$searchBoxByName$1;-><init>(Lcom/startapps/crossx/viewmodel/ProfileViewModel;)V

    check-cast v1, Lcom/startapps/crossx/rest/listener/ApiListener;

    invoke-virtual {v0, p1, v1}, Lcom/startapps/crossx/rest/repository/BoxRepository;->searchByName(Ljava/lang/String;Lcom/startapps/crossx/rest/listener/ApiListener;)V

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

    .line 22
    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/ProfileViewModel;->searchBox:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public final setUserLiveData(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/ProfileViewModel;->userLiveData:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public final updateImageUser(Ljava/io/File;)V
    .locals 2

    const-string v0, "avatar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/ProfileViewModel;->mUserRepository:Lcom/startapps/crossx/rest/repository/UserRepository;

    new-instance v1, Lcom/startapps/crossx/viewmodel/ProfileViewModel$updateImageUser$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/viewmodel/ProfileViewModel$updateImageUser$1;-><init>(Lcom/startapps/crossx/viewmodel/ProfileViewModel;)V

    check-cast v1, Lcom/startapps/crossx/rest/listener/ApiListener;

    invoke-virtual {v0, v1, p1}, Lcom/startapps/crossx/rest/repository/UserRepository;->updateImageUser(Lcom/startapps/crossx/rest/listener/ApiListener;Ljava/io/File;)V

    return-void
.end method

.method public final updateUser(Lcom/startapps/crossx/model/UserModel;)V
    .locals 2

    const-string/jumbo v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/ProfileViewModel;->mUserRepository:Lcom/startapps/crossx/rest/repository/UserRepository;

    new-instance v1, Lcom/startapps/crossx/viewmodel/ProfileViewModel$updateUser$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/viewmodel/ProfileViewModel$updateUser$1;-><init>(Lcom/startapps/crossx/viewmodel/ProfileViewModel;)V

    check-cast v1, Lcom/startapps/crossx/rest/listener/ApiListener;

    invoke-virtual {v0, v1, p1}, Lcom/startapps/crossx/rest/repository/UserRepository;->updateUser(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/model/UserModel;)V

    return-void
.end method
