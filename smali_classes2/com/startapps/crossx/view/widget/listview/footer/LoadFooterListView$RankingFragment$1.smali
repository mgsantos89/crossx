.class Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$1;
.super Ljava/lang/Object;
.source "LoadFooterListView.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->createDialogFilterGender()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$1;->this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    .line 259
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$1;->this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;

    add-int/lit8 p3, p3, 0x1

    invoke-static {p1, p3}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->-$$Nest$fputfilter(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;I)V

    .line 260
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$1;->this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;

    invoke-static {p1}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->-$$Nest$fgetworkoutDayModel(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;)Lcom/startapps/crossx/model/WorkoutModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->loadRanking(Lcom/startapps/crossx/model/WorkoutModel;)V

    return-void
.end method
