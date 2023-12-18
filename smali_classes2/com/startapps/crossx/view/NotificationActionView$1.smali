.class Lcom/startapps/crossx/view/NotificationActionView$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationActionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/NotificationActionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/NotificationActionView;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/NotificationActionView;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/startapps/crossx/view/NotificationActionView$1;->this$0:Lcom/startapps/crossx/view/NotificationActionView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "extraCount"

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 138
    invoke-static {}, Lcom/startapps/crossx/view/NotificationActionView;->-$$Nest$sfgetACTION_SET_ABS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object p2, p0, Lcom/startapps/crossx/view/NotificationActionView$1;->this$0:Lcom/startapps/crossx/view/NotificationActionView;

    invoke-virtual {p2, p1}, Lcom/startapps/crossx/view/NotificationActionView;->setCount(I)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-static {}, Lcom/startapps/crossx/view/NotificationActionView;->-$$Nest$sfgetACTION_SET_DELTA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 142
    iget-object p2, p0, Lcom/startapps/crossx/view/NotificationActionView$1;->this$0:Lcom/startapps/crossx/view/NotificationActionView;

    invoke-virtual {p2, p1}, Lcom/startapps/crossx/view/NotificationActionView;->setCountDelta(I)V

    :cond_1
    :goto_0
    return-void
.end method
