.class Lcom/startapps/crossx/modules/timeline/TimeLineFragment$3;
.super Ljava/lang/Object;
.source "TimeLineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->addListHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/timeline/TimeLineFragment;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$3;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 302
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$3;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    invoke-static {p1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->-$$Nest$fgetonclickTimeLineButton(Lcom/startapps/crossx/modules/timeline/TimeLineFragment;)Lcom/startapps/crossx/modules/timeline/TimeLineFragment$OnclickTimeLineButton;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 303
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$3;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    invoke-static {p1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->-$$Nest$fgetonclickTimeLineButton(Lcom/startapps/crossx/modules/timeline/TimeLineFragment;)Lcom/startapps/crossx/modules/timeline/TimeLineFragment$OnclickTimeLineButton;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$OnclickTimeLineButton;->onclickTimeLineButton()V

    :cond_0
    return-void
.end method
