.class public final Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "MissPasswordViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R \u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "forgotPassword",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;",
        "getForgotPassword",
        "()Landroidx/lifecycle/LiveData;",
        "setForgotPassword",
        "(Landroidx/lifecycle/LiveData;)V",
        "mAuthRepository",
        "Lcom/startapps/crossx/rest/repository/AuthRepository;",
        "mForgotPassword",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "email",
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
.field private forgotPassword:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthRepository:Lcom/startapps/crossx/rest/repository/AuthRepository;

.field private final mForgotPassword:Landroidx/lifecycle/MutableLiveData;
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

    .line 11
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 13
    new-instance v0, Lcom/startapps/crossx/rest/repository/AuthRepository;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/rest/repository/AuthRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;->mAuthRepository:Lcom/startapps/crossx/rest/repository/AuthRepository;

    .line 14
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;->mForgotPassword:Landroidx/lifecycle/MutableLiveData;

    .line 15
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;->forgotPassword:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getMForgotPassword$p(Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;->mForgotPassword:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public final forgotPassword(Ljava/lang/String;)V
    .locals 2

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;->mAuthRepository:Lcom/startapps/crossx/rest/repository/AuthRepository;

    new-instance v1, Lcom/startapps/crossx/viewmodel/MissPasswordViewModel$forgotPassword$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/viewmodel/MissPasswordViewModel$forgotPassword$1;-><init>(Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;)V

    check-cast v1, Lcom/startapps/crossx/rest/listener/ApiListener;

    invoke-virtual {v0, p1, v1}, Lcom/startapps/crossx/rest/repository/AuthRepository;->forgotPassword(Ljava/lang/String;Lcom/startapps/crossx/rest/listener/ApiListener;)V

    return-void
.end method

.method public final getForgotPassword()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;->forgotPassword:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final setForgotPassword(Landroidx/lifecycle/LiveData;)V
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

    .line 15
    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;->forgotPassword:Landroidx/lifecycle/LiveData;

    return-void
.end method
