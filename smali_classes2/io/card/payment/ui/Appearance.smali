.class public Lio/card/payment/ui/Appearance;
.super Ljava/lang/Object;
.source "Appearance.java"


# static fields
.field public static final ACTIONBAR_BACKGROUND:Landroid/graphics/drawable/Drawable;

.field public static final BUTTON_PRIMARY_DISABLED_COLOR:I

.field public static final BUTTON_PRIMARY_FOCUS_COLOR:I

.field public static final BUTTON_PRIMARY_NORMAL_COLOR:I

.field public static final BUTTON_PRIMARY_PRESSED_COLOR:I

.field public static final BUTTON_SECONDARY_DISABLED_COLOR:I

.field public static final BUTTON_SECONDARY_FOCUS_COLOR:I

.field public static final BUTTON_SECONDARY_NORMAL_COLOR:I

.field public static final BUTTON_SECONDARY_PRESSED_COLOR:I

.field public static final BUTTON_STATE_DISABLED:[I

.field public static final BUTTON_STATE_FOCUSED:[I

.field public static final BUTTON_STATE_NORMAL:[I

.field public static final BUTTON_STATE_PRESSED:[I

.field public static final DEFAULT_BACKGROUND_COLOR:I

.field public static final PAL_BLUE_COLOR:I

.field public static final PAL_BLUE_COLOR_OPACITY_66:I

.field public static final PAY_BLUE_COLOR:I

.field public static final TEXT_COLOR_ERROR:I

.field public static final TEXT_COLOR_LABEL:I

.field public static final TEXT_COLOR_LIGHT:I

.field public static final TYPEFACE_BUTTON:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const v0, 0x10100a7

    const v1, 0x101009e

    .line 36
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lio/card/payment/ui/Appearance;->BUTTON_STATE_PRESSED:[I

    .line 38
    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lio/card/payment/ui/Appearance;->BUTTON_STATE_NORMAL:[I

    const v0, -0x101009e

    .line 39
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lio/card/payment/ui/Appearance;->BUTTON_STATE_DISABLED:[I

    const v0, 0x101009c

    .line 40
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lio/card/payment/ui/Appearance;->BUTTON_STATE_FOCUSED:[I

    const-string v0, "#003087"

    .line 44
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/card/payment/ui/Appearance;->PAY_BLUE_COLOR:I

    const-string v1, "#009CDE"

    .line 45
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lio/card/payment/ui/Appearance;->PAL_BLUE_COLOR:I

    const-string v2, "#aa009CDE"

    .line 46
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sput v2, Lio/card/payment/ui/Appearance;->PAL_BLUE_COLOR_OPACITY_66:I

    .line 50
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const-string v4, "#717074"

    .line 51
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v3, Lio/card/payment/ui/Appearance;->ACTIONBAR_BACKGROUND:Landroid/graphics/drawable/Drawable;

    const-string v3, "#f5f5f5"

    .line 52
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lio/card/payment/ui/Appearance;->DEFAULT_BACKGROUND_COLOR:I

    .line 54
    sput v1, Lio/card/payment/ui/Appearance;->BUTTON_PRIMARY_NORMAL_COLOR:I

    .line 55
    sput v2, Lio/card/payment/ui/Appearance;->BUTTON_PRIMARY_FOCUS_COLOR:I

    .line 56
    sput v0, Lio/card/payment/ui/Appearance;->BUTTON_PRIMARY_PRESSED_COLOR:I

    const-string v0, "#c5ddeb"

    .line 57
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/card/payment/ui/Appearance;->BUTTON_PRIMARY_DISABLED_COLOR:I

    .line 59
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/card/payment/ui/Appearance;->BUTTON_SECONDARY_NORMAL_COLOR:I

    const-string v0, "#aa717074"

    .line 60
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/card/payment/ui/Appearance;->BUTTON_SECONDARY_FOCUS_COLOR:I

    const-string v0, "#5a5a5d"

    .line 61
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/card/payment/ui/Appearance;->BUTTON_SECONDARY_PRESSED_COLOR:I

    .line 62
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/card/payment/ui/Appearance;->BUTTON_SECONDARY_DISABLED_COLOR:I

    const-string v0, "#515151"

    .line 66
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/card/payment/ui/Appearance;->TEXT_COLOR_LIGHT:I

    const-string v1, "#b32317"

    .line 71
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lio/card/payment/ui/Appearance;->TEXT_COLOR_ERROR:I

    .line 73
    sput v0, Lio/card/payment/ui/Appearance;->TEXT_COLOR_LABEL:I

    .line 83
    invoke-static {}, Lio/card/payment/ui/Appearance;->typefaceLight()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lio/card/payment/ui/Appearance;->TYPEFACE_BUTTON:Landroid/graphics/Typeface;

    return-void
.end method

.method public static buttonBackgroundPrimary(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 92
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 93
    sget-object v1, Lio/card/payment/ui/Appearance;->BUTTON_STATE_PRESSED:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lio/card/payment/ui/Appearance;->BUTTON_PRIMARY_PRESSED_COLOR:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 94
    sget-object v1, Lio/card/payment/ui/Appearance;->BUTTON_STATE_DISABLED:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lio/card/payment/ui/Appearance;->BUTTON_PRIMARY_DISABLED_COLOR:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 95
    sget-object v1, Lio/card/payment/ui/Appearance;->BUTTON_STATE_FOCUSED:[I

    invoke-static {p0}, Lio/card/payment/ui/Appearance;->buttonBackgroundPrimaryFocused(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 96
    sget-object v1, Lio/card/payment/ui/Appearance;->BUTTON_STATE_NORMAL:[I

    invoke-static {p0}, Lio/card/payment/ui/Appearance;->buttonBackgroundPrimaryNormal(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private static buttonBackgroundPrimaryFocused(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 113
    sget v0, Lio/card/payment/ui/Appearance;->BUTTON_PRIMARY_NORMAL_COLOR:I

    sget v1, Lio/card/payment/ui/Appearance;->BUTTON_PRIMARY_FOCUS_COLOR:I

    .line 115
    invoke-static {p0}, Lio/card/payment/ui/Appearance;->getFocusBorderWidthPixels(Landroid/content/Context;)F

    move-result p0

    .line 113
    invoke-static {v0, v1, p0}, Lio/card/payment/ui/Appearance;->buttonFocused(IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static buttonBackgroundPrimaryNormal(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 109
    sget v0, Lio/card/payment/ui/Appearance;->BUTTON_PRIMARY_NORMAL_COLOR:I

    invoke-static {p0}, Lio/card/payment/ui/Appearance;->getFocusBorderWidthPixels(Landroid/content/Context;)F

    move-result p0

    invoke-static {v0, p0}, Lio/card/payment/ui/Appearance;->buttonNormal(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static buttonBackgroundSecondary(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 119
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 120
    sget-object v1, Lio/card/payment/ui/Appearance;->BUTTON_STATE_PRESSED:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lio/card/payment/ui/Appearance;->BUTTON_SECONDARY_PRESSED_COLOR:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 121
    sget-object v1, Lio/card/payment/ui/Appearance;->BUTTON_STATE_DISABLED:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lio/card/payment/ui/Appearance;->BUTTON_SECONDARY_DISABLED_COLOR:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 122
    sget-object v1, Lio/card/payment/ui/Appearance;->BUTTON_STATE_FOCUSED:[I

    invoke-static {p0}, Lio/card/payment/ui/Appearance;->buttonBackgroundSecondaryFocused(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 123
    sget-object v1, Lio/card/payment/ui/Appearance;->BUTTON_STATE_NORMAL:[I

    invoke-static {p0}, Lio/card/payment/ui/Appearance;->buttonBackgroundSecondaryNormal(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private static buttonBackgroundSecondaryFocused(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 132
    sget v0, Lio/card/payment/ui/Appearance;->BUTTON_SECONDARY_NORMAL_COLOR:I

    sget v1, Lio/card/payment/ui/Appearance;->BUTTON_SECONDARY_FOCUS_COLOR:I

    .line 134
    invoke-static {p0}, Lio/card/payment/ui/Appearance;->getFocusBorderWidthPixels(Landroid/content/Context;)F

    move-result p0

    .line 132
    invoke-static {v0, v1, p0}, Lio/card/payment/ui/Appearance;->buttonFocused(IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static buttonBackgroundSecondaryNormal(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 128
    sget v0, Lio/card/payment/ui/Appearance;->BUTTON_SECONDARY_NORMAL_COLOR:I

    invoke-static {p0}, Lio/card/payment/ui/Appearance;->getFocusBorderWidthPixels(Landroid/content/Context;)F

    move-result p0

    invoke-static {v0, p0}, Lio/card/payment/ui/Appearance;->buttonNormal(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static buttonFocused(IIF)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 152
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 p0, 0x0

    aput-object v1, v0, p0

    .line 154
    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {p0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 155
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 156
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget v2, Lio/card/payment/ui/Appearance;->DEFAULT_BACKGROUND_COLOR:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 160
    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {p0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 161
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 162
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x2

    aput-object p0, v0, p1

    .line 166
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method private static buttonNormal(IF)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 139
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 p0, 0x0

    aput-object v1, v0, p0

    .line 140
    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {p0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 141
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget v1, Lio/card/payment/ui/Appearance;->DEFAULT_BACKGROUND_COLOR:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 145
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method private static getFocusBorderWidthPixels(Landroid/content/Context;)F
    .locals 2

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const-string v1, "4dip"

    .line 103
    invoke-static {v1, p0}, Lio/card/payment/ui/ViewUtil;->typedDimensionValueToPixels(Ljava/lang/String;Landroid/content/Context;)F

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    mul-float/2addr p0, v0

    return p0
.end method

.method private static typefaceLight()Landroid/graphics/Typeface;
    .locals 2

    const-string v0, "sans-serif-light"

    const/4 v1, 0x0

    .line 171
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method
