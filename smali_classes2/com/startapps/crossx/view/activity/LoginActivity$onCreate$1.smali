.class public final Lcom/startapps/crossx/view/activity/LoginActivity$onCreate$1;
.super Ljava/lang/Object;
.source "LoginActivity.kt"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/startapps/crossx/view/activity/LoginActivity$onCreate$1",
        "Lcom/facebook/FacebookCallback;",
        "Lcom/facebook/login/LoginResult;",
        "onCancel",
        "",
        "onError",
        "error",
        "Lcom/facebook/FacebookException;",
        "onSuccess",
        "result",
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
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/LoginActivity;


# direct methods
.method public static synthetic $r8$lambda$D0R7IS-XoS-gvq7P7RnPppEbGlE(Lcom/startapps/crossx/view/activity/LoginActivity;Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/startapps/crossx/view/activity/LoginActivity$onCreate$1;->onSuccess$lambda-0(Lcom/startapps/crossx/view/activity/LoginActivity;Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V

    return-void
.end method

.method constructor <init>(Lcom/startapps/crossx/view/activity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/LoginActivity$onCreate$1;->this$0:Lcom/startapps/crossx/view/activity/LoginActivity;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onSuccess$lambda-0(Lcom/startapps/crossx/view/activity/LoginActivity;Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 6

    const-string p2, "last_name"

    const-string v0, "first_name"

    const-string v1, "email"

    const-string v2, "id"

    const-string v3, "http://graph.facebook.com/"

    const-string/jumbo v4, "this$0"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v4, Lcom/startapps/crossx/model/UserModel;

    invoke-direct {v4}, Lcom/startapps/crossx/model/UserModel;-><init>()V

    if-eqz p1, :cond_3

    .line 56
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/startapps/crossx/model/UserModel;->setFacebookID(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 58
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/startapps/crossx/model/UserModel;->setEmail(Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/startapps/crossx/model/UserModel;->setName(Ljava/lang/String;)V

    .line 63
    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/startapps/crossx/model/UserModel;->setLastName(Ljava/lang/String;)V

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/LoginActivity;->getAccessToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/startapps/crossx/model/UserModel;->setFacebookAccessToken(Ljava/lang/String;)V

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/picture?type=large"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/startapps/crossx/model/UserModel;->setImgUser(Ljava/lang/String;)V

    .line 69
    :cond_3
    invoke-static {p0, v4}, Lcom/startapps/crossx/view/activity/LoginActivity;->access$loginOrRegisterWithFacebook(Lcom/startapps/crossx/view/activity/LoginActivity;Lcom/startapps/crossx/model/UserModel;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/LoginActivity$onCreate$1;->this$0:Lcom/startapps/crossx/view/activity/LoginActivity;

    check-cast v0, Landroid/content/Context;

    const-string v1, "Login cancelado pelo usu\u00e1rio"

    .line 83
    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    .line 81
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/LoginActivity$onCreate$1;->this$0:Lcom/startapps/crossx/view/activity/LoginActivity;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 3

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/LoginActivity$onCreate$1;->this$0:Lcom/startapps/crossx/view/activity/LoginActivity;

    sget-object v1, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v1}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/LoginActivity;->setAccessToken(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/facebook/GraphRequest;->Companion:Lcom/facebook/GraphRequest$Companion;

    .line 51
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    .line 50
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/LoginActivity$onCreate$1;->this$0:Lcom/startapps/crossx/view/activity/LoginActivity;

    new-instance v2, Lcom/startapps/crossx/view/activity/LoginActivity$onCreate$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/startapps/crossx/view/activity/LoginActivity$onCreate$1$$ExternalSyntheticLambda0;-><init>(Lcom/startapps/crossx/view/activity/LoginActivity;)V

    invoke-virtual {v0, p1, v2}, Lcom/facebook/GraphRequest$Companion;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fields"

    const-string v2, "id, first_name, last_name, email"

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/LoginActivity$onCreate$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
