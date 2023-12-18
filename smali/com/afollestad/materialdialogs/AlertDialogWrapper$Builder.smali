.class public Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
.super Ljava/lang/Object;
.source "AlertDialogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/AlertDialogWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

.field private negativeDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private neutralDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveDialogListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->neutralDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->positiveDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->negativeDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method private addButtonsCallback()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->positiveDialogListener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->negativeDialogListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v1, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$3;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$3;-><init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    :cond_1
    return-void
.end method

.method private addListCallbacks()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v1, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$2;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$2;-><init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    :cond_0
    return-void
.end method

.method private setUpMultiChoiceCallback([ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 265
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 266
    aget-boolean v2, p1, v1

    if-eqz v2, :cond_0

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 273
    :goto_1
    iget-object v1, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v2, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;-><init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackMultiChoice([Ljava/lang/Integer;Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-void
.end method


# virtual methods
.method public alwaysCallMultiChoiceCallback()Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallMultiChoiceCallback()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-object p0
.end method

.method public alwaysCallSingleChoiceCallback()Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallSingleChoiceCallback()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-object p0
.end method

.method public autoDismiss(Z)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-object p0
.end method

.method public create()Landroid/app/Dialog;
    .locals 1

    .line 167
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->addButtonsCallback()V

    .line 168
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->addListCallbacks()V

    .line 169
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, p1, v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iput-object p1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    .line 156
    iget-object p1, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$1;

    invoke-direct {v0, p0, p2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$1;-><init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackCustom:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;

    return-object p0
.end method

.method public setCancelable(Z)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-object p0
.end method

.method public setIcon(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->iconRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->icon(Landroid/graphics/drawable/Drawable;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-object p0
.end method

.method public setIconAttribute(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->iconAttr(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 129
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 135
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 232
    invoke-direct {p0, p2, p3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setUpMultiChoiceCallback([ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/String;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 246
    invoke-direct {p0, p2, p3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setUpMultiChoiceCallback([ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 83
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->negativeDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 90
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->negativeDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 111
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->neutralDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 118
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->neutralDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->keyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-object p0
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->showListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 97
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->positiveDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 104
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->positiveDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 325
    iget-object p1, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$6;

    invoke-direct {v0, p0, p3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$6;-><init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, p2, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackSingleChoice(ILcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 305
    iget-object p1, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$5;

    invoke-direct {v0, p0, p3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$5;-><init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, p2, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackSingleChoice(ILcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-object p0
.end method

.method public setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(Landroid/view/View;Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    return-object p0
.end method

.method public show()Landroid/app/Dialog;
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->create()Landroid/app/Dialog;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method
