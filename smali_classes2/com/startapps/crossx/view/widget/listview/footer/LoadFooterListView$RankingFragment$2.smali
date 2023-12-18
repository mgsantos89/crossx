.class Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$2;
.super Ljava/lang/Object;
.source "LoadFooterListView.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->createDialogWods()V
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

    .line 272
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$2;->this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    .line 275
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$2;->this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;

    invoke-virtual {p1, p3}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->displayRankingAtIndex(I)V

    return-void
.end method
