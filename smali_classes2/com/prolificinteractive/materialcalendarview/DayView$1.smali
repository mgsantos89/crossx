.class final Lcom/prolificinteractive/materialcalendarview/DayView$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prolificinteractive/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$color:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView$1;->val$color:I

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 8

    .line 107
    new-instance p1, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v6, p0, Lcom/prolificinteractive/materialcalendarview/DayView$1;->val$color:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v0, p1

    move v5, v6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    return-object p1
.end method
