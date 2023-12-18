.class Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;
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
.method public static synthetic $r8$lambda$8WLtWxL8uE_I412dLZByeXNAkww(Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;->lambda$onClick$2(Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K-7RKoateopiaSups8ExVpepqm8(Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;->lambda$onClick$1(Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aC5XejSYWKA7eyFp6ZZkNB3XBeY(Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;->lambda$onClick$0(Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/startapps/crossx/modules/timeline/TimeLineFragment;Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 410
    iput-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    iput-object p2, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;->val$timeLineModel:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    invoke-static {v0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->-$$Nest$fgetviewModelPresenter(Lcom/startapps/crossx/modules/timeline/TimeLineFragment;)Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;->userComplaint(Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$onClick$1(Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    invoke-static {v0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->-$$Nest$fgetviewModelPresenter(Lcom/startapps/crossx/modules/timeline/TimeLineFragment;)Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;->blockAllFromUser(Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$onClick$2(Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    invoke-static {v0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->-$$Nest$fgetviewModelPresenter(Lcom/startapps/crossx/modules/timeline/TimeLineFragment;)Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;->postComplaint(Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    sget-object p1, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    iget-object p2, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    .line 437
    invoke-virtual {p2}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    const v1, 0x7f120264

    .line 438
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;->val$timeLineModel:Lcom/startapps/crossx/model/TimeLineModel;

    new-instance v2, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5$$ExternalSyntheticLambda2;-><init>(Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;Lcom/startapps/crossx/model/TimeLineModel;)V

    .line 436
    invoke-virtual {p1, p2, v0, v2}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showReason(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 426
    :cond_1
    sget-object p1, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    iget-object p2, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    .line 427
    invoke-virtual {p2}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    const v1, 0x7f120266

    .line 428
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;->val$timeLineModel:Lcom/startapps/crossx/model/TimeLineModel;

    new-instance v2, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5$$ExternalSyntheticLambda1;-><init>(Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;Lcom/startapps/crossx/model/TimeLineModel;)V

    .line 426
    invoke-virtual {p1, p2, v0, v2}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showReason(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 416
    :cond_2
    sget-object p1, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    iget-object p2, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    .line 417
    invoke-virtual {p2}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    const v1, 0x7f120265

    .line 418
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;->val$timeLineModel:Lcom/startapps/crossx/model/TimeLineModel;

    new-instance v2, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5$$ExternalSyntheticLambda0;-><init>(Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;Lcom/startapps/crossx/model/TimeLineModel;)V

    .line 416
    invoke-virtual {p1, p2, v0, v2}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showReason(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method
