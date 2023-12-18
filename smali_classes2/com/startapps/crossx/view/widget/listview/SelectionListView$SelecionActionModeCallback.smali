.class public abstract Lcom/startapps/crossx/view/widget/listview/SelectionListView$SelecionActionModeCallback;
.super Ljava/lang/Object;
.source "SelectionListView.java"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/widget/listview/SelectionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SelecionActionModeCallback"
.end annotation


# instance fields
.field private selectionListView:Lcom/startapps/crossx/view/widget/listview/SelectionListView;


# direct methods
.method protected constructor <init>(Lcom/startapps/crossx/view/widget/listview/SelectionListView;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView$SelecionActionModeCallback;->selectionListView:Lcom/startapps/crossx/view/widget/listview/SelectionListView;

    return-void
.end method


# virtual methods
.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    .line 216
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView$SelecionActionModeCallback;->selectionListView:Lcom/startapps/crossx/view/widget/listview/SelectionListView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 217
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView$SelecionActionModeCallback;->selectionListView:Lcom/startapps/crossx/view/widget/listview/SelectionListView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->clearChecked()V

    return-void
.end method
