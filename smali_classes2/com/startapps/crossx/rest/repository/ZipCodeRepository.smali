.class public final Lcom/startapps/crossx/rest/repository/ZipCodeRepository;
.super Ljava/lang/Object;
.source "ZipCodeRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/repository/ZipCodeRepository;",
        "",
        "()V",
        "mRemote",
        "Lcom/startapps/crossx/rest/interfaces/ZipCodeService;",
        "getAddressByZipCode",
        "",
        "cep",
        "",
        "listener",
        "Lcom/startapps/crossx/rest/listener/ApiListener;",
        "Lcom/startapps/crossx/model/ZipcodeAddress;",
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
.field private final mRemote:Lcom/startapps/crossx/rest/interfaces/ZipCodeService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/startapps/crossx/rest/clients/RetrofitClient;->Companion:Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;

    const-class v1, Lcom/startapps/crossx/rest/interfaces/ZipCodeService;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;->createService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/ZipCodeService;

    iput-object v0, p0, Lcom/startapps/crossx/rest/repository/ZipCodeRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/ZipCodeService;

    return-void
.end method


# virtual methods
.method public final getAddressByZipCode(Ljava/lang/String;Lcom/startapps/crossx/rest/listener/ApiListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Lcom/startapps/crossx/model/ZipcodeAddress;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cep"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/startapps/crossx/rest/repository/ZipCodeRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/ZipCodeService;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/rest/interfaces/ZipCodeService;->addressByZipCode(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 18
    new-instance v0, Lcom/startapps/crossx/rest/repository/ZipCodeRepository$getAddressByZipCode$1;

    invoke-direct {v0, p2}, Lcom/startapps/crossx/rest/repository/ZipCodeRepository$getAddressByZipCode$1;-><init>(Lcom/startapps/crossx/rest/listener/ApiListener;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
