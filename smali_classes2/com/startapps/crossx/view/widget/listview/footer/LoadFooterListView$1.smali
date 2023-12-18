.class Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$1;
.super Ljava/lang/Object;
.source "LoadFooterListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$1;->this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$1;->this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;

    invoke-static {p1}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->-$$Nest$fgetonReloadListener(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;)Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$1;->this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;

    invoke-static {p1}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->-$$Nest$fgetonReloadListener(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;)Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;->onReloadStart()V

    :cond_0
    return-void
.end method
