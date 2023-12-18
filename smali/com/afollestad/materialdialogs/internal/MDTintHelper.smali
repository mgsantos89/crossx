.class public Lcom/afollestad/materialdialogs/internal/MDTintHelper;
.super Ljava/lang/Object;
.source "MDTintHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEditTextColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [[I

    new-array v0, v0, [I

    const v2, -0x101009e

    .line 102
    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 103
    sget v2, Lcom/afollestad/materialdialogs/R$attr;->colorControlNormal:I

    invoke-static {p0, v2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v3

    const v2, -0x10100a7

    const v4, -0x101009c

    .line 105
    filled-new-array {v2, v4}, [I

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 106
    sget v2, Lcom/afollestad/materialdialogs/R$attr;->colorControlNormal:I

    invoke-static {p0, v2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result p0

    aput p0, v0, v4

    new-array p0, v3, [I

    const/4 v2, 0x2

    aput-object p0, v1, v2

    aput p1, v0, v2

    .line 110
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method private static setCursorTint(Landroid/widget/EditText;I)V
    .locals 7

    .line 143
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mCursorDrawableRes"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 146
    const-class v2, Landroid/widget/TextView;

    const-string v3, "mEditor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 147
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 148
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mCursorDrawable"

    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 151
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    .line 153
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 154
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    aput-object p0, v4, v1

    aget-object p0, v4, v6

    .line 155
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    aget-object p0, v4, v1

    .line 156
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 157
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 159
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setTint(Landroid/widget/CheckBox;I)V
    .locals 4

    .line 124
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v1, v1, [[I

    const v2, -0x10100a0

    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x10100a0

    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 128
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/afollestad/materialdialogs/R$attr;->colorControlNormal:I

    invoke-static {v2, v3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v2

    filled-new-array {v2, p1}, [I

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 132
    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setTint(Landroid/widget/EditText;I)V
    .locals 2

    .line 114
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->createEditTextColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 115
    instance-of v1, p0, Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v1, :cond_0

    .line 116
    move-object v1, p0

    check-cast v1, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 120
    :goto_0
    invoke-static {p0, p1}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setCursorTint(Landroid/widget/EditText;I)V

    return-void
.end method

.method public static setTint(Landroid/widget/ProgressBar;I)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, p1, v0}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/ProgressBar;IZ)V

    return-void
.end method

.method public static setTint(Landroid/widget/ProgressBar;IZ)V
    .locals 0

    .line 80
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 83
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V

    if-nez p2, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public static setTint(Landroid/widget/RadioButton;I)V
    .locals 4

    .line 32
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v1, v1, [[I

    const v2, -0x10100a0

    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x10100a0

    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 36
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/afollestad/materialdialogs/R$attr;->colorControlNormal:I

    invoke-static {v2, v3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v2

    filled-new-array {v2, p1}, [I

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setTint(Landroid/widget/SeekBar;I)V
    .locals 0

    .line 50
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
