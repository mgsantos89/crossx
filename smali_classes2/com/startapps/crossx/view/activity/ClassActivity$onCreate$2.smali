.class public final Lcom/startapps/crossx/view/activity/ClassActivity$onCreate$2;
.super Ljava/lang/Object;
.source "ClassActivity.kt"

# interfaces
.implements Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/ClassActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/startapps/crossx/view/activity/ClassActivity$onCreate$2",
        "Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;",
        "onItemClick",
        "",
        "model",
        "Lcom/startapps/crossx/model/GymClassModel;",
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
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/ClassActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/ClassActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ClassActivity$onCreate$2;->this$0:Lcom/startapps/crossx/view/activity/ClassActivity;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/startapps/crossx/model/GymClassModel;)V
    .locals 2

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ClassActivity$onCreate$2;->this$0:Lcom/startapps/crossx/view/activity/ClassActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/ClassActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/startapps/crossx/controller/utils/Intents;->goToClassDetail(Landroid/content/Context;Lcom/startapps/crossx/model/GymClassModel;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/view/activity/ClassActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
