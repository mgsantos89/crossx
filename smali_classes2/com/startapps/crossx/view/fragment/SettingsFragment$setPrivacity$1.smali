.class public final Lcom/startapps/crossx/view/fragment/SettingsFragment$setPrivacity$1;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;
.source "SettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/SettingsFragment;->setPrivacity(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J#\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0016\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "com/startapps/crossx/view/fragment/SettingsFragment$setPrivacity$1",
        "Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;",
        "onSucess",
        "",
        "content",
        "Lorg/json/JSONObject;",
        "headers",
        "",
        "Lcz/msebera/android/httpclient/Header;",
        "(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $i:I


# direct methods
.method constructor <init>(ILandroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput p1, p0, Lcom/startapps/crossx/view/fragment/SettingsFragment$setPrivacity$1;->$i:I

    .line 245
    check-cast p2, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "headers"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p1

    iget p2, p0, Lcom/startapps/crossx/view/fragment/SettingsFragment$setPrivacity$1;->$i:I

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/controller/utils/Preference;->savePrivacity(I)V

    return-void
.end method
