.class Lcom/prolificinteractive/materialcalendarview/DirectionButton;
.super Landroid/widget/ImageView;
.source "DirectionButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->getThemeSelectableBackgroundId(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setBackgroundResource(I)V

    return-void
.end method

.method private static getThemeSelectableBackgroundId(Landroid/content/Context;)I
    .locals 4

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "attr"

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "selectableItemBackgroundBorderless"

    .line 39
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x101045c

    .line 50
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 52
    iget p0, v1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public setColor(I)V
    .locals 1

    .line 28
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3dcccccd    # 0.1f

    .line 34
    :goto_0
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setAlpha(F)V

    return-void
.end method
