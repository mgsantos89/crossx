.class Lcom/startapps/crossx/view/widget/ToggleButton$1;
.super Ljava/lang/Object;
.source "ToggleButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/widget/ToggleButton;->init(Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/widget/ToggleButton;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/widget/ToggleButton;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/ToggleButton$1;->this$0:Lcom/startapps/crossx/view/widget/ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/ToggleButton$1;->this$0:Lcom/startapps/crossx/view/widget/ToggleButton;

    invoke-static {p1}, Lcom/startapps/crossx/view/widget/ToggleButton;->-$$Nest$fgetisSelected(Lcom/startapps/crossx/view/widget/ToggleButton;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/widget/ToggleButton;->-$$Nest$fputisSelected(Lcom/startapps/crossx/view/widget/ToggleButton;Z)V

    .line 61
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/ToggleButton$1;->this$0:Lcom/startapps/crossx/view/widget/ToggleButton;

    invoke-static {p1}, Lcom/startapps/crossx/view/widget/ToggleButton;->-$$Nest$fgetisSelected(Lcom/startapps/crossx/view/widget/ToggleButton;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/widget/ToggleButton;->setSelected(Z)V

    .line 63
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/ToggleButton$1;->this$0:Lcom/startapps/crossx/view/widget/ToggleButton;

    invoke-static {p1}, Lcom/startapps/crossx/view/widget/ToggleButton;->-$$Nest$fgettoggleButtonListener(Lcom/startapps/crossx/view/widget/ToggleButton;)Lcom/startapps/crossx/view/widget/ToggleButton$ToggleButtonListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/ToggleButton$1;->this$0:Lcom/startapps/crossx/view/widget/ToggleButton;

    invoke-static {p1}, Lcom/startapps/crossx/view/widget/ToggleButton;->-$$Nest$fgettoggleButtonListener(Lcom/startapps/crossx/view/widget/ToggleButton;)Lcom/startapps/crossx/view/widget/ToggleButton$ToggleButtonListener;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/widget/ToggleButton$1;->this$0:Lcom/startapps/crossx/view/widget/ToggleButton;

    invoke-static {v0}, Lcom/startapps/crossx/view/widget/ToggleButton;->-$$Nest$fgetisSelected(Lcom/startapps/crossx/view/widget/ToggleButton;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/startapps/crossx/view/widget/ToggleButton$ToggleButtonListener;->onStateButton(Z)V

    :cond_0
    return-void
.end method
