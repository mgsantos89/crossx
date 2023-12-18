.class public final Lcom/startapps/crossx/view/activity/HomeActivity$broadcastReceiver$1$onReceive$1;
.super Ljava/lang/Object;
.source "HomeActivity.kt"

# interfaces
.implements Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/HomeActivity$broadcastReceiver$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/startapps/crossx/view/activity/HomeActivity$broadcastReceiver$1$onReceive$1",
        "Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;",
        "clickDown",
        "",
        "clickedChangeCard",
        "notification",
        "Lcom/startapps/crossx/model/Notification;",
        "clickedEnablePayment",
        "clickedOk",
        "clickedToPayNow",
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
.method constructor <init>(Lcom/startapps/crossx/view/activity/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/HomeActivity$broadcastReceiver$1$onReceive$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickDown()V
    .locals 0

    return-void
.end method

.method public clickedChangeCard(Lcom/startapps/crossx/model/Notification;)V
    .locals 3

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/startapps/crossx/view/activity/HomeActivity;->Companion:Lcom/startapps/crossx/view/activity/HomeActivity$Companion;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/HomeActivity$broadcastReceiver$1$onReceive$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-virtual {v1}, Lcom/startapps/crossx/view/activity/HomeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "this@HomeActivity.baseContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "action_change_card"

    invoke-virtual {v0, v1, p1, v2}, Lcom/startapps/crossx/view/activity/HomeActivity$Companion;->startActivity(Landroid/content/Context;Lcom/startapps/crossx/model/Notification;Ljava/lang/String;)V

    return-void
.end method

.method public clickedEnablePayment(Lcom/startapps/crossx/model/Notification;)V
    .locals 3

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/startapps/crossx/view/activity/HomeActivity;->Companion:Lcom/startapps/crossx/view/activity/HomeActivity$Companion;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/HomeActivity$broadcastReceiver$1$onReceive$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-virtual {v1}, Lcom/startapps/crossx/view/activity/HomeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "this@HomeActivity.baseContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "enable_card"

    invoke-virtual {v0, v1, p1, v2}, Lcom/startapps/crossx/view/activity/HomeActivity$Companion;->startActivity(Landroid/content/Context;Lcom/startapps/crossx/model/Notification;Ljava/lang/String;)V

    return-void
.end method

.method public clickedOk()V
    .locals 1

    const-string v0, "dialog clicked ok"

    .line 78
    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public clickedToPayNow(Lcom/startapps/crossx/model/Notification;)V
    .locals 3

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/startapps/crossx/view/activity/HomeActivity;->Companion:Lcom/startapps/crossx/view/activity/HomeActivity$Companion;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/HomeActivity$broadcastReceiver$1$onReceive$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-virtual {v1}, Lcom/startapps/crossx/view/activity/HomeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "this@HomeActivity.baseContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "to_pay_now"

    invoke-virtual {v0, v1, p1, v2}, Lcom/startapps/crossx/view/activity/HomeActivity$Companion;->startActivity(Landroid/content/Context;Lcom/startapps/crossx/model/Notification;Ljava/lang/String;)V

    return-void
.end method
