.class public final Lcom/startapps/crossx/view/activity/HomeActivity$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "HomeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/HomeActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/startapps/crossx/view/activity/HomeActivity$broadcastReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/HomeActivity$broadcastReceiver$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "broadcast_payment_polling"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "data_payment"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/startapps/crossx/model/DataPayment;

    .line 67
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/HomeActivity$broadcastReceiver$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-virtual {p2}, Lcom/startapps/crossx/view/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    new-instance v0, Lcom/startapps/crossx/view/activity/HomeActivity$broadcastReceiver$1$onReceive$1;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/HomeActivity$broadcastReceiver$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-direct {v0, v1}, Lcom/startapps/crossx/view/activity/HomeActivity$broadcastReceiver$1$onReceive$1;-><init>(Lcom/startapps/crossx/view/activity/HomeActivity;)V

    check-cast v0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;

    invoke-static {p1, p2, v0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->show(Lcom/startapps/crossx/model/DataPayment;Landroidx/fragment/app/FragmentManager;Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;)V

    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.startapps.crossx.model.DataPayment"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
