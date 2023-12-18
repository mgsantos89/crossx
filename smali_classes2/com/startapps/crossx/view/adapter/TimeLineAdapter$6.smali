.class Lcom/startapps/crossx/view/adapter/TimeLineAdapter$6;
.super Ljava/lang/Object;
.source "TimeLineAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/adapter/TimeLineAdapter;->fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/TimeLineAdapter;

.field final synthetic val$model:Lcom/startapps/crossx/model/TimeLineModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/TimeLineAdapter;Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$6;->this$0:Lcom/startapps/crossx/view/adapter/TimeLineAdapter;

    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$6;->val$model:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$6;->this$0:Lcom/startapps/crossx/view/adapter/TimeLineAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/TimeLineAdapter;->-$$Nest$fgetpresenter(Lcom/startapps/crossx/view/adapter/TimeLineAdapter;)Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$6;->val$model:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-interface {p1, v0}, Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;->onLoadComments(Lcom/startapps/crossx/model/TimeLineModel;)V

    return-void
.end method
