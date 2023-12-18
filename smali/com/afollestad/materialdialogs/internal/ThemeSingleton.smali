.class public Lcom/afollestad/materialdialogs/internal/ThemeSingleton;
.super Ljava/lang/Object;
.source "ThemeSingleton.java"


# static fields
.field private static singleton:Lcom/afollestad/materialdialogs/internal/ThemeSingleton;


# instance fields
.field public backgroundColor:I

.field public btnSelectorNegative:I

.field public btnSelectorNeutral:I

.field public btnSelectorPositive:I

.field public btnSelectorStacked:I

.field public btnStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public buttonsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public contentColor:I

.field public contentGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public darkTheme:Z

.field public dividerColor:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public itemColor:I

.field public itemsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public linkColor:Landroid/content/res/ColorStateList;

.field public listSelector:I

.field public negativeColor:Landroid/content/res/ColorStateList;

.field public neutralColor:Landroid/content/res/ColorStateList;

.field public positiveColor:Landroid/content/res/ColorStateList;

.field public titleColor:I

.field public titleGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public widgetColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->darkTheme:Z

    .line 29
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->titleColor:I

    .line 31
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->contentColor:I

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->positiveColor:Landroid/content/res/ColorStateList;

    .line 35
    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->neutralColor:Landroid/content/res/ColorStateList;

    .line 37
    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->negativeColor:Landroid/content/res/ColorStateList;

    .line 39
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->widgetColor:I

    .line 41
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->itemColor:I

    .line 43
    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->icon:Landroid/graphics/drawable/Drawable;

    .line 44
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->backgroundColor:I

    .line 46
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->dividerColor:I

    .line 48
    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->linkColor:Landroid/content/res/ColorStateList;

    .line 51
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->listSelector:I

    .line 53
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->btnSelectorStacked:I

    .line 55
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->btnSelectorPositive:I

    .line 57
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->btnSelectorNeutral:I

    .line 59
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->btnSelectorNegative:I

    .line 62
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->titleGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 63
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->contentGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 64
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->btnStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 65
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->itemsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 66
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->buttonsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    return-void
.end method

.method public static get()Lcom/afollestad/materialdialogs/internal/ThemeSingleton;
    .locals 1

    const/4 v0, 0x1

    .line 25
    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->get(Z)Lcom/afollestad/materialdialogs/internal/ThemeSingleton;

    move-result-object v0

    return-object v0
.end method

.method public static get(Z)Lcom/afollestad/materialdialogs/internal/ThemeSingleton;
    .locals 1

    .line 19
    sget-object v0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->singleton:Lcom/afollestad/materialdialogs/internal/ThemeSingleton;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 20
    new-instance p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;-><init>()V

    sput-object p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->singleton:Lcom/afollestad/materialdialogs/internal/ThemeSingleton;

    .line 21
    :cond_0
    sget-object p0, Lcom/afollestad/materialdialogs/internal/ThemeSingleton;->singleton:Lcom/afollestad/materialdialogs/internal/ThemeSingleton;

    return-object p0
.end method
