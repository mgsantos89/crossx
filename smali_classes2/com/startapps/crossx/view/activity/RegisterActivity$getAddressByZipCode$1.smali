.class public final Lcom/startapps/crossx/view/activity/RegisterActivity$getAddressByZipCode$1;
.super Ljava/lang/Object;
.source "RegisterActivity.kt"

# interfaces
.implements Lcom/startapps/crossx/rest/listener/ApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/RegisterActivity;->getAddressByZipCode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startapps/crossx/rest/listener/ApiListener<",
        "Lcom/startapps/crossx/model/ZipcodeAddress;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/startapps/crossx/view/activity/RegisterActivity$getAddressByZipCode$1",
        "Lcom/startapps/crossx/rest/listener/ApiListener;",
        "Lcom/startapps/crossx/model/ZipcodeAddress;",
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
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/RegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/RegisterActivity$getAddressByZipCode$1;->this$0:Lcom/startapps/crossx/view/activity/RegisterActivity;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/startapps/crossx/model/ZipcodeAddress;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity$getAddressByZipCode$1;->this$0:Lcom/startapps/crossx/view/activity/RegisterActivity;

    invoke-static {v0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->access$populateAddress(Lcom/startapps/crossx/view/activity/RegisterActivity;Lcom/startapps/crossx/model/ZipcodeAddress;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 263
    check-cast p1, Lcom/startapps/crossx/model/ZipcodeAddress;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity$getAddressByZipCode$1;->onSuccess(Lcom/startapps/crossx/model/ZipcodeAddress;)V

    return-void
.end method
