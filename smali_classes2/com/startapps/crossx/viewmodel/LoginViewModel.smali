.class public final Lcom/startapps/crossx/viewmodel/LoginViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "LoginViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J,\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0015R \u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/startapps/crossx/viewmodel/LoginViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "login",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;",
        "getLogin",
        "()Landroidx/lifecycle/LiveData;",
        "setLogin",
        "(Landroidx/lifecycle/LiveData;)V",
        "mAuthRepository",
        "Lcom/startapps/crossx/rest/repository/AuthRepository;",
        "mLogin",
        "Landroidx/lifecycle/MutableLiveData;",
        "doLogin",
        "",
        "type",
        "",
        "email",
        "",
        "password",
        "facebookID",
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
.field private login:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthRepository:Lcom/startapps/crossx/rest/repository/AuthRepository;

.field private final mLogin:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 16
    new-instance v0, Lcom/startapps/crossx/rest/repository/AuthRepository;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/rest/repository/AuthRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapps/crossx/viewmodel/LoginViewModel;->mAuthRepository:Lcom/startapps/crossx/rest/repository/AuthRepository;

    .line 17
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/LoginViewModel;->mLogin:Landroidx/lifecycle/MutableLiveData;

    .line 18
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/LoginViewModel;->login:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getMLogin$p(Lcom/startapps/crossx/viewmodel/LoginViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/startapps/crossx/viewmodel/LoginViewModel;->mLogin:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public final doLogin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 21
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/LoginViewModel;->mAuthRepository:Lcom/startapps/crossx/rest/repository/AuthRepository;

    new-instance v1, Lcom/startapps/crossx/viewmodel/LoginViewModel$doLogin$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/viewmodel/LoginViewModel$doLogin$1;-><init>(Lcom/startapps/crossx/viewmodel/LoginViewModel;)V

    move-object v5, v1

    check-cast v5, Lcom/startapps/crossx/rest/listener/ApiListener;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/startapps/crossx/rest/repository/AuthRepository;->login(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/listener/ApiListener;)V

    return-void
.end method

.method public final getLogin()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/LoginViewModel;->login:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final setLogin(Landroidx/lifecycle/LiveData;)V
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

    .line 18
    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/LoginViewModel;->login:Landroidx/lifecycle/LiveData;

    return-void
.end method
