.class Lcom/afollestad/materialdialogs/DialogInit;
.super Ljava/lang/Object;
.source "DialogInit.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInflateLayout(Lcom/afollestad/materialdialogs/MaterialDialog$Builder;)I
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 56
    sget p0, Lcom/afollestad/materialdialogs/R$layout;->md_dialog_custom:I

    return p0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 58
    :cond_2
    sget p0, Lcom/afollestad/materialdialogs/R$layout;->md_dialog_list:I

    return p0

    .line 59
    :cond_3
    iget v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress:I

    const/4 v1, -0x2

    if-le v0, v1, :cond_4

    .line 60
    sget p0, Lcom/afollestad/materialdialogs/R$layout;->md_dialog_progress:I

    return p0

    .line 61
    :cond_4
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->indeterminateProgress:Z

    if-eqz v0, :cond_6

    .line 62
    iget-boolean p0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->indeterminateIsHorizontalProgress:Z

    if-eqz p0, :cond_5

    .line 63
    sget p0, Lcom/afollestad/materialdialogs/R$layout;->md_dialog_progress_indeterminate_horizontal:I

    return p0

    .line 64
    :cond_5
    sget p0, Lcom/afollestad/materialdialogs/R$layout;->md_dialog_progress_indeterminate:I

    return p0

    .line 65
    :cond_6
    iget-object p0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputCallback:Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;

    if-eqz p0, :cond_7

    .line 66
    sget p0, Lcom/afollestad/materialdialogs/R$layout;->md_dialog_input:I

    return p0

    .line 68
    :cond_7
    sget p0, Lcom/afollestad/materialdialogs/R$layout;->md_dialog_basic:I

    return p0
.end method

.method public static getTheme(Lcom/afollestad/materialdialogs/MaterialDialog$Builder;)I
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget v1, Lcom/afollestad/materialdialogs/R$attr;->md_dark_theme:I

    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->theme:Lcom/afollestad/materialdialogs/Theme;

    sget-object v3, Lcom/afollestad/materialdialogs/Theme;->DARK:Lcom/afollestad/materialdialogs/Theme;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    sget-object v1, Lcom/afollestad/materialdialogs/Theme;->DARK:Lcom/afollestad/materialdialogs/Theme;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/afollestad/materialdialogs/Theme;->LIGHT:Lcom/afollestad/materialdialogs/Theme;

    :goto_1
    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->theme:Lcom/afollestad/materialdialogs/Theme;

    if-eqz v0, :cond_2

    .line 50
    sget p0, Lcom/afollestad/materialdialogs/R$style;->MD_Dark:I

    goto :goto_2

    :cond_2
    sget p0, Lcom/afollestad/materialdialogs/R$style;->MD_Light:I

    :goto_2
    return p0
.end method

