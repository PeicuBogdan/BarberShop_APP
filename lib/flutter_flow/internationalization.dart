import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ro'];

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
    String? roText = '',
  }) =>
      [enText, roText][languageIndex] ?? '';

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
  // Home_Page
  {
    'rflwhhv8': {
      'en': '4,94   ( 66 reviews )',
      'ro': '',
    },
    'kw126xfq': {
      'en': 'Street Molnar Jason 14, Brasov',
      'ro': '',
    },
    'j6uofls7': {
      'en': 'Working Hours',
      'ro': '',
    },
    'r0naz90h': {
      'en': 'Monday',
      'ro': '',
    },
    'zooahljj': {
      'en': '10 am  -  7 pm',
      'ro': '',
    },
    'b6dz2cid': {
      'en': 'Tuesday',
      'ro': '',
    },
    '23vi0hjh': {
      'en': '10 am  -  7 pm',
      'ro': '',
    },
    'k3atuv6m': {
      'en': 'Wednesday',
      'ro': '',
    },
    'ma6c3m95': {
      'en': '10 am  -  7 pm',
      'ro': '',
    },
    '4xzzbhh2': {
      'en': 'Thursday',
      'ro': '',
    },
    'hf1gieng': {
      'en': '10 am  -  7 pm',
      'ro': '',
    },
    '3ylbchvx': {
      'en': 'Friday',
      'ro': '',
    },
    'xgzg9ywa': {
      'en': '10 am  -  7 pm',
      'ro': '',
    },
    'bocp6vyj': {
      'en': 'Saturday',
      'ro': '',
    },
    'gl3ag7wv': {
      'en': '10 am  -  4:30 pm',
      'ro': '',
    },
    'kxsucf3k': {
      'en': 'Sunday',
      'ro': '',
    },
    '7htvmix0': {
      'en': 'CLOSED',
      'ro': '',
    },
    '1gnf53qw': {
      'en': 'Contact',
      'ro': '',
    },
    'k4e8qkvh': {
      'en': 'Street Molnar Jason 14, Brasov',
      'ro': '',
    },
    'tnq2qagk': {
      'en': 'Next to  \' Legend Optic \'',
      'ro': '',
    },
    'mhcnqnut': {
      'en': 'Home',
      'ro': 'Acasă',
    },
  },
  // Log_In
  {
    'yr2i7s2x': {
      'en': 'Email',
      'ro': 'E-mail',
    },
    'ck9maenb': {
      'en': 'Password',
      'ro': 'Parola',
    },
    'i0eefgsj': {
      'en': 'Log In',
      'ro': 'Log in',
    },
    '2dp26dg1': {
      'en': 'Forgot password?',
      'ro': 'Aţi uitat parola?',
    },
    'xt86vase': {
      'en': 'Do not have an account?',
      'ro': 'Nu ai un cont?',
    },
    'bmm4l0su': {
      'en': 'Or sign up with',
      'ro': 'Sau înscrieți-vă cu',
    },
    '655au6n0': {
      'en': 'Continue with Google',
      'ro': 'Continuați cu Google',
    },
    'rg5np2ec': {
      'en': 'Continue with Apple',
      'ro': 'Continuați cu Apple',
    },
    'h6ze1m9y': {
      'en': 'Home',
      'ro': 'Acasă',
    },
  },
  // Sign_Up
  {
    'y8ybifwi': {
      'en': 'Email',
      'ro': 'E-mail',
    },
    'rbjsr4e7': {
      'en': '',
      'ro': '',
    },
    'dmindqgy': {
      'en': 'Password',
      'ro': 'Parola',
    },
    'hwuk1xwl': {
      'en': '',
      'ro': '',
    },
    '25ynsmzd': {
      'en': '',
      'ro': '',
    },
    '50t0nyi4': {
      'en': 'Confirm Password',
      'ro': 'Confirmă parola',
    },
    'v16ovuxy': {
      'en': '',
      'ro': '',
    },
    'o0hyk64b': {
      'en': 'Create Account',
      'ro': 'Creează cont',
    },
    'u56gugdq': {
      'en': 'Do you have an account?',
      'ro': 'Ai un cont?',
    },
    'c1noxyg2': {
      'en': 'Or sign up with',
      'ro': 'Sau înscrieți-vă cu',
    },
    '85dyhx4q': {
      'en': 'Continue with Google',
      'ro': 'Continuați cu Google',
    },
    'war0l3bt': {
      'en': 'Continue with Apple',
      'ro': 'Continuați cu Apple',
    },
    '2vp5gyoy': {
      'en': 'Home',
      'ro': 'Acasă',
    },
  },
  // Forgot_Password
  {
    '1xq4ehph': {
      'en': 'Email',
      'ro': 'E-mail',
    },
    'mnmra4qo': {
      'en': 'Send Link',
      'ro': 'Trimite linkul',
    },
    'bb9gknsb': {
      'en': 'Home',
      'ro': 'Acasă',
    },
  },
  // Profile_Create
  {
    'l4vx5pc9': {
      'en': 'Home',
      'ro': '',
    },
  },
  // Profile
  {
    '9o9i6n7a': {
      'en': 'Edit Profile',
      'ro': '',
    },
    'ok1fje3a': {
      'en': 'Profile',
      'ro': '',
    },
    'vheocbcd': {
      'en': 'Appointments',
      'ro': '',
    },
    'safpv7qt': {
      'en': 'Log Out',
      'ro': '',
    },
    'lj4ejyae': {
      'en': 'Staff',
      'ro': '',
    },
    'di3bpz50': {
      'en': 'Owner',
      'ro': '',
    },
    'jaj0ast2': {
      'en': 'Profile',
      'ro': '',
    },
  },
  // Profile_Edit
  {
    'cs3jbw6n': {
      'en': 'Home',
      'ro': '',
    },
  },
  // Offered_Services
  {
    '66f5oito': {
      'en': 'Offered Services',
      'ro': '',
    },
    'cp4ttnkf': {
      'en': 'Tuns + Spalat + Aranjat',
      'ro': '',
    },
    'bbvl1ahg': {
      'en': '45  min',
      'ro': '',
    },
    'puqcf6xt': {
      'en': '60  lei',
      'ro': '',
    },
    'btbvdeo1': {
      'en': 'Schedule',
      'ro': '',
    },
    '0wuu8owi': {
      'en': 'Tuns + Spalat + Barba',
      'ro': '',
    },
    'qwefxypa': {
      'en': '1  h',
      'ro': '',
    },
    'nr9g743v': {
      'en': '90  lei',
      'ro': '',
    },
    'zq0iyv5w': {
      'en': 'Schedule',
      'ro': '',
    },
    'im91kush': {
      'en': 'Barba',
      'ro': '',
    },
    'q9f68z2g': {
      'en': '15  min',
      'ro': '',
    },
    'etcpjsgg': {
      'en': '30  lei',
      'ro': '',
    },
    '0vxzinql': {
      'en': 'Schedule',
      'ro': '',
    },
    '4dregf8n': {
      'en': 'Other Services',
      'ro': '',
    },
    'yh7bcswj': {
      'en': 'Tuns  Studenti',
      'ro': '',
    },
    '5gaz2q0q': {
      'en': 'REDUCERE',
      'ro': '',
    },
    'hjlnqzky': {
      'en': '45  min',
      'ro': '',
    },
    'tb8i5k68': {
      'en': '48 lei',
      'ro': '',
    },
    'oqdjuuyg': {
      'en': 'Schedule',
      'ro': '',
    },
    'df0vzdcn': {
      'en': 'Daca esti student, aceasta optiune este pentru tine',
      'ro': '',
    },
    'cnbe9buz': {
      'en': 'Services',
      'ro': '',
    },
  },
  // Staff_Home
  {
    'p7uthrhi': {
      'en': 'Staff',
      'ro': '',
    },
  },
  // Owner_Home
  {
    'vvfp3pz8': {
      'en': 'Owner Tab',
      'ro': '',
    },
    'bbl2f5ju': {
      'en': 'Add Services          ',
      'ro': '',
    },
    'gqqe4pk4': {
      'en': '(This will appear on \'Services\' Tab )',
      'ro': '',
    },
    'b20plmjz': {
      'en': 'Home',
      'ro': '',
    },
  },
  // Appointments_View
  {
    'q6w8k8rk': {
      'en': 'Appoiments',
      'ro': '',
    },
    '4zslw6i8': {
      'en': 'this Weeks Apoiments',
      'ro': '',
    },
    '5eani0ul': {
      'en': 'Customers',
      'ro': '',
    },
    'nl1xw8hu': {
      'en': 'Albert Swiss',
      'ro': '',
    },
    'i549925w': {
      'en': 'albert@companyname.com',
      'ro': '',
    },
    'nyvjcwpn': {
      'en': 'Nicki Smith',
      'ro': '',
    },
    'y2n8nliw': {
      'en': 'nicki@companyname.com',
      'ro': '',
    },
    'ur81spbu': {
      'en': 'Elaine Robertson',
      'ro': '',
    },
    'o9rn6vas': {
      'en': 'elaine@companyname.com',
      'ro': '',
    },
    'rqwpkcuw': {
      'en': 'Mark as Complete',
      'ro': '',
    },
    'kheueil6': {
      'en': 'Home',
      'ro': '',
    },
  },
  // Select_Barber
  {
    'mecwy959': {
      'en': 'Add Appoiment!',
      'ro': '',
    },
    'rrlw5g23': {
      'en': 'Select your barber!',
      'ro': '',
    },
    'yzbmzt5v': {
      'en': 'Home',
      'ro': '',
    },
  },
  // Profile_CR_EDIT
  {
    'by0qk1et': {
      'en': 'Adjust the content below to CREATE your profile.',
      'ro': '',
    },
    'omqwezyc': {
      'en': 'Change Photo',
      'ro': '',
    },
    '89kdp0dg': {
      'en': 'Your Name',
      'ro': '',
    },
    'aqa07mlt': {
      'en': 'Your full name...',
      'ro': '',
    },
    '6lkdl6em': {
      'en': 'Your Phone',
      'ro': '',
    },
    'n2wti1o3': {
      'en': 'Your phone number',
      'ro': '',
    },
    'lci7imuo': {
      'en': 'Brasov,Brasov',
      'ro': '',
    },
    'ki5o9a4e': {
      'en': 'Codlea',
      'ro': '',
    },
    '6tfy14zr': {
      'en': 'Miercurea Ciuc',
      'ro': '',
    },
    'kdq2cwck': {
      'en': 'Rasnov',
      'ro': '',
    },
    'rwo72ijn': {
      'en': 'Buzau',
      'ro': '',
    },
    'zvnsn2t7': {
      'en': 'Location',
      'ro': '',
    },
    '6a0pqfaz': {
      'en': 'Search for an item...',
      'ro': '',
    },
    'wkqo5psz': {
      'en': 'Short Description',
      'ro': '',
    },
    '6vav73i0': {
      'en': 'A little about you...',
      'ro': '',
    },
    'er36xnsn': {
      'en': 'Save Changes',
      'ro': 'Salvează modificările',
    },
  },
  // Title_Author
  {
    'l5h9caj5': {
      'en': 'DownStairs - BarberShop',
      'ro': 'DownStairs - BarberShop',
    },
    '0r7ja5m0': {
      'en': ' - Tomeci Alexandru -',
      'ro': '- Tomeci Alexandru -',
    },
  },
  // Servicii
  {
    'ex788nzu': {
      'en': 'Full Name',
      'ro': '',
    },
    'k70ihn8j': {
      'en': 'Time',
      'ro': '',
    },
    'a4o81xtb': {
      'en': '  min',
      'ro': '',
    },
    '00t1yedt': {
      'en': 'Price',
      'ro': '',
    },
    'jbm35dyn': {
      'en': ' lei',
      'ro': '',
    },
    'n2o1qa36': {
      'en': 'Add',
      'ro': '',
    },
  },
  // Miscellaneous
  {
    'wb1ghsfr': {
      'en': 'Button',
      'ro': 'Buton',
    },
    'eu2x32wq': {
      'en': 'Forgot Password',
      'ro': 'Aţi uitat parola',
    },
    'wrb5i43j': {
      'en': 'Email',
      'ro': 'E-mail',
    },
    'dsqnp909': {
      'en': 'Password',
      'ro': 'Parola',
    },
    '1nk3u17s': {
      'en': 'Or sign up with',
      'ro': 'Sau înscrieți-vă cu',
    },
    '9xjtcg0h': {
      'en': 'Continue with Google',
      'ro': 'Continuați cu Google',
    },
    'oru8d79k': {
      'en': 'Continue with Apple',
      'ro': 'Continuați cu Apple',
    },
    'w6dgou0p': {
      'en': 'Log In',
      'ro': 'Log in',
    },
    '8jwdkeo4': {
      'en': 'Fagaras',
      'ro': '',
    },
    'uwaxsdym': {
      'en': 'Brasov',
      'ro': '',
    },
    'p2qzfabn': {
      'en': 'Location',
      'ro': '',
    },
    '5b21d2ib': {
      'en': 'Search for an item...',
      'ro': '',
    },
    'btifyllf': {
      'en': '',
      'ro': '',
    },
    '27d5zzrj': {
      'en': '',
      'ro': '',
    },
    'c0lm20lx': {
      'en': '',
      'ro': '',
    },
    'ps48l5wv': {
      'en': '',
      'ro': '',
    },
    'csudmji0': {
      'en': '',
      'ro': '',
    },
    'q2g6m9v0': {
      'en': '',
      'ro': '',
    },
    '2tcve4rv': {
      'en': '',
      'ro': '',
    },
    '4txq1t3h': {
      'en': '',
      'ro': '',
    },
    '2xtxbbi8': {
      'en': '',
      'ro': '',
    },
    'lp4ups3g': {
      'en': '',
      'ro': '',
    },
    'sqkhvoyh': {
      'en': '',
      'ro': '',
    },
    '3e8nbjvq': {
      'en': '',
      'ro': '',
    },
    'mgnwttwl': {
      'en': '',
      'ro': '',
    },
    'ekqokhwl': {
      'en': '',
      'ro': '',
    },
    'aztfw7g6': {
      'en': '',
      'ro': '',
    },
    'zo7jfarn': {
      'en': '',
      'ro': '',
    },
    'wjuvntce': {
      'en': '',
      'ro': '',
    },
    'rdnli6x9': {
      'en': '',
      'ro': '',
    },
    'zd2mmupr': {
      'en': '',
      'ro': '',
    },
    'dt1bx15c': {
      'en': '',
      'ro': '',
    },
    'jd6ut48n': {
      'en': '',
      'ro': '',
    },
    'e2wp2q4r': {
      'en': '',
      'ro': '',
    },
    'vvu7632w': {
      'en': '',
      'ro': '',
    },
    'u4ee9x1j': {
      'en': '',
      'ro': '',
    },
    '2cdhacko': {
      'en': '',
      'ro': '',
    },
    '276nco59': {
      'en': '',
      'ro': '',
    },
  },
].reduce((a, b) => a..addAll(b));
