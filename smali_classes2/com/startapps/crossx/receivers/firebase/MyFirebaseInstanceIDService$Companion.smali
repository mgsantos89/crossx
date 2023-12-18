.class public final Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;
.super Ljava/lang/Object;
.source "MyFirebaseInstanceIDService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;",
        "",
        "()V",
        "removeRegistrationToServer",
        "",
        "sendRegistrationToServer",
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
.method public static synthetic $r8$lambda$L3aF7RPDmx6eXUf6WHVK-S5zWBA(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;->removeRegistrationToServer$lambda-1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dVheHgXPsMCbTC9-b9q5YbhHGeA(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;->sendRegistrationToServer$lambda-0(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;-><init>()V

    return-void
.end method

.method private static final removeRegistrationToServer$lambda-1(Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapps/crossx/controller/utils/Preference;->setToken(Ljava/lang/String;)V

    .line 56
    sget-object p0, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService;->Companion:Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;

    invoke-virtual {p0}, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;->removeRegistrationToServer()V

    return-void
.end method

.method private static final sendRegistrationToServer$lambda-0(Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapps/crossx/controller/utils/Preference;->setToken(Ljava/lang/String;)V

    .line 26
    sget-object p0, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService;->Companion:Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;

    invoke-virtual {p0}, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;->sendRegistrationToServer()V

    return-void
.end method


# virtual methods
.method public final removeRegistrationToServer()V
    .locals 3

    .line 51
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 62
    new-instance v1, Lcom/startapps/crossx/rest/clients/PaymentClient;

    invoke-direct {v1}, Lcom/startapps/crossx/rest/clients/PaymentClient;-><init>()V

    new-instance v2, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion$removeRegistrationToServer$2;

    invoke-direct {v2}, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion$removeRegistrationToServer$2;-><init>()V

    check-cast v2, Lcom/startapps/crossx/rest/callback/SimpleCallback;

    invoke-virtual {v1, v0, v2}, Lcom/startapps/crossx/rest/clients/PaymentClient;->removeFCMToken(Ljava/lang/String;Lcom/startapps/crossx/rest/callback/SimpleCallback;)V

    :cond_1
    return-void
.end method

.method public final sendRegistrationToServer()V
    .locals 3

    .line 21
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 32
    new-instance v1, Lcom/startapps/crossx/rest/clients/PaymentClient;

    invoke-direct {v1}, Lcom/startapps/crossx/rest/clients/PaymentClient;-><init>()V

    .line 33
    new-instance v2, Lcom/startapps/crossx/model/SendToken;

    invoke-direct {v2, v0, v0}, Lcom/startapps/crossx/model/SendToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion$sendRegistrationToServer$2;

    invoke-direct {v0}, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion$sendRegistrationToServer$2;-><init>()V

    check-cast v0, Lcom/startapps/crossx/rest/callback/SimpleCallback;

    .line 32
    invoke-virtual {v1, v2, v0}, Lcom/startapps/crossx/rest/clients/PaymentClient;->postFCMToken(Lcom/startapps/crossx/model/SendToken;Lcom/startapps/crossx/rest/callback/SimpleCallback;)V

    :cond_1
    return-void
.end method
