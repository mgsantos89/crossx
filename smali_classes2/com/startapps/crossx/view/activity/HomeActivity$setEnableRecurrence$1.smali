.class public final Lcom/startapps/crossx/view/activity/HomeActivity$setEnableRecurrence$1;
.super Lcom/startapps/crossx/rest/callback/SimpleCallback;
.source "HomeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/HomeActivity;->setEnableRecurrence(Lcom/startapps/crossx/model/CreditCard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0014J$\u0010\u0007\u001a\u00020\u00042\u0010\u0010\u0008\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014\u00a8\u0006\u000c"
    }
    d2 = {
        "com/startapps/crossx/view/activity/HomeActivity$setEnableRecurrence$1",
        "Lcom/startapps/crossx/rest/callback/SimpleCallback;",
        "Lcom/google/gson/JsonObject;",
        "onFailure",
        "",
        "xErrorResponse",
        "Lcom/startapps/crossx/rest/error/CrossXError;",
        "onSuccess",
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
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/HomeActivity;


# direct methods
.method public static synthetic $r8$lambda$iv4nN4ZXVHHNcip8jcb8skWOUPg(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/HomeActivity$setEnableRecurrence$1;->onFailure$lambda-0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lcom/startapps/crossx/view/activity/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/HomeActivity$setEnableRecurrence$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    .line 465
    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/SimpleCallback;-><init>()V

    return-void
.end method

.method private static final onFailure$lambda-0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 473
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method protected onFailure(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 1

    const-string/jumbo v0, "xErrorResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/HomeActivity$setEnableRecurrence$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/HomeActivity;->access$hideLoading(Lcom/startapps/crossx/view/activity/HomeActivity;)V

    .line 473
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/HomeActivity$setEnableRecurrence$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    check-cast p1, Landroid/content/Context;

    new-instance v0, Lcom/startapps/crossx/view/activity/HomeActivity$setEnableRecurrence$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/startapps/crossx/view/activity/HomeActivity$setEnableRecurrence$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Lcom/startapps/crossx/controller/utils/DialogUtils;->showDialogOK(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 1
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

    .line 467
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/HomeActivity$setEnableRecurrence$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/HomeActivity;->access$hideLoading(Lcom/startapps/crossx/view/activity/HomeActivity;)V

    .line 468
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/HomeActivity$setEnableRecurrence$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    check-cast p1, Landroid/content/Context;

    const p2, 0x7f1200f7

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
