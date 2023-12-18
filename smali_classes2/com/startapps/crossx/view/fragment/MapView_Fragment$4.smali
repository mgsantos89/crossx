.class Lcom/startapps/crossx/view/fragment/MapView_Fragment$4;
.super Ljava/lang/Object;
.source "MapView_Fragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/MapView_Fragment;->showGPSDisabledAlertToUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/MapView_Fragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/MapView_Fragment;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment$4;->this$0:Lcom/startapps/crossx/view/fragment/MapView_Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 350
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
