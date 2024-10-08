# Where the I18n library should search for translation files
I18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]

# Permitted locales available for the application
I18n.available_locales = %i[en pt-BR es]

# Set default locale to something other than :en
I18n.default_locale = ENV.fetch('LANGUAGE', 'en')

LANGUAGES_CONFIG = {
  0 => { name: 'English (en)', iso_639_3_code: 'eng', iso_639_1_code: 'en', enabled: true },
  1 => { name: 'العربية (ar)', iso_639_3_code: 'ara', iso_639_1_code: 'ar', enabled: false },
  2 => { name: 'Nederlands (nl) ', iso_639_3_code: 'nld', iso_639_1_code: 'nl', enabled: false },
  3 => { name: 'Français (fr)', iso_639_3_code: 'fra', iso_639_1_code: 'fr', enabled: false },
  4 => { name: 'Deutsch (de)', iso_639_3_code: 'deu', iso_639_1_code: 'de', enabled: false },
  5 => { name: 'हिन्दी (hi)', iso_639_3_code: 'hin', iso_639_1_code: 'hi', enabled: false },
  6 => { name: 'Italiano (it)', iso_639_3_code: 'ita', iso_639_1_code: 'it', enabled: false },
  7 => { name: '日本語 (ja)', iso_639_3_code: 'jpn', iso_639_1_code: 'ja', enabled: false },
  8 => { name: '한국어 (ko)', iso_639_3_code: 'kor', iso_639_1_code: 'ko', enabled: false },
  9 => { name: 'Português (pt)', iso_639_3_code: 'por', iso_639_1_code: 'pt-BR', enabled: false },
  10 => { name: 'русский (ru)', iso_639_3_code: 'rus', iso_639_1_code: 'ru', enabled: false },
  11 => { name: '中文 (zh)', iso_639_3_code: 'zho', iso_639_1_code: 'zh', enabled: false },
  12 => { name: 'Español (es)', iso_639_3_code: 'spa', iso_639_1_code: 'es', enabled: true },
  13 => { name: 'മലയാളം (ml)', iso_639_3_code: 'mal', iso_639_1_code: 'ml', enabled: false },
  14 => { name: 'Català (ca)', iso_639_3_code: 'cat', iso_639_1_code: 'ca', enabled: false },
  15 => { name: 'ελληνικά (el)', iso_639_3_code: 'ell', iso_639_1_code: 'el', enabled: false },
  16 => { name: 'Português Brasileiro (pt-BR)', iso_639_3_code: '', iso_639_1_code: 'pt-BR', enabled: true },
  17 => { name: 'Română (ro)', iso_639_3_code: 'ron', iso_639_1_code: 'ro', enabled: false },
  18 => { name: 'தமிழ் (ta)', iso_639_3_code: 'tam', iso_639_1_code: 'ta', enabled: false },
  19 => { name: 'فارسی (fa)', iso_639_3_code: 'fas', iso_639_1_code: 'fa', enabled: false },
  20 => { name: '中文 (台湾) (zh-TW)', iso_639_3_code: 'zho', iso_639_1_code: 'zh_TW', enabled: false },
  21 => { name: 'Tiếng Việt (vi)', iso_639_3_code: 'vie', iso_639_1_code: 'vi', enabled: false },
  22 => { name: 'dansk (da)', iso_639_3_code: 'dan', iso_639_1_code: 'da', enabled: false },
  23 => { name: 'Türkçe (tr)', iso_639_3_code: 'tur', iso_639_1_code: 'tr', enabled: false },
  24 => { name: 'čeština (cs)', iso_639_3_code: 'ces', iso_639_1_code: 'cs', enabled: false },
  25 => { name: 'suomi, suomen kieli (fi)', iso_639_3_code: 'fin', iso_639_1_code: 'fi', enabled: false },
  26 => { name: 'Bahasa Indonesia (id)', iso_639_3_code: 'ind', iso_639_1_code: 'id', enabled: false },
  27 => { name: 'Svenska (sv)', iso_639_3_code: 'swe', iso_639_1_code: 'sv', enabled: false },
  28 => { name: 'magyar nyelv (hu)', iso_639_3_code: 'hun', iso_639_1_code: 'hu', enabled: false },
  29 => { name: 'norsk (no)', iso_639_3_code: 'nor', iso_639_1_code: 'no', enabled: false },
  30 => { name: '中文 (zh-CN)', iso_639_3_code: 'zho', iso_639_1_code: 'zh_CN', enabled: false },
  31 => { name: 'język polski (pl)', iso_639_3_code: 'pol', iso_639_1_code: 'pl', enabled: false },
  32 => { name: 'slovenčina (sk)', iso_639_3_code: 'slk', iso_639_1_code: 'sk', enabled: false },
  33 => { name: 'украї́нська мо́ва (uk)', iso_639_3_code: 'ukr', iso_639_1_code: 'uk', enabled: false },
  34 => { name: 'ภาษาไทย (th)', iso_639_3_code: 'tha', iso_639_1_code: 'th', enabled: false },
  35 => { name: 'latviešu valoda (lv)', iso_639_3_code: 'lav', iso_639_1_code: 'lv', enabled: false },
  36 => { name: 'íslenska (is)', iso_639_3_code: 'isl', iso_639_1_code: 'is', enabled: false },
  37 => { name: 'עִברִית (he)', iso_639_3_code: 'heb', iso_639_1_code: 'he', enabled: false },
  38 => { name: 'lietuvių (lt)', iso_639_3_code: 'lit', iso_639_1_code: 'lt', enabled: false },
  39 => { name: 'Српски (sr)', iso_639_3_code: 'srp', iso_639_1_code: 'sr', enabled: false }
}.filter { |_key, val| val[:enabled] }.freeze

Rails.configuration.i18n.available_locales = LANGUAGES_CONFIG.map { |_index, lang| lang[:iso_639_1_code].to_sym }
