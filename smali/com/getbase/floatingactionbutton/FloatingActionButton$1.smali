.class Lcom/getbase/floatingactionbutton/FloatingActionButton$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getbase/floatingactionbutton/FloatingActionButton;->createInnerStrokesDrawable(IF)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field final synthetic val$bottomStrokeColor:I

.field final synthetic val$bottomStrokeColorHalfTransparent:I

.field final synthetic val$color:I

.field final synthetic val$topStrokeColor:I

.field final synthetic val$topStrokeColorHalfTransparent:I


# direct methods
.method constructor <init>(Lcom/getbase/floatingactionbutton/FloatingActionButton;IIIII)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$topStrokeColor:I

    iput p3, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$topStrokeColorHalfTransparent:I

    iput p4, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$color:I

    iput p5, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$bottomStrokeColorHalfTransparent:I

    iput p6, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$bottomStrokeColor:I

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 9

    .line 399
    new-instance v8, Landroid/graphics/LinearGradient;

    div-int/lit8 p1, p1, 0x2

    int-to-float v3, p1

    const/4 v2, 0x0

    int-to-float v4, p2

    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$topStrokeColor:I

    iget p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$topStrokeColorHalfTransparent:I

    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$color:I

    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$bottomStrokeColorHalfTransparent:I

    iget v5, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$bottomStrokeColor:I

    filled-new-array {p1, p2, v0, v1, v5}, [I

    move-result-object v5

    const/4 p1, 0x5

    new-array v6, p1, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, v8

    move v1, v3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v8

    nop

    :array_0
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method
