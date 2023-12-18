.class public Lcom/startapps/crossx/view/widget/listview/SelectionListView;
.super Landroid/widget/ListView;
.source "SelectionListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/widget/listview/SelectionListView$SelecionActionModeCallback;
    }
.end annotation


# instance fields
.field actionMode:Landroidx/appcompat/view/ActionMode;

.field private actionModeCallback:Lcom/startapps/crossx/view/widget/listview/SelectionListView$SelecionActionModeCallback;

.field private activity:Landroidx/appcompat/app/AppCompatActivity;

.field private selectableFromTheBeginning:Z

.field private selectedStringFormat:Ljava/lang/String;

.field private selectionMode:Z

.field private startPosition:I


# direct methods
.method static bridge synthetic -$$Nest$misSelectable(Lcom/startapps/crossx/view/widget/listview/SelectionListView;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->isSelectable(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, v0, v1}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 32
    iput-boolean p3, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->selectionMode:Z

    .line 54
    sget-object v0, Lcom/startapps/crossx/R$styleable;->SelectionListView:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 56
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->selectableFromTheBeginning:Z

    const/4 p3, 0x1

    .line 57
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->selectedStringFormat:Ljava/lang/String;

    if-nez p3, :cond_0

    const-string p3, "%d items selected"

    .line 59
    iput-object p3, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->selectedStringFormat:Ljava/lang/String;

    .line 61
    :cond_0
    iget-object p3, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->selectedStringFormat:Ljava/lang/String;

    const-string v0, "%d"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 65
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p2, 0x2

    .line 67
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->setChoiceMode(I)V

    .line 68
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->activity:Landroidx/appcompat/app/AppCompatActivity;

    return-void

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The selectedStringFormat must have a %d for the number of selected items to be set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isSelectable(I)Z
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 123
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 127
    :cond_0
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/HeaderViewListAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public clearChecked()V
    .locals 4

    .line 160
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 161
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 162
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-super {p0, v3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getActionModeCallback()Lcom/startapps/crossx/view/widget/listview/SelectionListView$SelecionActionModeCallback;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->actionModeCallback:Lcom/startapps/crossx/view/widget/listview/SelectionListView$SelecionActionModeCallback;

    return-object v0
.end method

.method public getSelectedStringFormat()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->selectedStringFormat:Ljava/lang/String;

    return-object v0
.end method

.method public isSelectableFromTheBeginning()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->selectableFromTheBeginning:Z

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 155
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 156
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->updateActionMode()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x7

    if-ge v1, v4, :cond_1

    iget-boolean v4, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->selectableFromTheBeginning:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v4, :cond_1

    .line 92
    :cond_0
    iput-boolean v3, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->selectionMode:Z

    .line 93
    invoke-virtual {p0, v1, v2}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->pointToPosition(II)I

    move-result v4

    iput v4, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->startPosition:I

    .line 95
    :cond_1
    iget-boolean v4, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->selectionMode:Z

    if-nez v4, :cond_2

    .line 96
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_4

    const/4 p1, 0x2

    const/4 v4, 0x0

    if-eq v0, p1, :cond_3

    .line 109
    iput-boolean v4, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->selectionMode:Z

    .line 111
    invoke-virtual {p0, v1, v2}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->pointToPosition(II)I

    move-result p1

    .line 112
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->startPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    if-eq p1, v1, :cond_4

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->isSelectable(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->isItemChecked(I)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->pointToPosition(II)I

    move-result p1

    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->startPosition:I

    if-eq p1, v0, :cond_4

    .line 104
    iput-boolean v4, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->selectionMode:Z

    :cond_4
    :goto_0
    return v3
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7

    .line 73
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->playSoundEffect(I)V

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 78
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return v6

    :cond_1
    return v1
.end method

.method public setActionModeCallback(Lcom/startapps/crossx/view/widget/listview/SelectionListView$SelecionActionModeCallback;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->actionModeCallback:Lcom/startapps/crossx/view/widget/listview/SelectionListView$SelecionActionModeCallback;

    .line 173
    new-instance p1, Lcom/startapps/crossx/view/widget/listview/SelectionListView$1;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/view/widget/listview/SelectionListView$1;-><init>(Lcom/startapps/crossx/view/widget/listview/SelectionListView;)V

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 0

    .line 133
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 135
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->actionModeCallback:Lcom/startapps/crossx/view/widget/listview/SelectionListView$SelecionActionModeCallback;

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->updateActionMode()V

    :cond_0
    return-void
.end method

.method public setSelectableFromTheBeginning(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->selectableFromTheBeginning:Z

    return-void
.end method

.method public setSelectedStringFormat(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->selectedStringFormat:Ljava/lang/String;

    return-void
.end method

.method public updateActionMode()V
    .locals 3

    .line 141
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->getCheckItemIds()[J

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    :cond_0
    return-void

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-nez v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->actionModeCallback:Lcom/startapps/crossx/view/widget/listview/SelectionListView$SelecionActionModeCallback;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->actionMode:Landroidx/appcompat/view/ActionMode;

    iget-object v2, p0, Lcom/startapps/crossx/view/widget/listview/SelectionListView;->selectedStringFormat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
