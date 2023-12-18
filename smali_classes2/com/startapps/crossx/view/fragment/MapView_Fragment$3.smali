.class Lcom/startapps/crossx/view/fragment/MapView_Fragment$3;
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

    .line 340
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment$3;->this$0:Lcom/startapps/crossx/view/fragment/MapView_Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 342
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment$3;->this$0:Lcom/startapps/crossx/view/fragment/MapView_Fragment;

    invoke-virtual {p2, p1}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
