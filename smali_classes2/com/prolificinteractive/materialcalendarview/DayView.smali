.class Lcom/prolificinteractive/materialcalendarview/DayView;
.super Landroid/widget/CheckedTextView;
.source "DayView.java"


# instance fields
.field private customBackground:Landroid/graphics/drawable/Drawable;

.field private date:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private final fadeTime:I

.field private selectionColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>()V

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->date:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    const p1, -0x777778

    .line 25
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionColor:I

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    .line 33
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x10e0000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->fadeTime:I

    .line 35
    iget p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionColor:I

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setSelectionColor(I)V

    const/16 p1, 0x11

    .line 37
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setGravity(I)V

    const/4 p1, 0x4

    .line 40
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setTextAlignment(I)V

    .line 43
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "99"

    .line 44
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private static generateBackground(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 83
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 84
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    const p1, 0x10100a0

    .line 85
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const p1, 0x10100a7

    .line 87
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateRippleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    if-nez p2, :cond_0

    new-array p1, p0, [I

    .line 93
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    new-array p0, p0, [I

    .line 96
    invoke-virtual {v0, p0, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object v0
.end method

.method private static generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 103
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 104
    new-instance v1, Lcom/prolificinteractive/materialcalendarview/DayView$1;

    invoke-direct {v1, p0}, Lcom/prolificinteractive/materialcalendarview/DayView$1;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    return-object v0
.end method

.method private static generateRippleDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 115
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    const/4 v0, -0x1

    .line 116
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method private regenerateBackground()V
    .locals 3

    .line 79
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionColor:I

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->fadeTime:I

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateBackground(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->date:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->regenerateBackground()V

    return-void
.end method

.method public setDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->date:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 50
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDay()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    return-void
.end method

.method public setSelectionColor(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionColor:I

    .line 55
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->regenerateBackground()V

    return-void
.end method

.method protected setupSelection(ZZZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 74
    :goto_0
    invoke-virtual {p0, p2}, Lcom/prolificinteractive/materialcalendarview/DayView;->setEnabled(Z)V

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    .line 75
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setVisibility(I)V

    return-void
.end method
