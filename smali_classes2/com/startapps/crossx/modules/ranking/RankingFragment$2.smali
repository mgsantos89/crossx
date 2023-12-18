.class Lcom/startapps/crossx/modules/ranking/RankingFragment$2;
.super Ljava/lang/Object;
.source "RankingFragment.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/ranking/RankingFragment;->createDialogWods()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/ranking/RankingFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/ranking/RankingFragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment$2;->this$0:Lcom/startapps/crossx/modules/ranking/RankingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    .line 185
    iget-object p1, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment$2;->this$0:Lcom/startapps/crossx/modules/ranking/RankingFragment;

    invoke-virtual {p1, p3}, Lcom/startapps/crossx/modules/ranking/RankingFragment;->displayRankingAtIndex(I)V

    return-void
.end method
