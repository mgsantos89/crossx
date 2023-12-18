.class Lcom/startapps/crossx/view/CustonIndicatePager$1;
.super Ljava/lang/Object;
.source "CustonIndicatePager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/CustonIndicatePager;->populateScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/CustonIndicatePager;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/CustonIndicatePager;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/startapps/crossx/view/CustonIndicatePager$1;->this$0:Lcom/startapps/crossx/view/CustonIndicatePager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 105
    iget-object v0, p0, Lcom/startapps/crossx/view/CustonIndicatePager$1;->this$0:Lcom/startapps/crossx/view/CustonIndicatePager;

    iget-object v0, v0, Lcom/startapps/crossx/view/CustonIndicatePager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
