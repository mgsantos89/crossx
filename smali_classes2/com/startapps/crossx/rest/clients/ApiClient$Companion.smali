.class public final Lcom/startapps/crossx/rest/clients/ApiClient$Companion;
.super Ljava/lang/Object;
.source "ApiClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/rest/clients/ApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/clients/ApiClient$Companion;",
        "",
        "()V",
        "retrofit",
        "Lretrofit/Retrofit;",
        "getRetrofit",
        "()Lretrofit/Retrofit;",
        "setRetrofit",
        "(Lretrofit/Retrofit;)V",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/rest/clients/ApiClient$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getRetrofit()Lretrofit/Retrofit;
    .locals 1

    .line 42
    invoke-static {}, Lcom/startapps/crossx/rest/clients/ApiClient;->access$getRetrofit$cp()Lretrofit/Retrofit;

    move-result-object v0

    return-object v0
.end method

.method protected final setRetrofit(Lretrofit/Retrofit;)V
    .locals 0

    .line 42
    invoke-static {p1}, Lcom/startapps/crossx/rest/clients/ApiClient;->access$setRetrofit$cp(Lretrofit/Retrofit;)V

    return-void
.end method
