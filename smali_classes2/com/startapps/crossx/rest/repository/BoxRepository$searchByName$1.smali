.class public final Lcom/startapps/crossx/rest/repository/BoxRepository$searchByName$1;
.super Ljava/lang/Object;
.source "BoxRepository.kt"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/rest/repository/BoxRepository;->searchByName(Ljava/lang/String;Lcom/startapps/crossx/rest/listener/ApiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback<",
        "Lcom/startapps/crossx/model/DataListModel<",
        "Lcom/startapps/crossx/model/BoxModel;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J$\u0010\u0008\u001a\u00020\u00052\u0012\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/startapps/crossx/rest/repository/BoxRepository$searchByName$1",
        "Lretrofit/Callback;",
        "Lcom/startapps/crossx/model/DataListModel;",
        "Lcom/startapps/crossx/model/BoxModel;",
        "onFailure",
        "",
        "t",
        "",
        "onResponse",
        "response",
        "Lretrofit/Response;",
        "retrofit",
        "Lretrofit/Retrofit;",
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
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/BoxModel;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/startapps/crossx/rest/repository/BoxRepository;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/rest/repository/BoxRepository;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/BoxModel;",
            ">;>;",
            "Lcom/startapps/crossx/rest/repository/BoxRepository;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/startapps/crossx/rest/repository/BoxRepository$searchByName$1;->$listener:Lcom/startapps/crossx/rest/listener/ApiListener;

    iput-object p2, p0, Lcom/startapps/crossx/rest/repository/BoxRepository$searchByName$1;->this$0:Lcom/startapps/crossx/rest/repository/BoxRepository;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/startapps/crossx/rest/repository/BoxRepository$searchByName$1;->$listener:Lcom/startapps/crossx/rest/listener/ApiListener;

    iget-object v0, p0, Lcom/startapps/crossx/rest/repository/BoxRepository$searchByName$1;->this$0:Lcom/startapps/crossx/rest/repository/BoxRepository;

    invoke-virtual {v0}, Lcom/startapps/crossx/rest/repository/BoxRepository;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12019a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.error_unexpected)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/startapps/crossx/rest/listener/ApiListener;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Lcom/startapps/crossx/model/DataListModel<",
            "Lcom/startapps/crossx/model/BoxModel;",
            ">;>;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retrofit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/DataListModel;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/startapps/crossx/rest/repository/BoxRepository$searchByName$1;->$listener:Lcom/startapps/crossx/rest/listener/ApiListener;

    .line 55
    invoke-virtual {p1}, Lcom/startapps/crossx/model/DataListModel;->getData()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/startapps/crossx/rest/listener/ApiListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_0
    sget-object v0, Lcom/startapps/crossx/rest/error/CrossXApiError;->Companion:Lcom/startapps/crossx/rest/error/CrossXApiError$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/startapps/crossx/rest/error/CrossXApiError$Companion;->getOldErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object p2, p0, Lcom/startapps/crossx/rest/repository/BoxRepository$searchByName$1;->$listener:Lcom/startapps/crossx/rest/listener/ApiListener;

    invoke-interface {p2, p1}, Lcom/startapps/crossx/rest/listener/ApiListener;->onFailure(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
