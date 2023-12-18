.class public Lcom/afollestad/materialdialogs/util/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustAlpha(IF)I
    .locals 2

    .line 39
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 40
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 41
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 42
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 43
    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static getActionTextColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3

    .line 85
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 87
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 88
    iget p1, v0, Landroid/util/TypedValue;->data:I

    invoke-static {p0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    const v0, 0x1010036

    .line 238
    invoke-static {p0, v0}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result p0

    if-nez p1, :cond_0

    move p1, p0

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [[I

    const v0, -0x101009e

    .line 240
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v0, 0x1

    new-array v1, v1, [I

    aput-object v1, p0, v0

    const v0, 0x3ecccccd    # 0.4f

    .line 245
    invoke-static {p1, v0}, Lcom/afollestad/materialdialogs/util/DialogUtils;->adjustAlpha(IF)I

    move-result v0

    filled-new-array {v0, p1}, [I

    move-result-object p1

    .line 248
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getColorArray(Landroid/content/Context;I)[I
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 253
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 254
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    new-array p1, p1, [I

    const/4 v0, 0x0

    move v1, v0

    .line 255
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 256
    invoke-virtual {p0, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method private static gravityEnumToAttrInt(Lcom/afollestad/materialdialogs/GravityEnum;)I
    .locals 1

    .line 127
    sget-object v0, Lcom/afollestad/materialdialogs/util/DialogUtils$2;->$SwitchMap$com$afollestad$materialdialogs$GravityEnum:[I

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/GravityEnum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static hideKeyboard(Landroid/content/DialogInterface;Lcom/afollestad/materialdialogs/MaterialDialog$Builder;)V
    .locals 1

    .line 224
    check-cast p0, Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 225
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getInputEditText()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    return-void
.end method

.method public static isColorDark(I)Z
    .locals 6

    .line 196
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-double v2, p0

    const-wide v4, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double p0, v2, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static resolveActionTextColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 4

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 63
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p2

    .line 67
    :cond_0
    :try_start_1
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1

    .line 68
    iget p2, v1, Landroid/util/TypedValue;->data:I

    invoke-static {p0, p2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 70
    :cond_1
    :try_start_2
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_2

    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p2

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    throw p0
.end method

.method public static resolveBoolean(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-static {p0, p1, v0}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result p0

    return p0
.end method

.method public static resolveBoolean(Landroid/content/Context;IZ)Z
    .locals 0

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 185
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    throw p1
.end method

.method public static resolveColor(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-static {p0, p1, v0}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static resolveColor(Landroid/content/Context;II)I
    .locals 0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    throw p1
.end method

.method public static resolveDimension(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, -0x1

    .line 170
    invoke-static {p0, p1, v0}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDimension(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method private static resolveDimension(Landroid/content/Context;II)I
    .locals 0

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 176
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    throw p1
.end method

.method public static resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-static {p0, p1, v0}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDrawable(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static resolveDrawable(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 160
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    .line 165
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p2

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    throw p1
.end method

.method public static resolveGravityEnum(Landroid/content/Context;ILcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/GravityEnum;
    .locals 0

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 140
    :try_start_0
    invoke-static {p2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->gravityEnumToAttrInt(Lcom/afollestad/materialdialogs/GravityEnum;)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 146
    sget-object p1, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    .line 144
    :cond_0
    :try_start_1
    sget-object p1, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    .line 142
    :cond_1
    :try_start_2
    sget-object p1, Lcom/afollestad/materialdialogs/GravityEnum;->CENTER:Lcom/afollestad/materialdialogs/GravityEnum;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    throw p1
.end method

.method public static resolveString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 123
    iget-object p0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 205
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static showKeyboard(Landroid/content/DialogInterface;Lcom/afollestad/materialdialogs/MaterialDialog$Builder;)V
    .locals 2

    .line 210
    check-cast p0, Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 211
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getInputEditText()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getInputEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/afollestad/materialdialogs/util/DialogUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils$1;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/MaterialDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
