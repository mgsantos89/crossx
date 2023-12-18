.class public final Lcom/startapps/crossx/rest/clients/RetrofitClient;
.super Ljava/lang/Object;
.source "RetrofitClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/clients/RetrofitClient;",
        "",
        "()V",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;

.field private static retrofit:Lretrofit2/Retrofit;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/startapps/crossx/rest/clients/RetrofitClient;->Companion:Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getRetrofit$cp()Lretrofit2/Retrofit;
    .locals 1

    .line 11
    sget-object v0, Lcom/startapps/crossx/rest/clients/RetrofitClient;->retrofit:Lretrofit2/Retrofit;

    return-object v0
.end method

.method public static final synthetic access$setRetrofit$cp(Lretrofit2/Retrofit;)V
    .locals 0

    .line 11
    sput-object p0, Lcom/startapps/crossx/rest/clients/RetrofitClient;->retrofit:Lretrofit2/Retrofit;

    return-void
.end method
