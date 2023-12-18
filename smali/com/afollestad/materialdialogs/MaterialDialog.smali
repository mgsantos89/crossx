.class public Lcom/afollestad/materialdialogs/MaterialDialog;
.super Lcom/afollestad/materialdialogs/DialogBase;
.source "MaterialDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afollestad/materialdialogs/MaterialDialog$Builder;,
        Lcom/afollestad/materialdialogs/MaterialDialog$ListType;,
        Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;,
        Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;,
        Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;,
        Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;,
        Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;,
        Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;,
        Lcom/afollestad/materialdialogs/MaterialDialog$DialogException;,
        Lcom/afollestad/materialdialogs/MaterialDialog$NotImplementedException;
    }
.end annotation


# instance fields
.field protected content:Landroid/widget/TextView;

.field protected customViewFrame:Landroid/widget/FrameLayout;

.field protected icon:Landroid/widget/ImageView;

.field protected input:Landroid/widget/EditText;

.field protected inputMinMax:Landroid/widget/TextView;

.field protected listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

.field protected listView:Landroid/widget/ListView;

.field protected final mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

.field private final mHandler:Landroid/os/Handler;

.field protected mProgress:Landroid/widget/ProgressBar;

.field protected mProgressLabel:Landroid/widget/TextView;

.field protected mProgressMinMax:Landroid/widget/TextView;

.field protected negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

.field protected neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

.field protected positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

.field protected selectedIndicesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected title:Landroid/widget/TextView;

.field protected titleFrame:Landroid/view/View;


