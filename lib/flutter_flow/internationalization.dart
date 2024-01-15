import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es', 'de', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
    String? deText = '',
    String? arText = '',
  }) =>
      [enText, esText, deText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // novo
  {
    'qbwiuioc': {
      'en': 'Clique para add uma imagem',
      'ar': '',
      'de': '',
      'es': '',
    },
    'x6zt62n5': {
      'en': 'Informções do anime',
      'ar': '',
      'de': '',
      'es': '',
    },
    'bd5k2cj9': {
      'en': 'Nome',
      'ar': '',
      'de': '',
      'es': '',
    },
    '8xl6i12q': {
      'en': 'Sua descrição do anime',
      'ar': '',
      'de': '',
      'es': '',
    },
    'x7bz07vr': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'i8i893kr': {
      'en': 'Shonen',
      'ar': '',
      'de': '',
      'es': '',
    },
    '73e9jj5h': {
      'en': 'Romance',
      'ar': '',
      'de': '',
      'es': '',
    },
    'c5nutgzx': {
      'en': 'Hentai',
      'ar': '',
      'de': '',
      'es': '',
    },
    'logh7bkc': {
      'en': 'Ecchi',
      'ar': '',
      'de': '',
      'es': '',
    },
    'khkb7tow': {
      'en': 'Harem',
      'ar': '',
      'de': '',
      'es': '',
    },
    'nbuei0c2': {
      'en': 'Isekai',
      'ar': '',
      'de': '',
      'es': '',
    },
    '0my79gbg': {
      'en': 'Gênero',
      'ar': '',
      'de': '',
      'es': '',
    },
    'x2vje56k': {
      'en': 'Search for an item...',
      'ar': '',
      'de': '',
      'es': '',
    },
    '917rp96i': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ap314hlk': {
      'en': '1',
      'ar': '',
      'de': '',
      'es': '',
    },
    'kpn9aea1': {
      'en': '2',
      'ar': '',
      'de': '',
      'es': '',
    },
    'z3e6j1nh': {
      'en': '3',
      'ar': '',
      'de': '',
      'es': '',
    },
    'vxucxb3r': {
      'en': '4',
      'ar': '',
      'de': '',
      'es': '',
    },
    'eh3tpjyi': {
      'en': '5',
      'ar': '',
      'de': '',
      'es': '',
    },
    '6l1ktpe3': {
      'en': '6',
      'ar': '',
      'de': '',
      'es': '',
    },
    '3s2yzv5b': {
      'en': '7',
      'ar': '',
      'de': '',
      'es': '',
    },
    '0j59dotw': {
      'en': '8',
      'ar': '',
      'de': '',
      'es': '',
    },
    '529xrnqf': {
      'en': '9',
      'ar': '',
      'de': '',
      'es': '',
    },
    '7b4dwjw2': {
      'en': '10',
      'ar': '',
      'de': '',
      'es': '',
    },
    'q7xv4xwn': {
      'en': '+1000',
      'ar': '',
      'de': '',
      'es': '',
    },
    'yy9j8lef': {
      'en': 'Nota',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ozfbt49c': {
      'en': 'Search for an item...',
      'ar': '',
      'de': '',
      'es': '',
    },
    'v6vr47dp': {
      'en': 'É dublado?',
      'ar': '',
      'de': '',
      'es': '',
    },
    'y06f40ri': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'p60ad5ei': {
      'en': 'Anime com dublagem😆',
      'ar': '',
      'de': '',
      'es': '',
    },
    '0dw39n4q': {
      'en': 'Anime sem dublagem😔',
      'ar': '',
      'de': '',
      'es': '',
    },
    'b198w2ii': {
      'en': 'escolha',
      'ar': '',
      'de': '',
      'es': '',
    },
    '0gywk305': {
      'en': 'Search for an item...',
      'ar': '',
      'de': '',
      'es': '',
    },
    'jvsns5ih': {
      'en': 'Salvar',
      'ar': '',
      'de': '',
      'es': '',
    },
    '9xzwo8zv': {
      'en': 'Novo anime',
      'ar': '',
      'de': '',
      'es': '',
    },
    '0mvu8sy9': {
      'en': 'Home',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // animeAdd
  {
    'u5u2w9gg': {
      'en': 'INFORMAÇÕES DO ANIME:',
      'ar': '',
      'de': '',
      'es': '',
    },
    '2b0wnea1': {
      'en': 'Nota:',
      'ar': '',
      'de': '',
      'es': '',
    },
    'o2pgd2eb': {
      'en': 'Excluir anime',
      'ar': '',
      'de': '',
      'es': '',
    },
    'x33g3jy7': {
      'en': 'Editar anime',
      'ar': '',
      'de': '',
      'es': '',
    },
    'dw0398xf': {
      'en': 'Kisun',
      'ar': 'بطاقتي',
      'de': 'Meine Karte',
      'es': 'Mi tarjeta',
    },
    'r0r7r98q': {
      'en': 'Home',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // LoginCadastro
  {
    'es5rhkq7': {
      'en': 'Criar',
      'ar': '',
      'de': '',
      'es': '',
    },
    'vpdr59nj': {
      'en': 'Partiu criar uma conta',
      'ar': '',
      'de': '',
      'es': '',
    },
    '5o4rydhp': {
      'en': 'Preencha os campos abaixo',
      'ar': '',
      'de': '',
      'es': '',
    },
    'rz0b0qsx': {
      'en': 'Nome',
      'ar': '',
      'de': '',
      'es': '',
    },
    '7l4r6pie': {
      'en': 'Email',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ctekmg1w': {
      'en': 'Senha',
      'ar': '',
      'de': '',
      'es': '',
    },
    'abgbp156': {
      'en': 'Senha',
      'ar': '',
      'de': '',
      'es': '',
    },
    'mpgdb36n': {
      'en': 'Criar conta',
      'ar': '',
      'de': '',
      'es': '',
    },
    'fg7ufmmc': {
      'en': 'Entrar',
      'ar': '',
      'de': '',
      'es': '',
    },
    'lg20s9q5': {
      'en': 'Entra ai meu(a) mano',
      'ar': '',
      'de': '',
      'es': '',
    },
    '37ri0b98': {
      'en': 'Preencha os campos abaixo',
      'ar': '',
      'de': '',
      'es': '',
    },
    'bdwyofdg': {
      'en': 'Email',
      'ar': '',
      'de': '',
      'es': '',
    },
    '6j25kkyn': {
      'en': 'Senha',
      'ar': '',
      'de': '',
      'es': '',
    },
    '06amnr4u': {
      'en': 'Entrar',
      'ar': '',
      'de': '',
      'es': '',
    },
    'uyy6oefh': {
      'en': 'Entra ou cria uma conta ai meu(a) parça!',
      'ar': '',
      'de': '',
      'es': '',
    },
    '4ll257n3': {
      'en': 'Home',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // editarAnime
  {
    'dq2452c8': {
      'en': 'Clique para modificar a imagem',
      'ar': '',
      'de': '',
      'es': '',
    },
    'rsealk3s': {
      'en': 'Informções do anime',
      'ar': '',
      'de': '',
      'es': '',
    },
    '0jq0lyc2': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'op8lgdkd': {
      'en': 'Shonen',
      'ar': '',
      'de': '',
      'es': '',
    },
    'l8216ng8': {
      'en': 'Romance',
      'ar': '',
      'de': '',
      'es': '',
    },
    'nwa3azk2': {
      'en': 'Hentai',
      'ar': '',
      'de': '',
      'es': '',
    },
    '968vyr0w': {
      'en': 'Ecchi',
      'ar': '',
      'de': '',
      'es': '',
    },
    'g9ssblz9': {
      'en': 'Harem',
      'ar': '',
      'de': '',
      'es': '',
    },
    '1i35paan': {
      'en': 'Isekai',
      'ar': '',
      'de': '',
      'es': '',
    },
    '0wdu4ex0': {
      'en': 'Search for an item...',
      'ar': '',
      'de': '',
      'es': '',
    },
    'nywul337': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ypzcj2x6': {
      'en': '1',
      'ar': '',
      'de': '',
      'es': '',
    },
    'lbyklgok': {
      'en': '2',
      'ar': '',
      'de': '',
      'es': '',
    },
    '809faznu': {
      'en': '3',
      'ar': '',
      'de': '',
      'es': '',
    },
    'z7isj4ac': {
      'en': '4',
      'ar': '',
      'de': '',
      'es': '',
    },
    'l4uzb9ho': {
      'en': '5',
      'ar': '',
      'de': '',
      'es': '',
    },
    'vf4m5oxu': {
      'en': '6',
      'ar': '',
      'de': '',
      'es': '',
    },
    'rvjzmk2k': {
      'en': '7',
      'ar': '',
      'de': '',
      'es': '',
    },
    'm5g4l2lv': {
      'en': '8',
      'ar': '',
      'de': '',
      'es': '',
    },
    '8188pnd8': {
      'en': '9',
      'ar': '',
      'de': '',
      'es': '',
    },
    '21bt7nzx': {
      'en': '10',
      'ar': '',
      'de': '',
      'es': '',
    },
    'xv54npw3': {
      'en': '+1000',
      'ar': '',
      'de': '',
      'es': '',
    },
    '3pskr3bu': {
      'en': 'Search for an item...',
      'ar': '',
      'de': '',
      'es': '',
    },
    '4c1em973': {
      'en': 'É dublado?',
      'ar': '',
      'de': '',
      'es': '',
    },
    '2yvzxhgj': {
      'en': 'Anime com dublagem😆',
      'ar': '',
      'de': '',
      'es': '',
    },
    'tbt27gbt': {
      'en': 'Anime sem dublagem😔',
      'ar': '',
      'de': '',
      'es': '',
    },
    'cds37aei': {
      'en': 'escolha',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ksvfs7is': {
      'en': 'Search for an item...',
      'ar': '',
      'de': '',
      'es': '',
    },
    'wcw1ufsl': {
      'en': 'Salvar alterações',
      'ar': '',
      'de': '',
      'es': '',
    },
    'gcnaq2pk': {
      'en': 'Editar anime',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ei7gpwx7': {
      'en': 'Home',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // inicioAnimes
  {
    'noy9yzk5': {
      'en': 'Inicio',
      'ar': '',
      'de': '',
      'es': '',
    },
    'bjxjc1vx': {
      'en': 'Wallpapers',
      'ar': '',
      'de': '',
      'es': '',
    },
    '95p634ww': {
      'en': 'Perfil',
      'ar': '',
      'de': '',
      'es': '',
    },
    '9zjccl55': {
      'en': 'Contato',
      'ar': '',
      'de': '',
      'es': '',
    },
    '46skqc6t': {
      'en': 'compartilhar',
      'ar': '',
      'de': '',
      'es': '',
    },
    'h05luqt2': {
      'en': 'Os tesouros de um otaku....⛩',
      'ar': '',
      'de': '',
      'es': '',
    },
    'vqv04zo4': {
      'en': 'Kisun',
      'ar': '',
      'de': '',
      'es': '',
    },
    'xpjo0jtc': {
      'en': 'Pesquise...',
      'ar': '',
      'de': '',
      'es': '',
    },
    's45ura64': {
      'en': 'Option 1',
      'ar': '',
      'de': '',
      'es': '',
    },
    'z8hmdh21': {
      'en': '•',
      'ar': '•',
      'de': '•',
      'es': '•',
    },
  },
  // perfil
  {
    '3n8njpri': {
      'en': 'Perfil',
      'ar': '',
      'de': '',
      'es': '',
    },
    '607fugq9': {
      'en': 'Mudar para modo escuro',
      'ar': '',
      'de': '',
      'es': '',
    },
    'laa7oiad': {
      'en': 'Mudar para modo claro',
      'ar': '',
      'de': '',
      'es': '',
    },
    'mhve70xw': {
      'en': 'Configurações da conta',
      'ar': '',
      'de': '',
      'es': '',
    },
    'iwjcudkf': {
      'en': 'Editar perfil',
      'ar': '',
      'de': '',
      'es': '',
    },
    'iqyzvlkv': {
      'en': 'Sair',
      'ar': '',
      'de': '',
      'es': '',
    },
    'dxufg2kg': {
      'en': '__',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // EditPerfil
  {
    'hk9t60jj': {
      'en': 'Perfil do usúario',
      'ar': '',
      'de': '',
      'es': '',
    },
    'o4zllazu': {
      'en': 'Mudar foto',
      'ar': '',
      'de': '',
      'es': '',
    },
    'cjkrt9gs': {
      'en': 'Nome',
      'ar': '',
      'de': '',
      'es': '',
    },
    '0vtn35fa': {
      'en': 'Seu nome...',
      'ar': '',
      'de': '',
      'es': '',
    },
    'wiq2ykc1': {
      'en': 'E-mail',
      'ar': '',
      'de': '',
      'es': '',
    },
    'y4yvnv0g': {
      'en': 'Seu email..',
      'ar': '',
      'de': '',
      'es': '',
    },
    'veldsz02': {
      'en': 'Senha',
      'ar': '',
      'de': '',
      'es': '',
    },
    'n3y7olop': {
      'en': 'Altere sua senha...',
      'ar': '',
      'de': '',
      'es': '',
    },
    'iw1tg3xr': {
      'en': 'Savar alterações',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ghpe7pyf': {
      'en': 'Perfil',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // Wallpapers
  {
    'jpk3amk6': {
      'en': 'Wallpapers',
      'ar': '',
      'de': '',
      'es': '',
    },
    'bye1a42e': {
      'en': 'Home',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // Contato
  {
    '0yknnadj': {
      'en': 'Desenvolvedor',
      'ar': '',
      'de': '',
      'es': '',
    },
    '9xjrxzjc': {
      'en': 'Marcelo Nascimento - 21 anos',
      'ar': '',
      'de': '',
      'es': '',
    },
    '32e3m9ku': {
      'en': 'INFORMAÇÕES DE CONTAT0:',
      'ar': '',
      'de': '',
      'es': '',
    },
    '5w40qpx0': {
      'en': 'Telefone:',
      'ar': '',
      'de': '',
      'es': '',
    },
    'dy9nb5ui': {
      'en': '+5579996585070',
      'ar': '',
      'de': '',
      'es': '',
    },
    'bj2nfj98': {
      'en': 'E-mail',
      'ar': '',
      'de': '',
      'es': '',
    },
    'zpz283lc': {
      'en': 'marcelodev766@gmail.com',
      'ar': '',
      'de': '',
      'es': '',
    },
    '6ptleh7t': {
      'en': 'Contato',
      'ar': '',
      'de': '',
      'es': '',
    },
    'g5q1bfvq': {
      'en': 'Home',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // Miscellaneous
  {
    'lzyb73wy': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'kx9cdks4': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'efvtwj7k': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ec5hfa1e': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'q5ljwvfo': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'j4rmwb3h': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '6ah1b18f': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '2kos1hen': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'efiapk4n': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'orykz2g7': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '3b6tejl2': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ypronxkj': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'aox3s4fb': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'l8hv5a7z': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '4pjwb70a': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '0xlokf4y': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '8twlwiwt': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'gh1td53f': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '0mzcjwnw': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ggub45es': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'zo8b7w76': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'sj109mcw': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'qouohrir': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    't4xzlq9q': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '513nj4m0': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'a1jxfgju': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
