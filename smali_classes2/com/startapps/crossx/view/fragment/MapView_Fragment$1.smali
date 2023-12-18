.class Lcom/startapps/crossx/view/fragment/MapView_Fragment$1;
.super Ljava/lang/Object;
.source "MapView_Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/MapView_Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 164
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment$1;->this$0:Lcom/startapps/crossx/view/fragment/MapView_Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "geo:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment$1;->this$0:Lcom/startapps/crossx/view/fragment/MapView_Fragment;

    iget-object v0, v0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->latitude:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment$1;->this$0:Lcom/startapps/crossx/view/fragment/MapView_Fragment;

    iget-object v1, v1, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->longitude:Ljava/lang/Double;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment$1;->this$0:Lcom/startapps/crossx/view/fragment/MapView_Fragment;

    iget-object v2, v2, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->latitude:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment$1;->this$0:Lcom/startapps/crossx/view/fragment/MapView_Fragment;

    iget-object v1, v1, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->longitude:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(teste)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "?q="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "&z=16"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 174
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment$1;->this$0:Lcom/startapps/crossx/view/fragment/MapView_Fragment;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
