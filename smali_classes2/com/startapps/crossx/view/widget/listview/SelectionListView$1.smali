.class Lcom/startapps/crossx/view/widget/listview/SelectionListView$1;
.super Ljava/lang/Object;
.source "SelectionListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/widget/listview/SelectionListView;->setActionModeCallback(Lcom/startapps/crossx/view/widget/listview/SelectionListView$SelecionActionModeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/widget/listview/SelectionListView;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/widget/listview/SelectionListView;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView$1;->this$0:Lcom/startapps/crossx/view/widget/listview/SelectionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 176
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView$1;->this$0:Lcom/startapps/crossx/view/widget/listview/SelectionListView;

    invoke-static {p1, p3}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->-$$Nest$misSelectable(Lcom/startapps/crossx/view/widget/listview/SelectionListView;I)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView$1;->this$0:Lcom/startapps/crossx/view/widget/listview/SelectionListView;

    invoke-virtual {p1, p3}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->isItemChecked(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView$1;->this$0:Lcom/startapps/crossx/view/widget/listview/SelectionListView;

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView$1;->this$0:Lcom/startapps/crossx/view/widget/listview/SelectionListView;

    invoke-virtual {p1, p3, p2}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->setItemChecked(IZ)V

    :cond_1
    :goto_0
    return p2
.end method
