.class Lcom/startapps/crossx/view/activity/CropImageActivity$1;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/CropImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/CropImageActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/CropImageActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CropImageActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CropImageActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CropImageActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/CropImageActivity;->cropImageView:Lcom/edmodo/cropper/CropImageView;

    const/16 v0, 0x5a

    invoke-virtual {p1, v0}, Lcom/edmodo/cropper/CropImageView;->rotateImage(I)V

    return-void
.end method