.method public static init(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 11

    .line 74
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 77
    iget-boolean v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable:Z

    invoke-virtual {p0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCancelable(Z)V

    .line 78
    iget-boolean v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->canceledOnTouchOutside:Z

    invoke-virtual {p0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCanceledOnTouchOutside(Z)V

    .line 79
    iget v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->backgroundColor:I

    if-nez v1, :cond_0

    .line 80
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget v2, Lcom/afollestad/materialdialogs/R$attr;->md_background_color:I

    invoke-static {v1, v2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->backgroundColor:I

    .line 81
    :cond_0
    iget v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->backgroundColor:I

    if-eqz v1, :cond_1

    .line 82
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 83
    iget-object v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/afollestad/materialdialogs/R$dimen;->md_bg_corner_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 84
    iget v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 85
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    invoke-static {v2, v1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 89
    :cond_1
    iget-boolean v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorSet:Z

    if-nez v1, :cond_2

    .line 90
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget v2, Lcom/afollestad/materialdialogs/R$attr;->md_positive_color:I

    iget-object v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColor:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2, v3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveActionTextColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColor:Landroid/content/res/ColorStateList;

    .line 91
    :cond_2
    iget-boolean v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralColorSet:Z

    if-nez v1, :cond_3

    .line 92
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget v2, Lcom/afollestad/materialdialogs/R$attr;->md_neutral_color:I

    iget-object v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralColor:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2, v3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveActionTextColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralColor:Landroid/content/res/ColorStateList;

    .line 93
    :cond_3
    iget-boolean v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColorSet:Z

    if-nez v1, :cond_4

    .line 94
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget v2, Lcom/afollestad/materialdialogs/R$attr;->md_negative_color:I

    iget-object v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColor:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2, v3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveActionTextColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColor:Landroid/content/res/ColorStateList;

    .line 95
    :cond_4
    iget-boolean v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColorSet:Z

    if-nez v1, :cond_5

    .line 96
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget v2, Lcom/afollestad/materialdialogs/R$attr;->md_widget_color:I

    iget v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    invoke-static {v1, v2, v3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    .line 99
    :cond_5
    iget-boolean v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleColorSet:Z

    const v2, 0x1010036

    if-nez v1, :cond_6

    .line 100
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v1

    .line 101
    iget-object v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget v4, Lcom/afollestad/materialdialogs/R$attr;->md_title_color:I

    invoke-static {v3, v4, v1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleColor:I

    .line 111
    :cond_6
    iget-boolean v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColorSet:Z

    if-nez v1, :cond_7

    .line 112
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x1010038

    invoke-static {v1, v3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v1

    .line 113
    iget-object v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget v4, Lcom/afollestad/materialdialogs/R$attr;->md_content_color:I

    invoke-static {v3, v4, v1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    .line 123
    :cond_7
    iget-boolean v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemColorSet:Z

    if-nez v1, :cond_8

    .line 124
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget v3, Lcom/afollestad/materialdialogs/R$attr;->md_item_color:I

    iget v4, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    invoke-static {v1, v3, v4}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemColor:I

    .line 127
    :cond_8
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    sget v3, Lcom/afollestad/materialdialogs/R$id;->title:I

    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->title:Landroid/widget/TextView;

    .line 128
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    sget v3, Lcom/afollestad/materialdialogs/R$id;->icon:I

    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    .line 129
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    sget v3, Lcom/afollestad/materialdialogs/R$id;->titleFrame:I

    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->titleFrame:Landroid/view/View;

    .line 130
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    sget v3, Lcom/afollestad/materialdialogs/R$id;->content:I

    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    .line 131
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    sget v3, Lcom/afollestad/materialdialogs/R$id;->contentListView:I

    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    .line 134
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    sget v3, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultPositive:I

    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 135
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    sget v3, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultNeutral:I

    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 136
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    sget v3, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultNegative:I

    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 139
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputCallback:Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText:Ljava/lang/CharSequence;

    if-nez v1, :cond_9

    .line 140
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText:Ljava/lang/CharSequence;

    .line 143
    :cond_9
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    iget-object v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText:Ljava/lang/CharSequence;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_a

    move v3, v5

    goto :goto_0

    :cond_a
    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/internal/MDButton;->setVisibility(I)V

    .line 144
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    iget-object v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_b

    move v3, v5

    goto :goto_1

    :cond_b
    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/internal/MDButton;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    iget-object v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_c

    move v3, v5

    goto :goto_2

    :cond_c
    move v3, v4

    :goto_2
    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/internal/MDButton;->setVisibility(I)V

    .line 148
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    .line 149
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 152
    :cond_d
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget v3, Lcom/afollestad/materialdialogs/R$attr;->md_icon:I

    invoke-static {v1, v3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 154
    iget-object v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 157
    :cond_e
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    :goto_3
    iget v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->maxIconSize:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_f

    .line 164
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget v6, Lcom/afollestad/materialdialogs/R$attr;->md_icon_max_size:I

    invoke-static {v1, v6}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDimension(Landroid/content/Context;I)I

    move-result v1

    .line 165
    :cond_f
    iget-boolean v6, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->limitIconToDefaultSize:Z

    if-nez v6, :cond_10

    iget-object v6, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget v7, Lcom/afollestad/materialdialogs/R$attr;->md_icon_limit_icon_to_default_size:I

    invoke-static {v6, v7}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveBoolean(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 166
    :cond_10
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/afollestad/materialdialogs/R$dimen;->md_icon_max_size:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_11
    const/4 v6, 0x1

    if-le v1, v3, :cond_12

    .line 168
    iget-object v7, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 169
    iget-object v7, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 170
    iget-object v7, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 171
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    .line 175
    :cond_12
    iget-boolean v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dividerColorSet:Z

    if-nez v1, :cond_13

    .line 176
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v7, Lcom/afollestad/materialdialogs/R$attr;->md_divider:I

    invoke-static {v1, v7}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v1

    .line 177
    iget-object v7, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget v8, Lcom/afollestad/materialdialogs/R$attr;->md_divider_color:I

    invoke-static {v7, v8, v1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dividerColor:I

    .line 179
    :cond_13
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iget v7, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dividerColor:I

    invoke-virtual {v1, v7}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setDividerColor(I)V

    .line 182
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->title:Landroid/widget/TextView;

    if-eqz v1, :cond_15

    .line 183
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->title:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->mediumFont:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1, v7}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 184
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->title:Landroid/widget/TextView;

    iget v7, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleColor:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->title:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v7}, Lcom/afollestad/materialdialogs/GravityEnum;->getGravityInt()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 188
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->title:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v7}, Lcom/afollestad/materialdialogs/GravityEnum;->getTextAlignment()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 191
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_14

    .line 192
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->titleFrame:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 194
    :cond_14
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->title:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->titleFrame:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :cond_15
    :goto_4
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    if-eqz v1, :cond_18

    .line 201
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    new-instance v7, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v7}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 202
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->regularFont:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1, v7}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 203
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    const/4 v7, 0x0

    iget v8, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentLineSpacingMultiplier:F

    invoke-virtual {v1, v7, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 204
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->linkColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_16

    .line 205
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    goto :goto_5

    .line 206
    :cond_16
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->linkColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 207
    :goto_5
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    iget v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/GravityEnum;->getGravityInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 211
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/GravityEnum;->getTextAlignment()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 214
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content:Ljava/lang/CharSequence;

    if-eqz v1, :cond_17

    .line 215
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 218
    :cond_17
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    :cond_18
    :goto_6
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iget-object v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->buttonsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setButtonGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V

    .line 224
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iget-object v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setButtonStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V

    .line 225
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iget-boolean v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->forceStacking:Z

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setForceStack(Z)V

    .line 228
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    const v2, 0x101038c

    invoke-static {v1, v2, v6}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 230
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget v2, Lcom/afollestad/materialdialogs/R$attr;->textAllCaps:I

    invoke-static {v1, v2, v6}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    .line 235
    :cond_19
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 236
    iget-object v4, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->mediumFont:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2, v4}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 237
    invoke-virtual {v2, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setAllCapsCompat(Z)V

    .line 238
    iget-object v4, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v4, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 240
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    sget-object v4, Lcom/afollestad/materialdialogs/DialogAction;->POSITIVE:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual {p0, v4, v6}, Lcom/afollestad/materialdialogs/MaterialDialog;->getButtonSelector(Lcom/afollestad/materialdialogs/DialogAction;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStackedSelector(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    sget-object v4, Lcom/afollestad/materialdialogs/DialogAction;->POSITIVE:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual {p0, v4, v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->getButtonSelector(Lcom/afollestad/materialdialogs/DialogAction;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->setDefaultSelector(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    sget-object v4, Lcom/afollestad/materialdialogs/DialogAction;->POSITIVE:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual {v2, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTag(Ljava/lang/Object;)V

    .line 243
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {v2, p0}, Lcom/afollestad/materialdialogs/internal/MDButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {v2, v5}, Lcom/afollestad/materialdialogs/internal/MDButton;->setVisibility(I)V

    .line 246
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 247
    iget-object v4, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->mediumFont:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2, v4}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 248
    invoke-virtual {v2, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setAllCapsCompat(Z)V

    .line 249
    iget-object v4, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v4, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 251
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    sget-object v4, Lcom/afollestad/materialdialogs/DialogAction;->NEGATIVE:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual {p0, v4, v6}, Lcom/afollestad/materialdialogs/MaterialDialog;->getButtonSelector(Lcom/afollestad/materialdialogs/DialogAction;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStackedSelector(Landroid/graphics/drawable/Drawable;)V

    .line 252
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    sget-object v4, Lcom/afollestad/materialdialogs/DialogAction;->NEGATIVE:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual {p0, v4, v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->getButtonSelector(Lcom/afollestad/materialdialogs/DialogAction;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->setDefaultSelector(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    sget-object v4, Lcom/afollestad/materialdialogs/DialogAction;->NEGATIVE:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual {v2, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTag(Ljava/lang/Object;)V

    .line 254
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {v2, p0}, Lcom/afollestad/materialdialogs/internal/MDButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {v2, v5}, Lcom/afollestad/materialdialogs/internal/MDButton;->setVisibility(I)V

    .line 257
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 258
    iget-object v4, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->mediumFont:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2, v4}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 259
    invoke-virtual {v2, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setAllCapsCompat(Z)V

    .line 260
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 262
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    sget-object v2, Lcom/afollestad/materialdialogs/DialogAction;->NEUTRAL:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual {p0, v2, v6}, Lcom/afollestad/materialdialogs/MaterialDialog;->getButtonSelector(Lcom/afollestad/materialdialogs/DialogAction;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStackedSelector(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    sget-object v2, Lcom/afollestad/materialdialogs/DialogAction;->NEUTRAL:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual {p0, v2, v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->getButtonSelector(Lcom/afollestad/materialdialogs/DialogAction;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->setDefaultSelector(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    sget-object v2, Lcom/afollestad/materialdialogs/DialogAction;->NEUTRAL:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTag(Ljava/lang/Object;)V

    .line 265
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {v1, p0}, Lcom/afollestad/materialdialogs/internal/MDButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {v1, v5}, Lcom/afollestad/materialdialogs/internal/MDButton;->setVisibility(I)V

    .line 269
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackMultiChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;

    if-eqz v1, :cond_1a

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    .line 271
    :cond_1a
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_21

    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-gtz v1, :cond_1c

    :cond_1b
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    .line 272
    :cond_1c
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getListSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 276
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_20

    .line 278
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackSingleChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;

    if-eqz v1, :cond_1d

    .line 279
    sget-object v1, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->SINGLE:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    goto :goto_7

    .line 280
    :cond_1d
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackMultiChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;

    if-eqz v1, :cond_1e

    .line 281
    sget-object v1, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->MULTI:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    .line 282
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndices:[Ljava/lang/Integer;

    if-eqz v1, :cond_1f

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndices:[Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    const/4 v1, 0x0

    .line 284
    iput-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndices:[Ljava/lang/Integer;

    goto :goto_7

    .line 287
    :cond_1e
    sget-object v1, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->REGULAR:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    .line 289
    :cond_1f
    :goto_7
    new-instance v1, Lcom/afollestad/materialdialogs/DefaultAdapter;

    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    .line 290
    invoke-static {v2}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->getLayoutForType(Lcom/afollestad/materialdialogs/MaterialDialog$ListType;)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/afollestad/materialdialogs/DefaultAdapter;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;I)V

    iput-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    goto :goto_8

    .line 291
    :cond_20
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/afollestad/materialdialogs/internal/MDAdapter;

    if-eqz v1, :cond_21

    .line 293
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/afollestad/materialdialogs/internal/MDAdapter;

    invoke-interface {v1, p0}, Lcom/afollestad/materialdialogs/internal/MDAdapter;->setDialog(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 298
    :cond_21
    :goto_8
    invoke-static {p0}, Lcom/afollestad/materialdialogs/DialogInit;->setupProgressDialog(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 301
    invoke-static {p0}, Lcom/afollestad/materialdialogs/DialogInit;->setupInputDialog(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 304
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView:Landroid/view/View;

    if-eqz v1, :cond_25

    .line 305
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    sget v2, Lcom/afollestad/materialdialogs/R$id;->root:I

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->noTitleNoPadding()V

    .line 306
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    sget v2, Lcom/afollestad/materialdialogs/R$id;->customViewFrame:I

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 307
    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->customViewFrame:Landroid/widget/FrameLayout;

    .line 308
    iget-object v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView:Landroid/view/View;

    .line 309
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 310
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 311
    :cond_22
    iget-boolean v4, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->wrapCustomViewInScroll:Z

    const/4 v6, -0x2

    if-eqz v4, :cond_24

    .line 314
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 315
    sget v7, Lcom/afollestad/materialdialogs/R$dimen;->md_dialog_frame_margin:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 316
    new-instance v8, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 317
    sget v9, Lcom/afollestad/materialdialogs/R$dimen;->md_content_padding_top:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 318
    sget v10, Lcom/afollestad/materialdialogs/R$dimen;->md_content_padding_bottom:I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 319
    invoke-virtual {v8, v5}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 320
    instance-of v10, v2, Landroid/widget/EditText;

    if-eqz v10, :cond_23

    .line 322
    invoke-virtual {v8, v7, v9, v7, v4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    goto :goto_9

    .line 325
    :cond_23
    invoke-virtual {v8, v5, v9, v5, v4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 326
    invoke-virtual {v2, v7, v5, v7, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 328
    :goto_9
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v2, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v8

    .line 333
    :cond_24
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    :cond_25
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->showListener:Landroid/content/DialogInterface$OnShowListener;

    if-eqz v1, :cond_26

    .line 339
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->showListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 340
    :cond_26
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v1, :cond_27

    .line 341
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 342
    :cond_27
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_28

    .line 343
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 344
    :cond_28
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_29

    .line 345
    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 348
    :cond_29
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->setOnShowListenerInternal()V

    .line 351
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->invalidateList()V

    .line 352
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->setViewInternal(Landroid/view/View;)V

    .line 353
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->checkIfListInitScroll()V

    return-void
.end method

.method private static setupInputDialog(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 4

    .line 418
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 419
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    const v2, 0x1020009

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    .line 420
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    if-nez v1, :cond_0

    return-void

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->regularFont:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 422
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputPrefill:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputPrefill:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 424
    :cond_1
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->setInternalInputCallback()V

    .line 425
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputHint:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 427
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    iget v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 428
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    iget v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v2, v3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->adjustAlpha(IF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 429
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    invoke-static {v1, v2}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/EditText;I)V

    .line 431
    iget v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 432
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    iget v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputType:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 433
    iget v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputType:I

    const/16 v3, 0x90

    if-eq v1, v3, :cond_2

    iget v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputType:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 436
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 440
    :cond_2
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    sget v3, Lcom/afollestad/materialdialogs/R$id;->minMax:I

    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->inputMinMax:Landroid/widget/TextView;

    .line 441
    iget v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputMinLength:I

    if-gtz v1, :cond_4

    iget v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputMaxLength:I

    if-le v1, v2, :cond_3

    goto :goto_0

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->inputMinMax:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 446
    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->inputMinMax:Landroid/widget/TextView;

    goto :goto_1

    .line 442
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-boolean v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputAllowEmpty:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->invalidateInputMinMaxIndicator(IZ)V

    :goto_1
    return-void
.end method

.method private static setupProgressDialog(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 6

    .line 357
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 358
    iget-boolean v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->indeterminateProgress:Z

    if-nez v1, :cond_0

    iget v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress:I

    const/4 v2, -0x2

    if-le v1, v2, :cond_8

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 360
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    if-nez v1, :cond_1

    return-void

    .line 363
    :cond_1
    iget-boolean v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->indeterminateProgress:Z

    if-eqz v1, :cond_3

    .line 364
    iget-boolean v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->indeterminateIsHorizontalProgress:Z

    if-eqz v1, :cond_2

    .line 365
    new-instance v1, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;-><init>(Landroid/content/Context;)V

    .line 366
    iget v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    invoke-virtual {v1, v2}, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->setTint(I)V

    .line 367
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 370
    :cond_2
    new-instance v1, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;-><init>(Landroid/content/Context;)V

    .line 371
    iget v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    invoke-virtual {v1, v2}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->setTint(I)V

    .line 372
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 376
    :cond_3
    new-instance v1, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;-><init>(Landroid/content/Context;)V

    .line 377
    iget v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    invoke-virtual {v1, v2}, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->setTint(I)V

    .line 378
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    :goto_0
    iget-boolean v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->indeterminateProgress:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->indeterminateIsHorizontalProgress:Z

    if-eqz v1, :cond_8

    .line 386
    :cond_4
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    iget-boolean v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->indeterminateIsHorizontalProgress:Z

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 387
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 388
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    iget v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progressMax:I

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 389
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    sget v3, Lcom/afollestad/materialdialogs/R$id;->label:I

    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressLabel:Landroid/widget/TextView;

    .line 390
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 391
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressLabel:Landroid/widget/TextView;

    iget v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 392
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressLabel:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->mediumFont:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1, v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 393
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressLabel:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progressPercentFormat:Ljava/text/NumberFormat;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    :cond_5
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    sget v3, Lcom/afollestad/materialdialogs/R$id;->minMax:I

    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressMinMax:Landroid/widget/TextView;

    .line 396
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressMinMax:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 397
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressMinMax:Landroid/widget/TextView;

    iget v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressMinMax:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->regularFont:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1, v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 400
    iget-boolean v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->showMinMax:Z

    if-eqz v1, :cond_6

    .line 401
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressMinMax:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressMinMax:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progressNumberFormat:Ljava/lang/String;

    .line 403
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progressMax:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 402
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object p0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 405
    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 406
    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 408
    :cond_6
    iget-object p0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressMinMax:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 411
    :cond_7
    iput-boolean v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->showMinMax:Z

    :cond_8
    :goto_1
    return-void
.end method
