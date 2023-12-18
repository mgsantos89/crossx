.class public Lio/card/payment/i18n/I18nManager;
.super Ljava/lang/Object;
.source "I18nManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final RIGHT_TO_LEFT_LOCALE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPECIAL_LOCALE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "I18nManager"


# instance fields
.field private currentLocale:Lio/card/payment/i18n/SupportedLocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/card/payment/i18n/SupportedLocale<",
            "TE;>;"
        }
    .end annotation
.end field

.field private enumClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private supportedLocales:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/card/payment/i18n/SupportedLocale<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/card/payment/i18n/I18nManager;->SPECIAL_LOCALE_MAP:Ljava/util/Map;

    .line 35
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lio/card/payment/i18n/I18nManager;->RIGHT_TO_LEFT_LOCALE_SET:Ljava/util/Set;

    const-string/jumbo v2, "zh_CN"

    const-string/jumbo v3, "zh-Hans"

    .line 38
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "zh_TW"

    const-string/jumbo v3, "zh-Hant_TW"

    .line 39
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "zh_HK"

    const-string/jumbo v3, "zh-Hant"

    .line 40
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "en_UK"

    const-string v3, "en_GB"

    .line 41
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "en_IE"

    .line 42
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "iw_IL"

    const-string v3, "he"

    .line 47
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "no"

    const-string v4, "nb"

    .line 48
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "ar"

    .line 51
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/util/List<",
            "Lio/card/payment/i18n/SupportedLocale<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/card/payment/i18n/I18nManager;->supportedLocales:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lio/card/payment/i18n/I18nManager;->enumClazz:Ljava/lang/Class;

    .line 63
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/card/payment/i18n/SupportedLocale;

    .line 64
    invoke-direct {p0, p2}, Lio/card/payment/i18n/I18nManager;->addLocale(Lio/card/payment/i18n/SupportedLocale;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1}, Lio/card/payment/i18n/I18nManager;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private addLocale(Lio/card/payment/i18n/SupportedLocale;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/card/payment/i18n/SupportedLocale<",
            "TE;>;)V"
        }
    .end annotation

    .line 273
    invoke-interface {p1}, Lio/card/payment/i18n/SupportedLocale;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v1, p0, Lio/card/payment/i18n/I18nManager;->supportedLocales:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    iget-object v1, p0, Lio/card/payment/i18n/I18nManager;->supportedLocales:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-direct {p0, v0}, Lio/card/payment/i18n/I18nManager;->logMissingLocalizations(Ljava/lang/String;)V

    return-void

    .line 278
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Locale "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " already added"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 275
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Null localeName"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getMissingLocaleMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lio/card/payment/i18n/I18nManager;->supportedLocales:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/card/payment/i18n/SupportedLocale;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget-object v2, p0, Lio/card/payment/i18n/I18nManager;->enumClazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 111
    invoke-interface {v0, v5, v7}, Lio/card/payment/i18n/SupportedLocale;->getAdaptedDisplay(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Missing "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private logMissingLocalizations(Ljava/lang/String;)V
    .locals 2

    .line 77
    invoke-direct {p0, p1}, Lio/card/payment/i18n/I18nManager;->getMissingLocaleMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 79
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    sget-object v1, Lio/card/payment/i18n/I18nManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private lookupSupportedLocale(Ljava/lang/String;)Lio/card/payment/i18n/SupportedLocale;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/card/payment/i18n/SupportedLocale<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 193
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_1

    .line 201
    :cond_0
    sget-object v1, Lio/card/payment/i18n/I18nManager;->SPECIAL_LOCALE_MAP:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lio/card/payment/i18n/I18nManager;->supportedLocales:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/card/payment/i18n/SupportedLocale;

    .line 204
    sget-object v3, Lio/card/payment/i18n/I18nManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Overriding locale specifier "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :cond_1
    if-nez v0, :cond_3

    const-string v0, "_"

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p1

    goto :goto_0

    .line 216
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    :goto_0
    iget-object v1, p0, Lio/card/payment/i18n/I18nManager;->supportedLocales:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/card/payment/i18n/SupportedLocale;

    :cond_3
    if-nez v0, :cond_4

    .line 223
    iget-object v0, p0, Lio/card/payment/i18n/I18nManager;->supportedLocales:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/card/payment/i18n/SupportedLocale;

    :cond_4
    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 229
    iget-object v0, p0, Lio/card/payment/i18n/I18nManager;->supportedLocales:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lio/card/payment/i18n/SupportedLocale;

    :cond_5
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getLocaleFromSpecifier(Ljava/lang/String;)Lio/card/payment/i18n/SupportedLocale;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/card/payment/i18n/SupportedLocale<",
            "TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 146
    invoke-direct {p0, p1}, Lio/card/payment/i18n/I18nManager;->lookupSupportedLocale(Ljava/lang/String;)Lio/card/payment/i18n/SupportedLocale;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 151
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    sget-object v1, Lio/card/payment/i18n/I18nManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " not found.  Attempting to look for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0, v0}, Lio/card/payment/i18n/I18nManager;->lookupSupportedLocale(Ljava/lang/String;)Lio/card/payment/i18n/SupportedLocale;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 159
    sget-object p1, Lio/card/payment/i18n/I18nManager;->TAG:Ljava/lang/String;

    const-string v0, "defaulting to english"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object p1, p0, Lio/card/payment/i18n/I18nManager;->supportedLocales:Ljava/util/Map;

    const-string v0, "en"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lio/card/payment/i18n/SupportedLocale;

    :cond_2
    return-object v0
.end method

.method public getString(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lio/card/payment/i18n/I18nManager;->currentLocale:Lio/card/payment/i18n/SupportedLocale;

    invoke-virtual {p0, p1, v0}, Lio/card/payment/i18n/I18nManager;->getString(Ljava/lang/Enum;Lio/card/payment/i18n/SupportedLocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/Enum;Lio/card/payment/i18n/SupportedLocale;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lio/card/payment/i18n/SupportedLocale<",
            "TE;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 240
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-interface {p2, p1, v0}, Lio/card/payment/i18n/SupportedLocale;->getAdaptedDisplay(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 244
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Missing localized string for ["

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/card/payment/i18n/I18nManager;->currentLocale:Lio/card/payment/i18n/SupportedLocale;

    .line 245
    invoke-interface {v1}, Lio/card/payment/i18n/SupportedLocale;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ",Key."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 246
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 247
    sget-object v1, Lio/card/payment/i18n/I18nManager;->TAG:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object p2, p0, Lio/card/payment/i18n/I18nManager;->supportedLocales:Ljava/util/Map;

    const-string v1, "en"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/card/payment/i18n/SupportedLocale;

    invoke-interface {p2, p1, v0}, Lio/card/payment/i18n/SupportedLocale;->getAdaptedDisplay(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    .line 255
    sget-object p2, Lio/card/payment/i18n/I18nManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Missing localized string for [en,Key."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], so defaulting to keyname"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lio/card/payment/i18n/I18nManager;->currentLocale:Lio/card/payment/i18n/SupportedLocale;

    .line 129
    invoke-virtual {p0, p1}, Lio/card/payment/i18n/I18nManager;->getLocaleFromSpecifier(Ljava/lang/String;)Lio/card/payment/i18n/SupportedLocale;

    move-result-object p1

    iput-object p1, p0, Lio/card/payment/i18n/I18nManager;->currentLocale:Lio/card/payment/i18n/SupportedLocale;

    .line 132
    sget-object p1, Lio/card/payment/i18n/I18nManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setting locale to:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/card/payment/i18n/I18nManager;->currentLocale:Lio/card/payment/i18n/SupportedLocale;

    invoke-interface {v1}, Lio/card/payment/i18n/SupportedLocale;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
