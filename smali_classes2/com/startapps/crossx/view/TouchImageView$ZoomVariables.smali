.class Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomVariables"
.end annotation


# instance fields
.field public focusX:F

.field public focusY:F

.field public scale:F

.field public scaleType:Landroid/widget/ImageView$ScaleType;

.field final synthetic this$0:Lcom/startapps/crossx/view/TouchImageView;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/TouchImageView;FFFLandroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 1254
    iput-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1255
    iput p2, p0, Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;->scale:F

    .line 1256
    iput p3, p0, Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;->focusX:F

    .line 1257
    iput p4, p0, Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;->focusY:F

    .line 1258
    iput-object p5, p0, Lcom/startapps/crossx/view/TouchImageView$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method
