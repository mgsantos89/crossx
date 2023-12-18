.class Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity$1;
.super Landroidx/appcompat/app/ActionBarDrawerToggle;
.source "AbstractMenuDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setMenuDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V
    .locals 6

    .line 102
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity$1;->this$0:Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    return-void
.end method


# virtual methods
.method public onDrawerStateChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 106
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity$1;->this$0:Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getToDrawerLayout()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity$1;->this$0:Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->openingMenuDrawer()V

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity$1;->this$0:Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method
