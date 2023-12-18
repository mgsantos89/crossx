.class Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$6;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;
.source "AbstractWorkoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->doSendResult(Ljava/util/Map;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$6;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 0

    .line 294
    invoke-super {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 296
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onNetworkError "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onNetworkError"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 301
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "onServerError "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onServerError"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V
    .locals 0

    .line 308
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V

    .line 310
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$6;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->onRefresh()V

    return-void
.end method
