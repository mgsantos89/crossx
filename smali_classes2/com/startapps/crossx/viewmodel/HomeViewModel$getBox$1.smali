.class public final Lcom/startapps/crossx/viewmodel/HomeViewModel$getBox$1;
.super Ljava/lang/Object;
.source "HomeViewModel.kt"

# interfaces
.implements Lcom/startapps/crossx/rest/listener/ApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/viewmodel/HomeViewModel;->getBox(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startapps/crossx/rest/listener/ApiListener<",
        "Lcom/startapps/crossx/model/BoxModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/startapps/crossx/viewmodel/HomeViewModel$getBox$1",
        "Lcom/startapps/crossx/rest/listener/ApiListener;",
        "Lcom/startapps/crossx/model/BoxModel;",
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
.field final synthetic this$0:Lcom/startapps/crossx/viewmodel/HomeViewModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/viewmodel/HomeViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/HomeViewModel$getBox$1;->this$0:Lcom/startapps/crossx/viewmodel/HomeViewModel;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/HomeViewModel$getBox$1;->this$0:Lcom/startapps/crossx/viewmodel/HomeViewModel;

    invoke-static {v0}, Lcom/startapps/crossx/viewmodel/HomeViewModel;->access$getMContext$p(Lcom/startapps/crossx/viewmodel/HomeViewModel;)Landroid/app/Application;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Lcom/startapps/crossx/model/BoxModel;)V
    .locals 3

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/startapps/crossx/controller/dao/CheckInLocationDAO;

    invoke-direct {v0}, Lcom/startapps/crossx/controller/dao/CheckInLocationDAO;-><init>()V

    .line 28
    invoke-virtual {v0}, Lcom/startapps/crossx/controller/dao/CheckInLocationDAO;->deleteAll()V

    .line 29
    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getCheckLocations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/CheckInLocationModel;

    const-string v2, "checkLocation"

    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/dao/CheckInLocationDAO;->createFroModel(Lcom/startapps/crossx/model/CheckInLocationModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/startapps/crossx/model/BoxModel;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/viewmodel/HomeViewModel$getBox$1;->onSuccess(Lcom/startapps/crossx/model/BoxModel;)V

    return-void
.end method
