.class Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1$1;
.super Ljava/lang/Object;
.source "ClickToSelectEditText.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1$1;->this$1:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1$1;->this$1:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;

    iget-object p1, p1, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;->this$0:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1$1;->this$1:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;

    iget-object v0, v0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;->this$0:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;

    iget-object v0, v0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->mListableItems:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1$1;->this$1:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;

    iget-object p1, p1, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;->this$0:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;

    invoke-static {p1, p2}, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->-$$Nest$fputpositionSelected(Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;I)V

    .line 79
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1$1;->this$1:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;

    iget-object p1, p1, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;->this$0:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;

    iget-object p1, p1, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->onItemSelectedListener:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$OnItemSelectedListener;

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1$1;->this$1:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;

    iget-object p1, p1, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;->this$0:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;

    iget-object p1, p1, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->onItemSelectedListener:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$OnItemSelectedListener;

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1$1;->this$1:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;

    iget-object v0, v0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;->this$0:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;

    iget-object v0, v0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/controller/utils/Listable;

    invoke-interface {p1, v0, p2}, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$OnItemSelectedListener;->onItemSelectedListener(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method