# direct methods
.method protected constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog$Builder;)V
    .locals 2

    .line 92
    iget-object v0, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/DialogInit;->getTheme(Lcom/afollestad/materialdialogs/MaterialDialog$Builder;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/afollestad/materialdialogs/DialogBase;-><init>(Landroid/content/Context;I)V

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 95
    iget-object v0, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 96
    invoke-static {p1}, Lcom/afollestad/materialdialogs/DialogInit;->getInflateLayout(Lcom/afollestad/materialdialogs/MaterialDialog$Builder;)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    .line 97
    invoke-static {p0}, Lcom/afollestad/materialdialogs/DialogInit;->init(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    return-void
.end method

.method private sendMultichoiceCallback()Z
    .locals 5

    .line 315
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackMultiChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 318
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 319
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_2

    goto :goto_0

    .line 320
    :cond_2
    iget-object v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v3, v3, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :cond_3
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackMultiChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;

    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    .line 323
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    .line 324
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 322
    invoke-interface {v1, p0, v2, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;->onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;[Ljava/lang/Integer;[Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private sendSingleChoiceCallback(Landroid/view/View;)Z
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackSingleChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndex:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndex:I

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 309
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndex:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 311
    :goto_0
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackSingleChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;

    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndex:I

    invoke-interface {v1, p0, p1, v2, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;->onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected final checkIfListInitScroll()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$1;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$1;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public clearSelectedIndices()V
    .locals 1

    const/4 v0, 0x1

    .line 1699
    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->clearSelectedIndices(Z)V

    return-void
.end method

.method public clearSelectedIndices(Z)V
    .locals 2

    .line 1708
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->MULTI:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    if-ne v0, v1, :cond_3

    .line 1710
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/afollestad/materialdialogs/DefaultAdapter;

    if-eqz v0, :cond_2

    .line 1711
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1712
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1713
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/afollestad/materialdialogs/DefaultAdapter;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/DefaultAdapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_1

    .line 1714
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackMultiChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;

    if-eqz p1, :cond_1

    .line 1715
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->sendMultichoiceCallback()Z

    :cond_1
    return-void

    .line 1717
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can only use clearSelectedIndices() with the default adapter implementation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1709
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can only use clearSelectedIndices() with multi choice list dialogs."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dismiss()V
    .locals 1

    .line 1810
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1811
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-static {p0, v0}, Lcom/afollestad/materialdialogs/util/DialogUtils;->hideKeyboard(Landroid/content/DialogInterface;Lcom/afollestad/materialdialogs/MaterialDialog$Builder;)V

    .line 1812
    :cond_0
    invoke-super {p0}, Lcom/afollestad/materialdialogs/DialogBase;->dismiss()V

    return-void
.end method

.method public bridge synthetic findViewById(I)Landroid/view/View;
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/DialogBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getActionButton(Lcom/afollestad/materialdialogs/DialogAction;)Lcom/afollestad/materialdialogs/internal/MDButton;
    .locals 1

    .line 1366
    sget-object v0, Lcom/afollestad/materialdialogs/MaterialDialog$4;->$SwitchMap$com$afollestad$materialdialogs$DialogAction:[I

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/DialogAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1368
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    return-object p1

    .line 1372
    :cond_0
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    return-object p1

    .line 1370
    :cond_1
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    return-object p1
.end method

.method public final getBuilder()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-object v0
.end method

.method getButtonSelector(Lcom/afollestad/materialdialogs/DialogAction;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 264
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnSelectorStacked:I

    if-eqz p1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget p2, p2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnSelectorStacked:I

    invoke-static {p1, p2, v0}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget p2, Lcom/afollestad/materialdialogs/R$attr;->md_btn_stacked_selector:I

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/afollestad/materialdialogs/R$attr;->md_btn_stacked_selector:I

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 270
    :cond_2
    sget-object p2, Lcom/afollestad/materialdialogs/MaterialDialog$4;->$SwitchMap$com$afollestad$materialdialogs$DialogAction:[I

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/DialogAction;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_8

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    .line 272
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnSelectorPositive:I

    if-eqz p1, :cond_3

    .line 273
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget p2, p2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnSelectorPositive:I

    invoke-static {p1, p2, v0}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 274
    :cond_3
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget p2, Lcom/afollestad/materialdialogs/R$attr;->md_btn_positive_selector:I

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    .line 276
    :cond_4
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/afollestad/materialdialogs/R$attr;->md_btn_positive_selector:I

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 278
    iget-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget p2, p2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->buttonRippleColor:I

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/util/RippleHelper;->applyColor(Landroid/graphics/drawable/Drawable;I)V

    return-object p1

    .line 292
    :cond_5
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnSelectorNegative:I

    if-eqz p1, :cond_6

    .line 293
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget p2, p2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnSelectorNegative:I

    invoke-static {p1, p2, v0}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 294
    :cond_6
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget p2, Lcom/afollestad/materialdialogs/R$attr;->md_btn_negative_selector:I

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    .line 296
    :cond_7
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/afollestad/materialdialogs/R$attr;->md_btn_negative_selector:I

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 298
    iget-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget p2, p2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->buttonRippleColor:I

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/util/RippleHelper;->applyColor(Landroid/graphics/drawable/Drawable;I)V

    return-object p1

    .line 282
    :cond_8
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnSelectorNeutral:I

    if-eqz p1, :cond_9

    .line 283
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget p2, p2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnSelectorNeutral:I

    invoke-static {p1, p2, v0}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 284
    :cond_9
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget p2, Lcom/afollestad/materialdialogs/R$attr;->md_btn_neutral_selector:I

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_a

    return-object p1

    .line 286
    :cond_a
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/afollestad/materialdialogs/R$attr;->md_btn_neutral_selector:I

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 288
    iget-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget p2, p2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->buttonRippleColor:I

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/util/RippleHelper;->applyColor(Landroid/graphics/drawable/Drawable;I)V

    return-object p1
.end method

.method public final getContentView()Landroid/widget/TextView;
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getCurrentProgress()I
    .locals 1

    .line 1563
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1564
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    .line 1424
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView:Landroid/view/View;

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 1405
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getInputEditText()Landroid/widget/EditText;
    .locals 1

    .line 1390
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    return-object v0
.end method

.method protected final getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listSelector:I

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listSelector:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget v1, Lcom/afollestad/materialdialogs/R$attr;->md_list_selector:I

    invoke-static {v0, v1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/afollestad/materialdialogs/R$attr;->md_list_selector:I

    invoke-static {v0, v1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getListView()Landroid/widget/ListView;
    .locals 1

    .line 1385
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public final getMaxProgress()I
    .locals 1

    .line 1608
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1609
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    return v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 1568
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 1640
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackSingleChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;

    if-eqz v0, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndex:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getSelectedIndices()[Ljava/lang/Integer;
    .locals 2

    .line 1654
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackMultiChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;

    if-eqz v0, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 1398
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 1380
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    return-object v0
.end method

.method public final hasActionButtons()Z
    .locals 1

    .line 1471
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->numberOfActionButtons()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final incrementProgress(I)V
    .locals 1

    .line 1572
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getCurrentProgress()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->setProgress(I)V

    return-void
.end method

.method protected invalidateInputMinMaxIndicator(IZ)V
    .locals 5

    .line 1790
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->inputMinMax:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 1791
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputMaxLength:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->inputMinMax:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%d/%d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1793
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->inputMinMax:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1794
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->inputMinMax:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_3

    .line 1795
    :cond_1
    iget-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget p2, p2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputMaxLength:I

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget p2, p2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputMaxLength:I

    if-gt p1, p2, :cond_3

    :cond_2
    iget-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget p2, p2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputMinLength:I

    if-ge p1, p2, :cond_4

    :cond_3
    move v1, v0

    .line 1798
    :cond_4
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    if-eqz v1, :cond_5

    iget p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputRangeErrorColor:I

    goto :goto_1

    :cond_5
    iget p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    .line 1799
    :goto_1
    iget-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    if-eqz v1, :cond_6

    iget p2, p2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputRangeErrorColor:I

    goto :goto_2

    :cond_6
    iget p2, p2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    .line 1800
    :goto_2
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputMaxLength:I

    if-lez v2, :cond_7

    .line 1801
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->inputMinMax:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1802
    :cond_7
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/EditText;I)V

    .line 1803
    sget-object p1, Lcom/afollestad/materialdialogs/DialogAction;->POSITIVE:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->getActionButton(Lcom/afollestad/materialdialogs/DialogAction;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object p1

    xor-int/lit8 p2, v1, 0x1

    .line 1804
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_8
    return-void
.end method

.method protected final invalidateList()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_2

    return-void

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackCustom:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;

    if-eqz v0, :cond_4

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_4
    return-void
.end method

.method public final isCancelled()Z
    .locals 1

    .line 1631
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isIndeterminateProgress()Z
    .locals 1

    .line 1604
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-boolean v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->indeterminateProgress:Z

    return v0
.end method

.method public final numberOfActionButtons()I
    .locals 2

    .line 1481
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1483
    :goto_0
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 1485
    :cond_1
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afollestad/materialdialogs/DialogAction;

    .line 330
    sget-object v1, Lcom/afollestad/materialdialogs/MaterialDialog$4;->$SwitchMap$com$afollestad$materialdialogs$DialogAction:[I

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/DialogAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

    invoke-virtual {v1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onAny(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 334
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

    invoke-virtual {v1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositiveCallback:Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

    if-eqz v1, :cond_2

    .line 337
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositiveCallback:Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

    invoke-interface {v1, p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;->onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-boolean v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallSingleChoiceCallback:Z

    if-nez v1, :cond_3

    .line 339
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->sendSingleChoiceCallback(Landroid/view/View;)Z

    .line 340
    :cond_3
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-boolean p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallMultiChoiceCallback:Z

    if-nez p1, :cond_4

    .line 341
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->sendMultichoiceCallback()Z

    .line 342
    :cond_4
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputCallback:Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-boolean p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallInputCallback:Z

    if-nez p1, :cond_5

    .line 343
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputCallback:Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;->onInput(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V

    .line 344
    :cond_5
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-boolean p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss:Z

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    goto :goto_0

    .line 348
    :cond_6
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

    if-eqz p1, :cond_7

    .line 349
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

    invoke-virtual {p1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onAny(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 350
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

    invoke-virtual {p1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 352
    :cond_7
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegativeCallback:Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

    if-eqz p1, :cond_8

    .line 353
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegativeCallback:Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

    invoke-interface {p1, p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;->onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    .line 354
    :cond_8
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-boolean p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss:Z

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    goto :goto_0

    .line 358
    :cond_9
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

    if-eqz p1, :cond_a

    .line 359
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

    invoke-virtual {p1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onAny(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 360
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

    invoke-virtual {p1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onNeutral(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 362
    :cond_a
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNeutralCallback:Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

    if-eqz p1, :cond_b

    .line 363
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNeutralCallback:Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

    invoke-interface {p1, p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;->onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    .line 364
    :cond_b
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-boolean p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss:Z

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 368
    :cond_c
    :goto_0
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onAnyCallback:Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

    if-eqz p1, :cond_d

    .line 369
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onAnyCallback:Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;

    invoke-interface {p1, p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;->onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    :cond_d
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 167
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackCustom:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;

    if-eqz p1, :cond_1

    .line 170
    instance-of p1, p2, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 171
    move-object p1, p2

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 172
    :goto_0
    iget-object p4, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p4, p4, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackCustom:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;

    invoke-interface {p4, p0, p2, p3, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;->onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 173
    :cond_1
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    if-eqz p1, :cond_9

    sget-object p4, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->REGULAR:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    if-ne p1, p4, :cond_2

    goto/16 :goto_2

    .line 184
    :cond_2
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    sget-object p4, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->MULTI:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-ne p1, p4, :cond_6

    .line 185
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    .line 186
    sget p4, Lcom/afollestad/materialdialogs/R$id;->control:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    if-eqz p1, :cond_5

    .line 189
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-boolean p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallMultiChoiceCallback:Z

    if-eqz p1, :cond_4

    .line 192
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->sendMultichoiceCallback()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 193
    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    .line 196
    :cond_3
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 200
    :cond_4
    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    .line 204
    :cond_5
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {p2, p5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 206
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-boolean p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallMultiChoiceCallback:Z

    if-eqz p1, :cond_b

    .line 207
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->sendMultichoiceCallback()Z

    goto/16 :goto_3

    .line 209
    :cond_6
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    sget-object p4, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->SINGLE:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    if-ne p1, p4, :cond_b

    .line 211
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    check-cast p1, Lcom/afollestad/materialdialogs/DefaultAdapter;

    .line 212
    sget p4, Lcom/afollestad/materialdialogs/R$id;->control:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/RadioButton;

    .line 214
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-boolean v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText:Ljava/lang/CharSequence;

    if-nez v1, :cond_7

    .line 216
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 220
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iput p3, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndex:I

    .line 221
    invoke-direct {p0, p2}, Lcom/afollestad/materialdialogs/MaterialDialog;->sendSingleChoiceCallback(Landroid/view/View;)Z

    goto :goto_1

    .line 222
    :cond_7
    iget-object p5, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-boolean p5, p5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallSingleChoiceCallback:Z

    if-eqz p5, :cond_8

    .line 223
    iget-object p5, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget p5, p5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndex:I

    .line 225
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iput p3, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndex:I

    .line 227
    invoke-direct {p0, p2}, Lcom/afollestad/materialdialogs/MaterialDialog;->sendSingleChoiceCallback(Landroid/view/View;)Z

    move-result p2

    .line 229
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iput p5, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndex:I

    move p5, p2

    goto :goto_1

    :cond_8
    move p5, v0

    :goto_1
    if-eqz p5, :cond_b

    .line 233
    iget-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iput p3, p2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndex:I

    .line 234
    invoke-virtual {p4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 235
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/DefaultAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 175
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-boolean p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss:Z

    if-eqz p1, :cond_a

    .line 177
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 179
    :cond_a
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallback:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;

    if-eqz p1, :cond_b

    .line 180
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallback:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;

    iget-object p4, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p4, p4, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    aget-object p4, p4, p3

    invoke-interface {p1, p0, p2, p3, p4}, Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;->onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1753
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-static {p0, v0}, Lcom/afollestad/materialdialogs/util/DialogUtils;->showKeyboard(Landroid/content/DialogInterface;Lcom/afollestad/materialdialogs/MaterialDialog$Builder;)V

    .line 1755
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1758
    :cond_0
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/DialogBase;->onShow(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public selectAllIndicies()V
    .locals 1

    const/4 v0, 0x1

    .line 1725
    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->selectAllIndicies(Z)V

    return-void
.end method

.method public selectAllIndicies(Z)V
    .locals 3

    .line 1734
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    if-eqz v0, :cond_5

    sget-object v1, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->MULTI:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    if-ne v0, v1, :cond_5

    .line 1736
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/afollestad/materialdialogs/DefaultAdapter;

    if-eqz v0, :cond_4

    .line 1737
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 1739
    :goto_0
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1740
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1741
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1743
    :cond_2
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/afollestad/materialdialogs/DefaultAdapter;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/DefaultAdapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_3

    .line 1744
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackMultiChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;

    if-eqz p1, :cond_3

    .line 1745
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->sendMultichoiceCallback()Z

    :cond_3
    return-void

    .line 1747
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can only use selectAllIndicies() with the default adapter implementation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1735
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can only use selectAllIndicies() with multi choice list dialogs."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setActionButton(Lcom/afollestad/materialdialogs/DialogAction;I)V
    .locals 1

    .line 1462
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setActionButton(Lcom/afollestad/materialdialogs/DialogAction;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setActionButton(Lcom/afollestad/materialdialogs/DialogAction;Ljava/lang/CharSequence;)V
    .locals 3

    .line 1436
    sget-object v0, Lcom/afollestad/materialdialogs/MaterialDialog$4;->$SwitchMap$com$afollestad$materialdialogs$DialogAction:[I

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/DialogAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1438
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iput-object p2, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText:Ljava/lang/CharSequence;

    .line 1439
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->setText(Ljava/lang/CharSequence;)V

    .line 1440
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setVisibility(I)V

    goto :goto_3

    .line 1448
    :cond_1
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iput-object p2, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText:Ljava/lang/CharSequence;

    .line 1449
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->setText(Ljava/lang/CharSequence;)V

    .line 1450
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setVisibility(I)V

    goto :goto_3

    .line 1443
    :cond_3
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iput-object p2, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText:Ljava/lang/CharSequence;

    .line 1444
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->setText(Ljava/lang/CharSequence;)V

    .line 1445
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final setContent(I)V
    .locals 1

    .line 1533
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setContent(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final varargs setContent(I[Ljava/lang/Object;)V
    .locals 1

    .line 1538
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setContent(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setContent(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1527
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1528
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic setContentView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/DialogBase;->setContentView(I)V

    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/DialogBase;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-super {p0, p1, p2}, Lcom/afollestad/materialdialogs/DialogBase;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 1509
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1510
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1515
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1516
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setIconAttribute(I)V
    .locals 1

    .line 1521
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1522
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setInternalInputCallback()V
    .locals 2

    .line 1762
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 1763
    :cond_0
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$3;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$3;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final varargs setItems([Ljava/lang/CharSequence;)V
    .locals 2

    .line 1551
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 1553
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iput-object p1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    .line 1554
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    instance-of p1, p1, Lcom/afollestad/materialdialogs/DefaultAdapter;

    if-eqz p1, :cond_0

    .line 1555
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v0, Lcom/afollestad/materialdialogs/DefaultAdapter;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->getLayoutForType(Lcom/afollestad/materialdialogs/MaterialDialog$ListType;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/afollestad/materialdialogs/DefaultAdapter;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;I)V

    iput-object v0, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    .line 1559
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 1557
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "When using a custom adapter, setItems() cannot be used. Set items through the adapter instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1552
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This MaterialDialog instance does not yet have an adapter set to it. You cannot use setItems()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setMaxProgress(I)V
    .locals 2

    .line 1598
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress:I

    const/4 v1, -0x2

    if-le v0, v1, :cond_0

    .line 1600
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void

    .line 1599
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot use setMaxProgress() on this dialog."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1546
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setContent(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setProgress(I)V
    .locals 2

    .line 1578
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress:I

    const/4 v1, -0x2

    if-le v0, v1, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1581
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$2;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$2;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1579
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot use setProgress() on this dialog."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setProgressNumberFormat(Ljava/lang/String;)V
    .locals 1

    .line 1626
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iput-object p1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progressNumberFormat:Ljava/lang/String;

    .line 1627
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getCurrentProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setProgress(I)V

    return-void
.end method

.method public final setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 1

    .line 1617
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iput-object p1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progressPercentFormat:Ljava/text/NumberFormat;

    .line 1618
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getCurrentProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setProgress(I)V

    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 1

    .line 1670
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iput p1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndex:I

    .line 1671
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    instance-of p1, p1, Lcom/afollestad/materialdialogs/DefaultAdapter;

    if-eqz p1, :cond_0

    .line 1672
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    check-cast p1, Lcom/afollestad/materialdialogs/DefaultAdapter;

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/DefaultAdapter;->notifyDataSetChanged()V

    return-void

    .line 1674
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can only use setSelectedIndex() with the default adapter implementation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSelectedIndices([Ljava/lang/Integer;)V
    .locals 1

    .line 1687
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    .line 1688
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    instance-of p1, p1, Lcom/afollestad/materialdialogs/DefaultAdapter;

    if-eqz p1, :cond_0

    .line 1689
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    check-cast p1, Lcom/afollestad/materialdialogs/DefaultAdapter;

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/DefaultAdapter;->notifyDataSetChanged()V

    return-void

    .line 1691
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can only use setSelectedIndices() with the default adapter implementation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setTitle(I)V
    .locals 1

    .line 1499
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final varargs setTitle(I[Ljava/lang/Object;)V
    .locals 1

    .line 1504
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1493
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 103
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 104
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 1351
    :try_start_0
    invoke-super {p0}, Lcom/afollestad/materialdialogs/DialogBase;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1353
    :catch_0
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$DialogException;

    const-string v1, "Bad window token, you cannot show a dialog before an Activity is created or after it\'s hidden."

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$DialogException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
