.class public final Lcom/startapps/crossx/rest/repository/GymClassRepository$gymClasses$1;
.super Ljava/lang/Object;
.source "GymClassRepository.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/rest/repository/GymClassRepository;->gymClasses(Lcom/startapps/crossx/rest/listener/ApiListener;Ljava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/startapps/crossx/model/DataListModel<",
        "Lcom/startapps/crossx/model/GymClassModel;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J$\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J0\u0010\n\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00072\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/startapps/crossx/rest/repository/GymClassRepository$gymClasses$1",
        "Lretrofit2/Callback;",
        "Lcom/startapps/crossx/model/DataListModel;",
        "Lcom/startapps/crossx/model/GymClassModel;",
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
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/startapps/crossx/rest/repository/GymClassRepository;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/rest/repository/GymClassRepository;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;>;",
            "Lcom/startapps/crossx/rest/repository/GymClassRepository;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/startapps/crossx/rest/repository/GymClassRepository$gymClasses$1;->$listener:Lcom/startapps/crossx/rest/listener/ApiListener;

    iput-object p2, p0, Lcom/startapps/crossx/rest/repository/GymClassRepository$gymClasses$1;->this$0:Lcom/startapps/crossx/rest/repository/GymClassRepository;

    .line 22
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
            "Lcom/startapps/crossx/model/DataListModel<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/startapps/crossx/rest/repository/GymClassRepository$gymClasses$1;->$listener:Lcom/startapps/crossx/rest/listener/ApiListener;

    iget-object p2, p0, Lcom/startapps/crossx/rest/repository/GymClassRepository$gymClasses$1;->this$0:Lcom/startapps/crossx/rest/repository/GymClassRepository;

    invoke-virtual {p2}, Lcom/startapps/crossx/rest/repository/GymClassRepository;->getContext()Landroid/content/Context;

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/startapps/crossx/model/DataListModel<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/startapps/crossx/model/DataListModel<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/DataListModel;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/startapps/crossx/rest/repository/GymClassRepository$gymClasses$1;->$listener:Lcom/startapps/crossx/rest/listener/ApiListener;

    .line 30
    invoke-virtual {p1}, Lcom/startapps/crossx/model/DataListModel;->getData()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/startapps/crossx/rest/listener/ApiListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 33
    :cond_0
    sget-object p1, Lcom/startapps/crossx/rest/error/CrossXApiError;->Companion:Lcom/startapps/crossx/rest/error/CrossXApiError$Companion;

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/rest/error/CrossXApiError$Companion;->getErrorMessage2(Lretrofit2/Response;)Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/startapps/crossx/rest/repository/GymClassRepository$gymClasses$1;->$listener:Lcom/startapps/crossx/rest/listener/ApiListener;

    invoke-interface {p2, p1}, Lcom/startapps/crossx/rest/listener/ApiListener;->onFailure(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
