.class Lcom/startapps/crossx/view/activity/BaseActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/BaseActivity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/BaseActivity$1;->this$0:Lcom/startapps/crossx/view/activity/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "onReceive"

    .line 39
    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/Logger;->d(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "broadcast_payment_polling"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "data_payment"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "onReceive create dialog payment"

    .line 41
    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/Logger;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
