.class Lretrofit/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/Platform$Android;,
        Lretrofit/Platform$Java8;
    }
.end annotation


# static fields
.field private static final PLATFORM:Lretrofit/Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    invoke-static {}, Lretrofit/Platform;->findPlatform()Lretrofit/Platform;

    move-result-object v0

    sput-object v0, Lretrofit/Platform;->PLATFORM:Lretrofit/Platform;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findPlatform()Lretrofit/Platform;
    .locals 1

    :try_start_0
    const-string v0, "android.os.Build"

    .line 35
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 37
    new-instance v0, Lretrofit/Platform$Android;

    invoke-direct {v0}, Lretrofit/Platform$Android;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :try_start_1
    const-string v0, "java.util.Optional"

    .line 42
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 43
    new-instance v0, Lretrofit/Platform$Java8;

    invoke-direct {v0}, Lretrofit/Platform$Java8;-><init>()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 46
    :catch_1
    new-instance v0, Lretrofit/Platform;

    invoke-direct {v0}, Lretrofit/Platform;-><init>()V

    return-object v0
.end method

.method static get()Lretrofit/Platform;
    .locals 1

    .line 30
    sget-object v0, Lretrofit/Platform;->PLATFORM:Lretrofit/Platform;

    return-object v0
.end method


# virtual methods
.method defaultCallAdapterFactory(Ljava/util/concurrent/Executor;)Lretrofit/CallAdapter$Factory;
    .locals 1

    if-eqz p1, :cond_0

    .line 51
    new-instance v0, Lretrofit/ExecutorCallAdapterFactory;

    invoke-direct {v0, p1}, Lretrofit/ExecutorCallAdapterFactory;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0

    .line 53
    :cond_0
    sget-object p1, Lretrofit/DefaultCallAdapter;->FACTORY:Lretrofit/CallAdapter$Factory;

    return-object p1
.end method

.method varargs invokeDefaultMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method isDefaultMethod(Ljava/lang/reflect/Method;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
