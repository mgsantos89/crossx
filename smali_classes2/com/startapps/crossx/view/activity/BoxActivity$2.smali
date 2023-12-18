.class Lcom/startapps/crossx/view/activity/BoxActivity$2;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "BoxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/BoxActivity;->sendFeedback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/BoxActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/BoxActivity;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/BoxActivity$2;->this$0:Lcom/startapps/crossx/view/activity/BoxActivity;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/CancelableCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 0

    return-void
.end method

.method protected onFail(Ljava/lang/Throwable;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BoxActivity$2;->this$0:Lcom/startapps/crossx/view/activity/BoxActivity;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BoxActivity$2;->this$0:Lcom/startapps/crossx/view/activity/BoxActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Lcom/google/gson/JsonObject;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 139
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/BoxActivity$2;->this$0:Lcom/startapps/crossx/view/activity/BoxActivity;

    const-string p2, "Coment\u00e1rio enviado com sucesso!"

    invoke-static {p1, p2}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/BoxActivity$2;->this$0:Lcom/startapps/crossx/view/activity/BoxActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/BoxActivity;->commentText:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
