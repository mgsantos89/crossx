.class Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$3;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "GroupUserPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->onDeleteGroup(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;I)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$3;->this$0:Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;

    iput p2, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$3;->val$position:I

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    return-void
.end method

.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .line 160
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$3;->this$0:Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;

    iget-object v0, p1, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->adapter:Lcom/startapps/crossx/view/adapter/GroupAdapter;

    iget v1, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$3;->val$position:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/adapter/GroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/GroupModel;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->deleteGroup(Lcom/startapps/crossx/model/GroupModel;)V

    return-void
.end method
