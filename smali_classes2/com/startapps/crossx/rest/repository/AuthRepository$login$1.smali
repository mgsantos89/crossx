.class public final Lcom/startapps/crossx/rest/repository/AuthRepository$login$1;
.super Ljava/lang/Object;
.source "AuthRepository.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/rest/repository/AuthRepository;->login(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/listener/ApiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/startapps/crossx/model/AuthModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001e\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J$\u0010\t\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/startapps/crossx/rest/repository/AuthRepository$login$1",
        "Lretrofit2/Callback;",
        "Lcom/startapps/crossx/model/AuthModel;",
        "onFailure",
        "",
        "call",
        "Lretrofit2/Call;",
        "t",
        "",
        "onResponse",
        "response",
        "Lretrofit2/Response;",
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
.field final synthetic $listener:Lcom/startapps/crossx/rest/listener/ApiListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Lcom/startapps/crossx/model/AuthModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/startapps/crossx/rest/repository/AuthRepository;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/rest/repository/AuthRepository;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Lcom/startapps/crossx/model/AuthModel;",
            ">;",
            "Lcom/startapps/crossx/rest/repository/AuthRepository;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/startapps/crossx/rest/repository/AuthRepository$login$1;->$listener:Lcom/startapps/crossx/rest/listener/ApiListener;

    iput-object p2, p0, Lcom/startapps/crossx/rest/repository/AuthRepository$login$1;->this$0:Lcom/startapps/crossx/rest/repository/AuthRepository;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/startapps/crossx/model/AuthModel;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/startapps/crossx/rest/repository/AuthRepository$login$1;->$listener:Lcom/startapps/crossx/rest/listener/ApiListener;

    iget-object p2, p0, Lcom/startapps/crossx/rest/repository/AuthRepository$login$1;->this$0:Lcom/startapps/crossx/rest/repository/AuthRepository;

    invoke-virtual {p2}, Lcom/startapps/crossx/rest/repository/AuthRepository;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f12019a

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.getString(R.string.error_unexpected)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/startapps/crossx/rest/listener/ApiListener;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/startapps/crossx/model/AuthModel;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/startapps/crossx/model/AuthModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 42
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/AuthModel;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/startapps/crossx/rest/repository/AuthRepository$login$1;->$listener:Lcom/startapps/crossx/rest/listener/ApiListener;

    iget-object v0, p0, Lcom/startapps/crossx/rest/repository/AuthRepository$login$1;->this$0:Lcom/startapps/crossx/rest/repository/AuthRepository;

    .line 44
    invoke-virtual {p1}, Lcom/startapps/crossx/model/AuthModel;->getData()Lcom/startapps/crossx/model/DataAuthModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/DataAuthModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/startapps/crossx/model/UserModel;->ROLE_BOX:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/startapps/crossx/model/AuthModel;->getData()Lcom/startapps/crossx/model/DataAuthModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/DataAuthModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/startapps/crossx/model/UserModel;->ROLE_MASTER:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {p2, p1}, Lcom/startapps/crossx/rest/listener/ApiListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/startapps/crossx/rest/repository/AuthRepository;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f12002e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.act_login_unauthorized)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/startapps/crossx/rest/listener/ApiListener;->onFailure(Ljava/lang/String;)V

    goto :goto_1

    .line 53
    :cond_2
    sget-object p1, Lcom/startapps/crossx/rest/error/CrossXApiError;->Companion:Lcom/startapps/crossx/rest/error/CrossXApiError$Companion;

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/rest/error/CrossXApiError$Companion;->getErrorMessage2(Lretrofit2/Response;)Ljava/lang/String;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lcom/startapps/crossx/rest/repository/AuthRepository$login$1;->$listener:Lcom/startapps/crossx/rest/listener/ApiListener;

    invoke-interface {p2, p1}, Lcom/startapps/crossx/rest/listener/ApiListener;->onFailure(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
