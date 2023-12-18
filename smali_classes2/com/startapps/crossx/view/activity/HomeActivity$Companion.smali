.class public final Lcom/startapps/crossx/view/activity/HomeActivity$Companion;
.super Ljava/lang/Object;
.source "HomeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0007J\u001a\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0007J \u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/startapps/crossx/view/activity/HomeActivity$Companion;",
        "",
        "()V",
        "EXTRA_ACTION_CHANGE_CARD",
        "",
        "EXTRA_CLOSE_DIALOG",
        "EXTRA_ENABLE_CARD",
        "EXTRA_FRAGMENT",
        "EXTRA_TO_PAY_NOW",
        "REQUEST_NOTIFICATION_PERMISSION",
        "",
        "startActivity",
        "",
        "context",
        "Landroid/content/Context;",
        "notification",
        "Lcom/startapps/crossx/model/Notification;",
        "action",
        "extra",
        "Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/HomeActivity$Companion;-><init>()V

    return-void
.end method

.method public static synthetic startActivity$default(Lcom/startapps/crossx/view/activity/HomeActivity$Companion;Landroid/content/Context;Lcom/startapps/crossx/model/Notification;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 504
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/startapps/crossx/view/activity/HomeActivity$Companion;->startActivity(Landroid/content/Context;Lcom/startapps/crossx/model/Notification;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final startActivity(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/startapps/crossx/view/activity/HomeActivity$Companion;->startActivity$default(Lcom/startapps/crossx/view/activity/HomeActivity$Companion;Landroid/content/Context;Lcom/startapps/crossx/model/Notification;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final startActivity(Landroid/content/Context;Lcom/startapps/crossx/model/Notification;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/startapps/crossx/view/activity/HomeActivity$Companion;->startActivity$default(Lcom/startapps/crossx/view/activity/HomeActivity$Companion;Landroid/content/Context;Lcom/startapps/crossx/model/Notification;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final startActivity(Landroid/content/Context;Lcom/startapps/crossx/model/Notification;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    .line 507
    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    const/high16 p2, 0x4000000

    .line 509
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 510
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 511
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final startActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, ""

    .line 517
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x4000000

    .line 518
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 519
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 520
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final startActivity(Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;Lcom/startapps/crossx/model/Notification;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    new-instance v0, Landroid/content/Intent;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 527
    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 p2, 0x4000000

    .line 529
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 530
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 531
    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
