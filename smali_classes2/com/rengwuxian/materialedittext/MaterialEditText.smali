.class public Lcom/rengwuxian/materialedittext/MaterialEditText;
.super Landroid/widget/EditText;
.source "MaterialEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rengwuxian/materialedittext/MaterialEditText$FloatingLabelType;
    }
.end annotation


# static fields
.field public static final FLOATING_LABEL_HIGHLIGHT:I = 0x2

.field public static final FLOATING_LABEL_NONE:I = 0x0

.field public static final FLOATING_LABEL_NORMAL:I = 0x1


# instance fields
.field private accentTypeface:Landroid/graphics/Typeface;

.field private baseColor:I

.field private final bottomEllipsisSize:I

.field private bottomLines:F

.field bottomLinesAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private final bottomSpacing:I

.field private currentBottomLines:F

.field private errorColor:I

.field private extraPaddingBottom:I

.field private extraPaddingTop:I

.field private floatingLabelEnabled:Z

.field private floatingLabelFraction:F

.field private floatingLabelShown:Z

.field private floatingLabelSpacing:I

.field private floatingLabelText:Ljava/lang/CharSequence;

.field private final floatingLabelTextSize:I

.field private focusEvaluator:Lcom/nineoldandroids/animation/ArgbEvaluator;

.field private focusFraction:F

.field fontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private helperText:Ljava/lang/String;

.field private helperTextColor:I

.field private hideUnderline:Z

.field private highlightFloatingLabel:Z

.field innerFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private innerPaddingBottom:I

.field private innerPaddingTop:I

.field labelAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

.field labelFocusAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private maxCharacters:I

.field private minBottomLines:I

.field private minBottomTextLines:I

.field private minCharacters:I

.field outerFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field paint:Landroid/graphics/Paint;

.field private primaryColor:I

.field private singleLineEllipsis:Z

.field private tempErrorText:Ljava/lang/String;

.field textLayout:Landroid/text/StaticLayout;

.field textPaint:Landroid/text/TextPaint;

