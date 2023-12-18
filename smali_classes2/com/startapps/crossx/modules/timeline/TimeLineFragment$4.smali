.class Lcom/startapps/crossx/modules/timeline/TimeLineFragment$4;
.super Ljava/lang/Object;
.source "TimeLineFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->optionsEditPost(Lcom/startapps/crossx/model/TimeLineModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

.field final synthetic val$timeLineModel:Lcom/startapps/crossx/model/TimeLineModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/timeline/TimeLineFragment;Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 392
    iput-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$4;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    iput-object p2, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$4;->val$timeLineModel:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$4;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    invoke-static {p1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->-$$Nest$fgetviewModelPresenter(Lcom/startapps/crossx/modules/timeline/TimeLineFragment;)Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    move-result-object p1

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$4;->val$timeLineModel:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-interface {p1, p2, v0}, Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;->onDeletePublication(Ljava/lang/String;Lcom/startapps/crossx/model/TimeLineModel;)V

    goto :goto_0

    .line 399
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$4;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$4;->val$timeLineModel:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-static {p2, v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToEditPost(Landroid/content/Context;Lcom/startapps/crossx/model/TimeLineModel;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0xcb

    invoke-virtual {p1, p2, v0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 400
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$4;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f010025

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method
