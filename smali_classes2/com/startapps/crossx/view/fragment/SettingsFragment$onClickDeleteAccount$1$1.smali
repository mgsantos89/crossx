.class final Lcom/startapps/crossx/view/fragment/SettingsFragment$onClickDeleteAccount$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SettingsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/SettingsFragment;->onClickDeleteAccount$lambda-10(Lcom/startapps/crossx/view/fragment/SettingsFragment;Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "isSuccess",
        "",
        "message",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/SettingsFragment$onClickDeleteAccount$1$1;->this$0:Lcom/startapps/crossx/view/fragment/SettingsFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 147
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/SettingsFragment$onClickDeleteAccount$1$1;->invoke(ZLjava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ZLjava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/SettingsFragment$onClickDeleteAccount$1$1;->this$0:Lcom/startapps/crossx/view/fragment/SettingsFragment;

    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->access$setLogoutClick(Lcom/startapps/crossx/view/fragment/SettingsFragment;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 151
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/SettingsFragment$onClickDeleteAccount$1$1;->this$0:Lcom/startapps/crossx/view/fragment/SettingsFragment;

    .line 152
    sget-object v0, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/fragment/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v1, "requireActivity()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showError$default(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
