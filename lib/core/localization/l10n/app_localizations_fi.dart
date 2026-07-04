// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get app_title => 'BlackBox-sovellus';

  @override
  String get common_yes => 'Kyllä';

  @override
  String get common_no => 'Ei';

  @override
  String get common_cancel => 'Peruuta';

  @override
  String get common_save => 'Tallenna';

  @override
  String get common_save_changes => 'Tallenna Muutokset';

  @override
  String get common_continue => 'Jatka';

  @override
  String get common_next => 'Seuraava';

  @override
  String get auth_login => 'Kirjaudu sisään';

  @override
  String get auth_space_login => 'Kirjaudu sisään';

  @override
  String get auth_logout => 'Kirjaudu ulos';

  @override
  String get auth_confirm_logout => 'Haluatko varmasti kirjautua ulos?';

  @override
  String get auth_signup => 'Rekisteröidy';

  @override
  String get auth_create_account => 'Luo Tili';

  @override
  String get auth_already_have_account => 'Onko sinulla jo tili? ';

  @override
  String get auth_no_account => 'Eikö sinulla ole tiliä?';

  @override
  String get auth_forgot_password => 'Unohditko Salasanan?';

  @override
  String get auth_reset_password => 'Nollaa Salasana?';

  @override
  String get auth_change_password => 'Vaihda Salasana';

  @override
  String get auth_continue => 'Jatkamalla hyväksyt\n';

  @override
  String get auth_terms => 'Käyttöehdot ja Tietosuojakäytäntö';

  @override
  String get auth_email => 'Sähköposti';

  @override
  String get auth_password => 'Salasana';

  @override
  String get auth_confirm_password => 'Vahvista Salasana';

  @override
  String get auth_new_password => 'Uusi Salasana';

  @override
  String get auth_confirm_new_password => 'Vahvista Uusi Salasana';

  @override
  String get auth_enter_email => 'Syötä sähköpostiosoite';

  @override
  String get auth_password_hint => 'Syötä salasanasi';

  @override
  String get full_name => 'Koko Nimi';

  @override
  String get email_hint => 'esimerkki@gmail.com';

  @override
  String get name_hint => 'Matti Virtanen';

  @override
  String get required_name => 'Koko nimi vaaditaan';

  @override
  String get required_email => 'Sähköposti vaaditaan';

  @override
  String get email_end => 'Sähköpostin on päätyttävä @gmail.com';

  @override
  String get required_password => 'Salasana vaaditaan';

  @override
  String get required_confirm_password => 'Salasanan vahvistus vaaditaan';

  @override
  String get password_do_not_match => 'Salasanat eivät täsmää';

  @override
  String get min_password =>
      'Salasanassa on oltava vähintään 8 merkkiä ja numeroita';

  @override
  String get send_verification_code => 'Lähetä Vahvistuskoodi';

  @override
  String get password_changed_successfully =>
      'Salasana on\nVaihdettu Onnistuneesti';

  @override
  String get forget_password_title =>
      'Syötä tilisi sähköpostiosoite, niin lähetämme sinulle salasanan nollaus -turvakoodin.';

  @override
  String get auth_security_pin => 'Turvakoodi';

  @override
  String get auth_enter_pin => 'Syötä turvakoodi';

  @override
  String get verify => 'Vahvista';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Lähetä uudelleen ${seconds}s kuluttua';
  }

  @override
  String get home_title => 'Etusivu';

  @override
  String get home_welcome => 'Hei, Tervetuloa Takaisin';

  @override
  String get home_good_morning => 'Hyvää Huomenta';

  @override
  String get home_good_afternoon => 'Hyvää iltapäivää';

  @override
  String get home_good_evening => 'Hyvää iltaa';

  @override
  String get home_looks_good => 'Näyttää\nHyvältä';

  @override
  String get home_safety_score => 'Turvallisuuspisteiden Yleiskatsaus';

  @override
  String get home_total_accidents => 'Onnettomuuksia Yhteensä';

  @override
  String get total_active_cars => 'Aktiivisia Autoja Yhteensä';

  @override
  String get total_cars => 'Autoja Yhteensä';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% autoistasi on aktiivisia';
  }

  @override
  String get car_section_title => 'Autot';

  @override
  String get car_view_all => 'Näytä Autot';

  @override
  String get car_add => 'Lisää Auto';

  @override
  String get car_edit => 'Muokkaa Autoa';

  @override
  String get car_name => 'Auton Nimi';

  @override
  String get car_plate => 'Rekisterikilpi';

  @override
  String get car_type => 'Autotyyppi';

  @override
  String get car_driver_name => 'Kuljettajan Nimi';

  @override
  String car_item_title(Object id) {
    return 'Auto #$id';
  }

  @override
  String get tracking_live => 'Live-seuranta';

  @override
  String get tracking_last_updates => 'Viimeisimmät Päivitykset';

  @override
  String get event_title => 'Ajotapahtumat';

  @override
  String get event_speeding => 'Ylinopeus';

  @override
  String get event_hard_braking => 'Kova Jarrutus';

  @override
  String get event_aggressive_turns => 'Aggressiiviset Käännökset';

  @override
  String get event_crash => 'Törmäys';

  @override
  String event_location(Object location) {
    return '${location}ssa';
  }

  @override
  String event_time(Object time, Object date) {
    return '$time - $date';
  }

  @override
  String event_speed(Object speed) {
    return '$speed km/h';
  }

  @override
  String get event_severity => 'Vakavuus';

  @override
  String get event_severity_low => 'Matala';

  @override
  String get event_severity_medium => 'Keskitaso';

  @override
  String get event_severity_high => 'Korkea';

  @override
  String get event_severity_critical => 'Kriittinen';

  @override
  String get event_reason => 'Syy';

  @override
  String get event_last_speed => 'Viimeksi Tallennettu Nopeus';

  @override
  String get notification_title => 'Ilmoitukset';

  @override
  String get notification_today => 'Tänään';

  @override
  String get notification_yesterday => 'Eilen';

  @override
  String get notification_earlier => 'Aiemmin Tällä Viikolla';

  @override
  String get notification_fuel_alert => 'Polttoaineen Vuotovaroitus!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Ajoneuvo $car, jota ajaa $driver, ilmoitti nopeasta polttoainetason laskusta.';
  }

  @override
  String get notification_crash_alert => 'Vakava törmäys havaittu!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Ajoneuvo $car, jota ajaa $driver, ilmoitti vakavasta törmäyksestä.';
  }

  @override
  String get profile_title => 'Profiili';

  @override
  String get profile_edit => 'Muokkaa Profiiliani';

  @override
  String get update_profile => 'Päivitä Profiili';

  @override
  String get user_name => 'Käyttäjänimi';

  @override
  String get security_title => 'Turvallisuus';

  @override
  String get change_password => 'Vaihda Salasana';

  @override
  String get settings_title => 'Asetukset';

  @override
  String get settings_notifications => 'Ilmoitusasetukset';

  @override
  String get settings_general_notifications => 'Yleiset Ilmoitukset';

  @override
  String get account_settings => 'Tiliasetukset';

  @override
  String get push_notification => 'Push-ilmoitukset';

  @override
  String get dark_mode => 'Tumma Tila Päällä';

  @override
  String get help_title => 'Tukikeskus';

  @override
  String get help_and_faq => 'Ohje & UKK';

  @override
  String get help_contact => 'Ota Meihin Yhteyttä';

  @override
  String get help_faq => 'Usein Kysytyt Kysymykset';

  @override
  String get how_help => 'Kuinka Voimme Auttaa Sinua?';

  @override
  String get on_wh_num => 'WhatsApp-numeroon';

  @override
  String get language => 'Kieli';

  @override
  String get question1 => 'Kuinka käyttää BlackBoxia?';

  @override
  String get answer1 =>
      'Asenna BlackBox-laite autoosi, kirjaudu sovellukseen ja ala ajaa. Sovellus tallentaa ja näyttää ajotietosi automaattisesti.';

  @override
  String get question2 => 'Paljonko BlackBoxin käyttö maksaa?';

  @override
  String get answer2 =>
      'Hinta riippuu valitusta suunnitelmasta ja palveluista. Ota yhteyttä yritykseen hintatietojen saamiseksi.';

  @override
  String get question3 => 'Kuinka ottaa yhteyttä tukeen?';

  @override
  String get answer3 =>
      'Voit ottaa yhteyttä tukeen WhatsAppin kautta yrityksen virallisella numerolla tai vierailemalla yrityksen toimistolla aukioloaikoina.';

  @override
  String get question4 => 'Kuinka voin nollata salasanani, jos unohdan sen?';

  @override
  String get answer4 =>
      'Käytä kirjautumisnäytön \'Unohditko salasanan\' -vaihtoehtoa ja seuraa ohjeita salasanan nollaamiseksi.';

  @override
  String get question5 =>
      'Onko olemassa tietosuoja- tai tietoturvatoimenpiteitä?';

  @override
  String get answer5 =>
      'Kyllä. Tietosi tallennetaan ja suojataan turvallisesti, eikä niitä jaeta ilman lupaasi, paitsi lain vaatiessa.';

  @override
  String get question6 => 'Voinko mukauttaa asetuksia sovelluksessa?';

  @override
  String get answer6 =>
      'Kyllä. Voit mukauttaa käytettävissä olevia asetuksia, kuten ilmoituksia ja asetuksia, sovelluksessa.';

  @override
  String get question7 => 'Kuinka voin poistaa tilini?';

  @override
  String get answer7 =>
      'Poistaaksesi tilisi, ota yhteyttä yritykseen WhatsAppin kautta tai vieraile yrityksen toimistolla.';

  @override
  String get question8 => 'Kuinka pääsen analyysikäsikirjoitukseeni?';

  @override
  String get answer8 =>
      'Voit tarkastella aiempia matkoja ja ajoanalyysejä sovelluksen Historia- tai Analyysit-osiossa.';

  @override
  String get question9 => 'Voinko käyttää sovellusta offline-tilassa?';

  @override
  String get answer9 =>
      'Sovelluksessa on rajoitettu offline-toiminnallisuus. Internetyhteys vaaditaan tietojen synkronointiin ja kaikkien ominaisuuksien käyttöön.';

  @override
  String get terms_title => 'Käyttöehdot';

  @override
  String get terms_accept => 'Hyväksy käyttöehdot';

  @override
  String get terms_full =>
      '1. Ehtojen Hyväksyminen\nAsentamalla tai käyttämällä tätä sovellusta hyväksyt nämä Käyttöehdot. Jos et hyväksy, lopeta sovelluksen käyttö.\n\n2. Sovelluksen Tarkoitus\nTämä sovellus on ajoneuvon mustalaatikko- ja telematikkajärjestelmä, jota käytetään ajoneuvon suorituskyvyn ja ajokäyttäytymisen seurantaan ainoastaan tiedotus-, turvallisuus- ja analyyttisiin tarkoituksiin.\n\n3. Kerätyt Dataparametrit\nSovellus voi kerätä ja käsitellä ajoneuvo- ja ajotietoja, mukaan lukien mutta ei rajoittuen:\n\n• Ajoneuvon nopeus\n• Polttoaineen kulutus ja polttoainetaso\n• Kiihtyvyys ja hidastuvuus\n• Kovat jarrutukset ja nopeat kiihdytykset\n• Jyrkät käännökset\n• GPS-sijaintidata (leveys- ja pituusaste)\n• Matkan etäisyys, kesto ja aika\n• Kuljettajan ja ajoneuvon tunnistetiedot\n\nKäyttämällä sovellusta suostut nimenomaisesti näiden parametrien keräämiseen.\n\n4. Palvelun Saatavuus\nSovelluksen jatkuvaa, reaaliaikaista tai virheitä vapaata toimintaa ei taata teknisten rajoitusten vuoksi.';

  @override
  String get validation_password_mismatch => 'Salasanat eivät täsmää';

  @override
  String get validation_invalid_phone => 'Virheellinen puhelinnumero';

  @override
  String get validation_incorrect_pin => 'Virheellinen PIN';

  @override
  String get validation_empty_fields => 'Täytä kaikki kentät';

  @override
  String get empty_no_cars => 'Autoja ei löydy';

  @override
  String get empty_no_notifications => 'Ei vielä ilmoituksia';

  @override
  String get empty_no_events => 'Ei tapahtumia saatavilla';

  @override
  String get status_loading => 'Ladataan...';

  @override
  String get status_success => 'Toiminto onnistui';

  @override
  String get status_error => 'Jotain meni pieleen';

  @override
  String get confirm_delete_car => 'Haluatko varmasti poistaa tämän auton?';

  @override
  String get confirm_reset_password => 'Haluatko varmasti nollata salasanasi?';

  @override
  String get search => 'Hae';

  @override
  String get search_hint => 'Hae...';

  @override
  String get search_no_results => 'Hakutuloksia ei löydy';

  @override
  String get filter => 'Suodata';

  @override
  String get sort => 'Lajittele';

  @override
  String get onboarding_title_1 => 'Tervetuloa';

  @override
  String get onboarding_desc_1 => 'Black Box Manageriin';

  @override
  String get onboarding_title_2 => 'Katso Ajosi Tarina,';

  @override
  String get onboarding_desc_2 =>
      'Tallentaa jokaisen matkan, analysoi jokaisen kilometrin.';

  @override
  String get delete_car => 'Poista auto';

  @override
  String get sedan => 'Sedan';

  @override
  String get heavy_duty => 'Raskas';

  @override
  String get current_password => 'Nykyinen salasana';

  @override
  String get password_requirement =>
      'Täytyy olla vähintään 8 merkkiä pitkä ja sisältää sekä kirjaimia että numeroita.';

  @override
  String get current_password_is_not_correct => 'Nykyinen salasana on väärin.';

  @override
  String get vehicle => 'Ajoneuvo';

  @override
  String get driven_by => 'jonka kuljettaja on';

  @override
  String get report_fuel_level => 'raportoi nopeasta polttoainetason laskusta.';

  @override
  String get report_collision_or_rollover =>
      'raportoi vakavasta törmäyksestä tai ympärikäännöksestä (sos).';

  @override
  String get report_overheating_or_dtc =>
      'raportoi moottorin ylikuumenemisesta tai DTC-koodeista.';

  @override
  String get unknown_driver => 'Tuntematon kuljettaja';

  @override
  String get mechanical_failure => 'Varoitus mekaanisesta viasta!';

  @override
  String get critical_crash => 'Vakava törmäys havaittu!';

  @override
  String get fuel_leak => 'Polttoainevuotohälytys!';

  @override
  String get today => 'Tänään';

  @override
  String get yesterday => 'Eilen';

  @override
  String get day => 'päivä';

  @override
  String get days => 'päivää';

  @override
  String get week => 'viikko';

  @override
  String get weeks => 'viikkoa';

  @override
  String get month => 'kuukausi';

  @override
  String get months => 'kuukautta';

  @override
  String get year => 'vuosi';

  @override
  String get years => 'vuotta';

  @override
  String get january => 'Tammikuu';

  @override
  String get february => 'Helmikuu';

  @override
  String get march => 'Maaliskuu';

  @override
  String get april => 'Huhtikuu';

  @override
  String get may => 'Toukokuu';

  @override
  String get june => 'Kesäkuu';

  @override
  String get july => 'Heinäkuu';

  @override
  String get august => 'Elokuu';

  @override
  String get september => 'Syyskuu';

  @override
  String get october => 'Lokakuu';

  @override
  String get november => 'Marraskuu';

  @override
  String get december => 'Joulukuu';

  @override
  String more_than_years(Object num) {
    return '#$num vuoden ajan';
  }

  @override
  String get since_two_years => '2 vuoden ajan';

  @override
  String get since_year => 'Vuoden ajan';

  @override
  String since_months(Object num) {
    return '#$num kuukauden ajan';
  }

  @override
  String get since_two_months => '2 kuukauden ajan';

  @override
  String get since_month => 'Kuukauden ajan';

  @override
  String since_weeks(Object num) {
    return '#$num viikon ajan';
  }

  @override
  String get since_two_weeks => '2 viikon ajan';

  @override
  String get since_week => 'Viikon ajan';

  @override
  String since_days(Object num) {
    return '#$num päivän ajan';
  }

  @override
  String get since_two_days => '2 päivän ajan';

  @override
  String get since_day => 'Päivän ajan';

  @override
  String get view_driving_events => 'Näytä ajotapahtumat';

  @override
  String get coolant_temp => 'Jäähdytysnesteen lämpötila';

  @override
  String get dtc_codes => 'DTC-koodit';

  @override
  String get road_bump => 'Tien epätasaisuus';

  @override
  String get fuel_level => 'Polttoainetaso';

  @override
  String get driving_behavior_score => 'Ajokäyttäytymisen pistemäärä';

  @override
  String get event_major_crashes => 'Vakavat törmäykset';

  @override
  String get event_speeding_incident => 'Ylinopeustapaukset';

  @override
  String get driver_id => 'Kuljettajan tunnus';

  @override
  String get more_details => 'Lisätietoja';

  @override
  String get events => 'Tapahtumat';

  @override
  String get error_email_exists => 'Tämä sähköpostiosoite on jo olemassa';

  @override
  String get error_wrong_password => 'Väärä salasana';

  @override
  String get error_phone_exists => 'Tämä puhelinnumero on jo käytössä';

  @override
  String get error_sp_ch =>
      'Salasanassa on oltava vähintään yksi erikoismerkki';

  @override
  String get error_up => 'Salasanassa on oltava vähintään yksi iso kirjain';

  @override
  String get error_low => 'Salasanassa on oltava vähintään yksi pieni kirjain';

  @override
  String get error_num => 'Salasanassa on oltava vähintään yksi numero';

  @override
  String get error_required => 'Tämä kenttä on pakollinen';

  @override
  String get error_invalid_email => 'Virheellinen sähköpostiosoite';

  @override
  String error_password_short(Object length) {
    return 'Salasanassa on oltava vähintään $length merkkiä';
  }
}
