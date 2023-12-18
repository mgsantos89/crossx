.class public final Lcom/startapps/crossx/viewmodel/SettingsFragmentViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SettingsFragmentViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J@\u0010\u0007\u001a\u00020\u000828\u0010\t\u001a4\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0015\u0012\u0013\u0018\u00010\u000f\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00080\nR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/startapps/crossx/viewmodel/SettingsFragmentViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "userRepository",
        "Lcom/startapps/crossx/rest/repository/UserRepository;",
        "deleteAccount",
        "",
        "listener",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "isSuccess",
        "",
        "message",
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
.field private final userRepository:Lcom/startapps/crossx/rest/repository/UserRepository;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 8
    new-instance v0, Lcom/startapps/crossx/rest/repository/UserRepository;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/rest/repository/UserRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapps/crossx/viewmodel/SettingsFragmentViewModel;->userRepository:Lcom/startapps/crossx/rest/repository/UserRepository;

    return-void
.end method


# virtual methods
.method public final deleteAccount(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/SettingsFragmentViewModel;->userRepository:Lcom/startapps/crossx/rest/repository/UserRepository;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/rest/repository/UserRepository;->deleteAccount(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
