.class Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$7;
.super Ljava/lang/Object;
.source "MyTrainingFragment.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->showWoodList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

.field final synthetic val$listWodsNoResults:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 403
    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$7;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    iput-object p2, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$7;->val$listWodsNoResults:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    .line 406
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$7;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    iget-object p2, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$7;->val$listWodsNoResults:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/WodsModel;

    invoke-static {p1, p2}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->access$002(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;Lcom/startapps/crossx/model/WodsModel;)Lcom/startapps/crossx/model/WodsModel;

    .line 407
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$7;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-static {p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->access$100(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Lcom/startapps/crossx/model/WodsModel;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->access$200(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;Lcom/startapps/crossx/model/WodsModel;)V

    return-void
.end method