.field private validators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rengwuxian/materialedittext/validation/METValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 212
    invoke-direct {p0, p1, v0}, Lcom/rengwuxian/materialedittext/MaterialEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, p1, p2, v0}, Lcom/rengwuxian/materialedittext/MaterialEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 221
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 162
    iput p3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->helperTextColor:I

    .line 199
    new-instance v0, Lcom/nineoldandroids/animation/ArgbEvaluator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->focusEvaluator:Lcom/nineoldandroids/animation/ArgbEvaluator;

    .line 200
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->paint:Landroid/graphics/Paint;

    .line 201
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textPaint:Landroid/text/TextPaint;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->validators:Ljava/util/ArrayList;

    .line 223
    invoke-virtual {p0, v1}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setFocusable(Z)V

    .line 224
    invoke-virtual {p0, v1}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setFocusableInTouchMode(Z)V

    .line 225
    invoke-virtual {p0, v1}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setClickable(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/rengwuxian/materialedittext/R$dimen;->floating_label_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelTextSize:I

    .line 228
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/rengwuxian/materialedittext/R$dimen;->inner_components_spacing:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomSpacing:I

    .line 229
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/rengwuxian/materialedittext/R$dimen;->bottom_ellipsis_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomEllipsisSize:I

    .line 234
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010054

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 236
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Lcom/rengwuxian/materialedittext/Colors;->getBaseColor(I)I

    move-result v0

    .line 238
    sget-object v2, Lcom/rengwuxian/materialedittext/R$styleable;->MaterialEditText:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 239
    sget v2, Lcom/rengwuxian/materialedittext/R$styleable;->MaterialEditText_baseColor:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->baseColor:I

    .line 240
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v2, 0x2

    new-array v2, v2, [[I

    const v3, 0x101009e

    filled-new-array {v3}, [I

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/rengwuxian/materialedittext/MaterialEditText;->EMPTY_STATE_SET:[I

    aput-object v3, v2, v1

    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->baseColor:I

    const v5, 0xffffff

    and-int v6, v3, v5

    const/high16 v7, -0x21000000

    or-int/2addr v6, v7

    and-int/2addr v3, v5

    const/high16 v5, 0x44000000    # 512.0f

    or-int/2addr v3, v5

    filled-new-array {v6, v3}, [I

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 241
    invoke-virtual {p0, v0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 245
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 250
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010433

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 251
    iget p1, v0, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "colorPrimary"

    const-string v5, "attr"

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 257
    iget p1, v0, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 259
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "colorAccent not found"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    :catch_1
    iget p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->baseColor:I

    .line 266
    :goto_0
    sget v0, Lcom/rengwuxian/materialedittext/R$styleable;->MaterialEditText_primaryColor:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->primaryColor:I

    .line 267
    sget p1, Lcom/rengwuxian/materialedittext/R$styleable;->MaterialEditText_floatingLabel:I

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setFloatingLabelInternal(I)V

    .line 268
    sget p1, Lcom/rengwuxian/materialedittext/R$styleable;->MaterialEditText_errorColor:I

    const-string v0, "#e7492E"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->errorColor:I

    .line 269
    sget p1, Lcom/rengwuxian/materialedittext/R$styleable;->MaterialEditText_minCharacters:I

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->minCharacters:I

    .line 270
    sget p1, Lcom/rengwuxian/materialedittext/R$styleable;->MaterialEditText_maxCharacters:I

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->maxCharacters:I

    .line 271
    sget p1, Lcom/rengwuxian/materialedittext/R$styleable;->MaterialEditText_singleLineEllipsis:I

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->singleLineEllipsis:Z

    .line 272
    sget p1, Lcom/rengwuxian/materialedittext/R$styleable;->MaterialEditText_helperText:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->helperText:Ljava/lang/String;

    .line 273
    sget p1, Lcom/rengwuxian/materialedittext/R$styleable;->MaterialEditText_helperTextColor:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->helperTextColor:I

    .line 274
    sget p1, Lcom/rengwuxian/materialedittext/R$styleable;->MaterialEditText_minBottomTextLines:I

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->minBottomTextLines:I

    .line 275
    sget p1, Lcom/rengwuxian/materialedittext/R$styleable;->MaterialEditText_accentTypeface:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 277
    invoke-direct {p0, p1}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getCustomTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->accentTypeface:Landroid/graphics/Typeface;

    .line 278
    iget-object p3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p3, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 280
    :cond_1
    sget p1, Lcom/rengwuxian/materialedittext/R$styleable;->MaterialEditText_floatingLabelText:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelText:Ljava/lang/CharSequence;

    if-nez p1, :cond_2

    .line 282
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelText:Ljava/lang/CharSequence;

    .line 284
    :cond_2
    sget p1, Lcom/rengwuxian/materialedittext/R$styleable;->MaterialEditText_floatingLabelSpacing:I

    iget p3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomSpacing:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelSpacing:I

    .line 285
    sget p1, Lcom/rengwuxian/materialedittext/R$styleable;->MaterialEditText_hideUnderline:I

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->hideUnderline:Z

    .line 286
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    .line 289
    invoke-virtual {p0, p1}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 293
    iget-boolean p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->singleLineEllipsis:Z

    if-eqz p1, :cond_3

    .line 294
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p1

    .line 295
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setSingleLine()V

    .line 296
    invoke-virtual {p0, p1}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 298
    :cond_3
    iget-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textPaint:Landroid/text/TextPaint;

    iget p2, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelTextSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 299
    iget-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 300
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->initMinBottomLines()V

    .line 301
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->initPadding()V

    .line 302
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->initText()V

    .line 303
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->initFloatingLabel()V

    .line 304
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->initErrorTextListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/rengwuxian/materialedittext/MaterialEditText;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelShown:Z

    return p0
.end method

.method static synthetic access$002(Lcom/rengwuxian/materialedittext/MaterialEditText;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelShown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/rengwuxian/materialedittext/MaterialEditText;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getLabelAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/rengwuxian/materialedittext/MaterialEditText;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getLabelFocusAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private adjustBottomLines()V
    .locals 9

    .line 467
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->tempErrorText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->tempErrorText:Ljava/lang/String;

    iget-object v3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getBottomTextLeftOffset()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getBottomTextRightOffset()I

    move-result v4

    sub-int v4, v1, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textLayout:Landroid/text/StaticLayout;

    .line 469
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->minBottomTextLines:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->helperText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 471
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->helperText:Ljava/lang/String;

    iget-object v3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getBottomTextLeftOffset()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getBottomTextRightOffset()I

    move-result v4

    sub-int v4, v1, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textLayout:Landroid/text/StaticLayout;

    .line 472
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->minBottomTextLines:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 474
    :cond_1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->minBottomLines:I

    .line 476
    :goto_0
    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomLines:F

    int-to-float v0, v0

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    .line 477
    invoke-direct {p0, v0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getBottomLinesAnimator(F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 479
    :cond_2
    iput v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomLines:F

    return-void
.end method

.method private getBottomLinesAnimator(F)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 3

    .line 793
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomLinesAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [F

    aput p1, v0, v1

    const-string p1, "currentBottomLines"

    .line 794
    invoke-static {p0, p1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomLinesAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    goto :goto_0

    .line 796
    :cond_0
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->end()V

    .line 797
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomLinesAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    new-array v2, v2, [F

    aput p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    .line 799
    :goto_0
    iget-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomLinesAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    return-object p1
.end method

.method private getBottomTextLeftOffset()I
    .locals 2

    .line 907
    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->singleLineEllipsis:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomEllipsisSize:I

    mul-int/lit8 v0, v0, 0x5

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getPixel(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getBottomTextRightOffset()I
    .locals 2

    .line 911
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->hasCharatersCounter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textPaint:Landroid/text/TextPaint;

    const-string v1, "00/000"

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getCustomTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1

    .line 338
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method private getLabelAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 2

    .line 779
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->labelAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 780
    fill-array-data v0, :array_0

    const-string v1, "floatingLabelFraction"

    invoke-static {p0, v1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->labelAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->labelAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getLabelFocusAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->labelFocusAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 787
    fill-array-data v0, :array_0

    const-string v1, "focusFraction"

    invoke-static {p0, v1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->labelFocusAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->labelFocusAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getPixel(I)I
    .locals 1

    .line 416
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/rengwuxian/materialedittext/Density;->dp2px(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method private hasCharatersCounter()Z
    .locals 1

    .line 919
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->minCharacters:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->maxCharacters:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private initErrorTextListener()V
    .locals 1

    .line 321
    new-instance v0, Lcom/rengwuxian/materialedittext/MaterialEditText$1;

    invoke-direct {v0, p0}, Lcom/rengwuxian/materialedittext/MaterialEditText$1;-><init>(Lcom/rengwuxian/materialedittext/MaterialEditText;)V

    invoke-virtual {p0, v0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initFloatingLabel()V
    .locals 1

    .line 497
    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelEnabled:Z

    if-eqz v0, :cond_0

    .line 499
    new-instance v0, Lcom/rengwuxian/materialedittext/MaterialEditText$2;

    invoke-direct {v0, p0}, Lcom/rengwuxian/materialedittext/MaterialEditText$2;-><init>(Lcom/rengwuxian/materialedittext/MaterialEditText;)V

    invoke-virtual {p0, v0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 525
    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->highlightFloatingLabel:Z

    if-eqz v0, :cond_0

    .line 527
    new-instance v0, Lcom/rengwuxian/materialedittext/MaterialEditText$3;

    invoke-direct {v0, p0}, Lcom/rengwuxian/materialedittext/MaterialEditText$3;-><init>(Lcom/rengwuxian/materialedittext/MaterialEditText;)V

    iput-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->innerFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 544
    invoke-super {p0, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    return-void
.end method

.method private initMinBottomLines()V
    .locals 4

    .line 431
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->minCharacters:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->maxCharacters:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->singleLineEllipsis:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->tempErrorText:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->helperText:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 432
    :goto_1
    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->minBottomTextLines:I

    if-lez v3, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    :goto_2
    iput v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->minBottomLines:I

    int-to-float v0, v1

    iput v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->currentBottomLines:F

    return-void
.end method

.method private initPadding()V
    .locals 4

    .line 420
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->extraPaddingTop:I

    sub-int/2addr v0, v1

    .line 421
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getPaddingBottom()I

    move-result v1

    iget v2, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->extraPaddingBottom:I

    sub-int/2addr v1, v2

    .line 422
    iget-boolean v2, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelEnabled:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelTextSize:I

    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelSpacing:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelSpacing:I

    :goto_0
    iput v2, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->extraPaddingTop:I

    .line 423
    iget-object v2, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->currentBottomLines:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-boolean v3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->hideUnderline:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomSpacing:I

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomSpacing:I

    mul-int/lit8 v3, v3, 0x2

    :goto_1
    add-int/2addr v2, v3

    iput v2, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->extraPaddingBottom:I

    .line 424
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setPaddings(IIII)V

    return-void
.end method

.method private initText()V
    .locals 4

    .line 308
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, 0x44000000    # 512.0f

    const v2, 0xffffff

    if-nez v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v3, 0x0

    .line 310
    invoke-virtual {p0, v3}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->baseColor:I

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setHintTextColor(I)V

    .line 312
    invoke-virtual {p0, v0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 313
    iput v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelFraction:F

    const/4 v0, 0x1

    .line 314
    iput-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelShown:Z

    goto :goto_0

    .line 316
    :cond_0
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->baseColor:I

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setHintTextColor(I)V

    :goto_0
    return-void
.end method

.method private isInternalValid()Z
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->tempErrorText:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->isCharactersCountValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setFloatingLabelInternal(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 571
    iput-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelEnabled:Z

    .line 572
    iput-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->highlightFloatingLabel:Z

    goto :goto_0

    .line 567
    :cond_0
    iput-boolean v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelEnabled:Z

    .line 568
    iput-boolean v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->highlightFloatingLabel:Z

    goto :goto_0

    .line 563
    :cond_1
    iput-boolean v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelEnabled:Z

    .line 564
    iput-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->highlightFloatingLabel:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public addValidator(Lcom/rengwuxian/materialedittext/validation/METValidator;)Lcom/rengwuxian/materialedittext/MaterialEditText;
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->validators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getAccentTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->accentTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getCurrentBottomLines()F
    .locals 1

    .line 360
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->currentBottomLines:F

    return v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->tempErrorText:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorColor()I
    .locals 1

    .line 625
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->errorColor:I

    return v0
.end method

.method public getFloatingLabelFraction()F
    .locals 1

    .line 342
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelFraction:F

    return v0
.end method

.method public getFloatingLabelSpacing()I
    .locals 1

    .line 583
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelSpacing:I

    return v0
.end method

.method public getFloatingLabelText()Ljava/lang/CharSequence;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFocusFraction()F
    .locals 1

    .line 351
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->focusFraction:F

    return v0
.end method

.method public getHelperText()Ljava/lang/String;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->helperText:Ljava/lang/String;

    return-object v0
.end method

.method public getHelperTextColor()I
    .locals 1

    .line 644
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->helperTextColor:I

    return v0
.end method

.method public getHideUnderline()Z
    .locals 1

    .line 383
    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->hideUnderline:Z

    return v0
.end method

.method public getInnerPaddingBottom()I
    .locals 1

    .line 493
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->innerPaddingBottom:I

    return v0
.end method

.method public getInnerPaddingTop()I
    .locals 1

    .line 486
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->innerPaddingTop:I

    return v0
.end method

.method public getMaxCharacters()I
    .locals 1

    .line 603
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->maxCharacters:I

    return v0
.end method

.method public getMinCharacters()I
    .locals 1

    .line 614
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->minCharacters:I

    return v0
.end method

.method public getValidators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rengwuxian/materialedittext/validation/METValidator;",
            ">;"
        }
    .end annotation

    .line 766
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->validators:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasValidator()Z
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->validators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCharactersCountValid()Z
    .locals 2

    .line 915
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->hasCharatersCounter()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->minCharacters:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->maxCharacters:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->maxCharacters:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 681
    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 682
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 683
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 804
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 806
    iget-boolean v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->hideUnderline:Z

    const/4 v2, 0x2

    if-nez v1, :cond_3

    .line 807
    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomSpacing:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 810
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->isInternalValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 811
    iget-object v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->errorColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 812
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getScrollX()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getScrollX()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v6, v1

    invoke-direct {p0, v2}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getPixel(I)I

    move-result v1

    int-to-float v1, v1

    add-float v7, v0, v1

    iget-object v8, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 813
    :cond_0
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->isEnabled()Z

    move-result v1

    const/high16 v3, 0x44000000    # 512.0f

    const v4, 0xffffff

    const/4 v9, 0x1

    if-nez v1, :cond_1

    .line 814
    iget-object v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->baseColor:I

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 815
    invoke-direct {p0, v9}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getPixel(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    move v10, v3

    .line 816
    :goto_0
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v10, v3

    if-gez v3, :cond_3

    .line 817
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float v4, v3, v10

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v10

    add-float v6, v3, v1

    invoke-direct {p0, v9}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getPixel(I)I

    move-result v3

    int-to-float v3, v3

    add-float v7, v0, v3

    iget-object v8, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v1

    add-float/2addr v10, v3

    goto :goto_0

    .line 819
    :cond_1
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 820
    iget-object v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->primaryColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 821
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getScrollX()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getScrollX()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v6, v1

    invoke-direct {p0, v2}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getPixel(I)I

    move-result v1

    int-to-float v1, v1

    add-float v7, v0, v1

    iget-object v8, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 823
    :cond_2
    iget-object v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->baseColor:I

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 824
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getScrollX()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getScrollX()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v6, v1

    invoke-direct {p0, v9}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getPixel(I)I

    move-result v1

    int-to-float v1, v1

    add-float v7, v0, v1

    iget-object v8, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 828
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    iget-object v3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, v3

    .line 829
    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelTextSize:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v3, v4

    .line 832
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->hasCharatersCounter()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->isCharactersCountValid()Z

    move-result v4

    if-nez v4, :cond_9

    .line 833
    :cond_5
    iget-object v4, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->isCharactersCountValid()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getCurrentHintTextColor()I

    move-result v5

    goto :goto_2

    :cond_6
    iget v5, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->errorColor:I

    :goto_2
    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 835
    iget v4, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->minCharacters:I

    const-string v5, " / "

    if-gtz v4, :cond_7

    .line 836
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->maxCharacters:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 837
    :cond_7
    iget v4, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->maxCharacters:I

    if-gtz v4, :cond_8

    .line 838
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->minCharacters:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 840
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->minCharacters:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->maxCharacters:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 843
    :goto_3
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomSpacing:I

    int-to-float v6, v6

    add-float/2addr v6, v0

    add-float/2addr v6, v1

    iget-object v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v5, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 847
    :cond_9
    iget-object v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_c

    .line 848
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getScrollX()I

    move-result v1

    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getBottomTextLeftOffset()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    .line 849
    iget-object v4, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->tempErrorText:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 850
    iget-object v4, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->errorColor:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 851
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 852
    iget v4, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomSpacing:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    sub-float/2addr v4, v3

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 853
    iget-object v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 854
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 855
    :cond_a
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->helperText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 856
    iget-object v4, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->helperTextColor:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getCurrentHintTextColor()I

    move-result v5

    :goto_4
    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 857
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 858
    iget v4, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomSpacing:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    sub-float/2addr v4, v3

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 859
    iget-object v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 860
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 865
    :cond_c
    :goto_5
    iget-boolean v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelEnabled:Z

    const/4 v3, 0x5

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 867
    iget-object v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->focusEvaluator:Lcom/nineoldandroids/animation/ArgbEvaluator;

    iget v5, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->focusFraction:F

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getCurrentHintTextColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->primaryColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/nineoldandroids/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 870
    iget-object v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelText:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 871
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getScrollX()I

    move-result v4

    .line 872
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getGravity()I

    move-result v5

    const/4 v6, 0x3

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_d

    .line 873
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getPaddingLeft()I

    move-result v1

    :goto_6
    add-int/2addr v4, v1

    goto :goto_7

    .line 874
    :cond_d
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getGravity()I

    move-result v5

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_e

    int-to-float v4, v4

    .line 875
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v5, v1

    add-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_7

    .line 877
    :cond_e
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v6, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v6, v1

    add-float/2addr v5, v6

    float-to-int v1, v5

    goto :goto_6

    .line 881
    :goto_7
    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->innerPaddingTop:I

    iget v5, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelTextSize:I

    add-int/2addr v1, v5

    iget v5, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelSpacing:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    int-to-float v5, v5

    .line 883
    iget v6, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelFraction:F

    mul-float/2addr v5, v6

    sub-float/2addr v1, v5

    float-to-int v1, v1

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v6, v5

    const v5, 0x3f3d70a4    # 0.74f

    .line 886
    iget v7, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->focusFraction:F

    mul-float/2addr v7, v5

    const v5, 0x3e851eb8    # 0.26f

    add-float/2addr v7, v5

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 887
    iget-object v6, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 890
    iget-object v5, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelText:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    int-to-float v4, v4

    int-to-float v1, v1

    iget-object v6, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v5, v4, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 894
    :cond_f
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->singleLineEllipsis:Z

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_10

    .line 895
    iget-object v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->primaryColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 896
    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomSpacing:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 897
    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomEllipsisSize:I

    div-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getScrollX()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomEllipsisSize:I

    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v0

    div-int/2addr v4, v2

    int-to-float v4, v4

    iget-object v6, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 898
    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomEllipsisSize:I

    mul-int/2addr v1, v3

    div-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getScrollX()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomEllipsisSize:I

    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v0

    div-int/2addr v3, v2

    int-to-float v3, v3

    iget-object v5, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 899
    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomEllipsisSize:I

    mul-int/lit8 v1, v1, 0x9

    div-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getScrollX()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->bottomEllipsisSize:I

    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    add-float/2addr v0, v4

    div-int/2addr v3, v2

    int-to-float v2, v3

    iget-object v3, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 903
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 455
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getMeasuredWidth()I

    move-result v0

    .line 456
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    .line 457
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_0

    if-eq v0, p1, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->adjustBottomLines()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 924
    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->singleLineEllipsis:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getScrollX()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getPixel(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->extraPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->innerPaddingBottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->innerPaddingBottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 925
    invoke-virtual {p0, p1}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setSelection(I)V

    return p1

    .line 928
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAccentTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 377
    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->accentTypeface:Landroid/graphics/Typeface;

    .line 378
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 379
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->postInvalidate()V

    return-void
.end method

.method public setBaseColor(I)V
    .locals 0

    .line 551
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->baseColor:I

    .line 552
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->postInvalidate()V

    return-void
.end method

.method public setCurrentBottomLines(F)V
    .locals 0

    .line 364
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->currentBottomLines:F

    .line 365
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->initPadding()V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 654
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->tempErrorText:Ljava/lang/String;

    .line 655
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->adjustBottomLines()V

    .line 656
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->postInvalidate()V

    return-void
.end method

.method public setErrorColor(I)V
    .locals 0

    .line 629
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->errorColor:I

    .line 630
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->postInvalidate()V

    return-void
.end method

.method public setFloatingLabel(I)V
    .locals 0

    .line 578
    invoke-direct {p0, p1}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setFloatingLabelInternal(I)V

    .line 579
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->postInvalidate()V

    return-void
.end method

.method public setFloatingLabelFraction(F)V
    .locals 0

    .line 346
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelFraction:F

    .line 347
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->invalidate()V

    return-void
.end method

.method public setFloatingLabelSpacing(I)V
    .locals 0

    .line 587
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelSpacing:I

    .line 588
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->postInvalidate()V

    return-void
.end method

.method public setFloatingLabelText(Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->floatingLabelText:Ljava/lang/CharSequence;

    .line 412
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->postInvalidate()V

    return-void
.end method

.method public setFocusFraction(F)V
    .locals 0

    .line 355
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->focusFraction:F

    .line 356
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->invalidate()V

    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 634
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->helperText:Ljava/lang/String;

    .line 635
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->adjustBottomLines()V

    .line 636
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->postInvalidate()V

    return-void
.end method

.method public setHelperTextColor(I)V
    .locals 0

    .line 648
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->helperTextColor:I

    .line 649
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->postInvalidate()V

    return-void
.end method

.method public setHideUnderline(Z)V
    .locals 0

    .line 394
    iput-boolean p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->hideUnderline:Z

    .line 395
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->initPadding()V

    .line 396
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->postInvalidate()V

    return-void
.end method

.method public setMaxCharacters(I)V
    .locals 0

    .line 607
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->maxCharacters:I

    .line 608
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->initMinBottomLines()V

    .line 609
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->initPadding()V

    .line 610
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->postInvalidate()V

    return-void
.end method

.method public setMinCharacters(I)V
    .locals 0

    .line 618
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->minCharacters:I

    .line 619
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->initMinBottomLines()V

    .line 620
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->initPadding()V

    .line 621
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->postInvalidate()V

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->innerFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-nez v0, :cond_0

    .line 772
    invoke-super {p0, p1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    .line 774
    :cond_0
    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->outerFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    :goto_0
    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setPadding(IIII)V

    return-void
.end method

.method public setPaddings(IIII)V
    .locals 1

    .line 448
    iput p2, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->innerPaddingTop:I

    .line 449
    iput p4, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->innerPaddingBottom:I

    .line 450
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->extraPaddingTop:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->extraPaddingBottom:I

    add-int/2addr p4, v0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setPadding(IIII)V

    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 0

    .line 556
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->primaryColor:I

    .line 557
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->postInvalidate()V

    return-void
.end method

.method public setSingleLineEllipsis()V
    .locals 1

    const/4 v0, 0x1

    .line 592
    invoke-virtual {p0, v0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setSingleLineEllipsis(Z)V

    return-void
.end method

.method public setSingleLineEllipsis(Z)V
    .locals 0

    .line 596
    iput-boolean p1, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->singleLineEllipsis:Z

    .line 597
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->initMinBottomLines()V

    .line 598
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->initPadding()V

    .line 599
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->postInvalidate()V

    return-void
.end method

.method public validate()Z
    .locals 7

    .line 727
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->validators:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 731
    :cond_0
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 732
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 735
    :goto_0
    iget-object v4, p0, Lcom/rengwuxian/materialedittext/MaterialEditText;->validators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/rengwuxian/materialedittext/validation/METValidator;

    if-eqz v5, :cond_3

    .line 737
    invoke-virtual {v6, v0, v2}, Lcom/rengwuxian/materialedittext/validation/METValidator;->isValid(Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    if-nez v5, :cond_2

    .line 739
    invoke-virtual {v6}, Lcom/rengwuxian/materialedittext/validation/METValidator;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setError(Ljava/lang/CharSequence;)V

    .line 744
    :cond_4
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->postInvalidate()V

    return v5

    :cond_5
    :goto_2
    return v1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 694
    invoke-virtual {p0, p1}, Lcom/rengwuxian/materialedittext/MaterialEditText;->isValid(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 696
    invoke-virtual {p0, p2}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setError(Ljava/lang/CharSequence;)V

    .line 698
    :cond_0
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->postInvalidate()V

    return p1
.end method

.method public validateWith(Lcom/rengwuxian/materialedittext/validation/METValidator;)Z
    .locals 2

    .line 709
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 710
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/rengwuxian/materialedittext/validation/METValidator;->isValid(Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 712
    invoke-virtual {p1}, Lcom/rengwuxian/materialedittext/validation/METValidator;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setError(Ljava/lang/CharSequence;)V

    .line 714
    :cond_1
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->postInvalidate()V

    return v0
.end method
