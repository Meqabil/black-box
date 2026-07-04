// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => 'Sì';

  @override
  String get common_no => 'No';

  @override
  String get common_cancel => 'Annulla';

  @override
  String get common_save => 'Salva';

  @override
  String get common_save_changes => 'Salva Modifiche';

  @override
  String get common_continue => 'Continua';

  @override
  String get common_next => 'Avanti';

  @override
  String get auth_login => 'Accedi';

  @override
  String get auth_space_login => 'Accedi';

  @override
  String get auth_logout => 'Esci';

  @override
  String get auth_confirm_logout => 'Sei sicuro di voler uscire?';

  @override
  String get auth_signup => 'Registrati';

  @override
  String get auth_create_account => 'Crea Account';

  @override
  String get auth_already_have_account => 'Hai già un account? ';

  @override
  String get auth_no_account => 'Non hai un account?';

  @override
  String get auth_forgot_password => 'Password Dimenticata?';

  @override
  String get auth_reset_password => 'Reimposta Password?';

  @override
  String get auth_change_password => 'Cambia Password';

  @override
  String get auth_continue => 'Continuando, accetti i\n';

  @override
  String get auth_terms => 'Termini di Utilizzo e Informativa sulla Privacy';

  @override
  String get auth_email => 'Email';

  @override
  String get auth_password => 'Password';

  @override
  String get auth_confirm_password => 'Conferma Password';

  @override
  String get auth_new_password => 'Nuova Password';

  @override
  String get auth_confirm_new_password => 'Conferma Nuova Password';

  @override
  String get auth_enter_email => 'Inserisci l\'indirizzo email';

  @override
  String get auth_password_hint => 'Inserisci la tua password';

  @override
  String get full_name => 'Nome Completo';

  @override
  String get email_hint => 'esempio@gmail.com';

  @override
  String get name_hint => 'Mario Rossi';

  @override
  String get required_name => 'Il Nome Completo è obbligatorio';

  @override
  String get required_email => 'L\'Email è obbligatoria';

  @override
  String get email_end => 'L\'email deve terminare con @gmail.com';

  @override
  String get required_password => 'La Password è obbligatoria';

  @override
  String get required_confirm_password => 'La Conferma Password è obbligatoria';

  @override
  String get password_do_not_match => 'Le password non coincidono';

  @override
  String get min_password =>
      'La password deve contenere almeno 8 caratteri e numeri';

  @override
  String get send_verification_code => 'Invia Codice di Verifica';

  @override
  String get password_changed_successfully =>
      'Password Modificata\nCon Successo';

  @override
  String get forget_password_title =>
      'Inserisci l\'email associata al tuo account e ti invieremo un PIN di sicurezza per reimpostare la password.';

  @override
  String get auth_security_pin => 'PIN di Sicurezza';

  @override
  String get auth_enter_pin => 'Inserisci il PIN di sicurezza';

  @override
  String get verify => 'Verifica';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Invia di nuovo tra ${seconds}s';
  }

  @override
  String get home_title => 'Home';

  @override
  String get home_welcome => 'Ciao, Bentornato';

  @override
  String get home_good_morning => 'Buongiorno';

  @override
  String get home_good_afternoon => 'Buon pomeriggio';

  @override
  String get home_good_evening => 'Buona sera';

  @override
  String get home_looks_good => 'Tutto\nBene';

  @override
  String get home_safety_score => 'Panoramica Punteggio Sicurezza';

  @override
  String get home_total_accidents => 'Totale Incidenti';

  @override
  String get total_active_cars => 'Totale Auto Attive';

  @override
  String get total_cars => 'Totale Auto';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% delle tue auto sono attive';
  }

  @override
  String get car_section_title => 'Auto';

  @override
  String get car_view_all => 'Vedi Auto';

  @override
  String get car_add => 'Aggiungi Auto';

  @override
  String get car_edit => 'Modifica Auto';

  @override
  String get car_name => 'Nome Auto';

  @override
  String get car_plate => 'Targa Auto';

  @override
  String get car_type => 'Tipo di Auto';

  @override
  String get car_driver_name => 'Nome del Conducente';

  @override
  String car_item_title(Object id) {
    return 'Auto #$id';
  }

  @override
  String get tracking_live => 'Tracciamento in Tempo Reale';

  @override
  String get tracking_last_updates => 'Ultimi Aggiornamenti';

  @override
  String get event_title => 'Eventi di Guida';

  @override
  String get event_speeding => 'Eccesso di Velocità';

  @override
  String get event_hard_braking => 'Frenata Brusca';

  @override
  String get event_aggressive_turns => 'Curve Aggressive';

  @override
  String get event_crash => 'Incidente';

  @override
  String event_location(Object location) {
    return 'In $location';
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
  String get event_severity => 'Gravità';

  @override
  String get event_severity_low => 'Bassa';

  @override
  String get event_severity_medium => 'Media';

  @override
  String get event_severity_high => 'Alta';

  @override
  String get event_severity_critical => 'Critica';

  @override
  String get event_reason => 'Motivo';

  @override
  String get event_last_speed => 'Ultima Velocità Registrata';

  @override
  String get notification_title => 'Notifiche';

  @override
  String get notification_today => 'Oggi';

  @override
  String get notification_yesterday => 'Ieri';

  @override
  String get notification_earlier => 'Questa Settimana';

  @override
  String get notification_fuel_alert => 'Avviso Perdita Carburante!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Il veicolo $car guidato da $driver ha segnalato un rapido calo del livello di carburante.';
  }

  @override
  String get notification_crash_alert => 'Incidente critico rilevato!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Il veicolo $car guidato da $driver ha segnalato una grave collisione.';
  }

  @override
  String get profile_title => 'Profilo';

  @override
  String get profile_edit => 'Modifica il Mio Profilo';

  @override
  String get update_profile => 'Aggiorna Profilo';

  @override
  String get user_name => 'Nome Utente';

  @override
  String get security_title => 'Sicurezza';

  @override
  String get change_password => 'Cambia Password';

  @override
  String get settings_title => 'Impostazioni';

  @override
  String get settings_notifications => 'Impostazioni Notifiche';

  @override
  String get settings_general_notifications => 'Notifica Generale';

  @override
  String get account_settings => 'Impostazioni Account';

  @override
  String get push_notification => 'Notifiche Push';

  @override
  String get dark_mode => 'Modalità Scura Attiva';

  @override
  String get help_title => 'Centro Assistenza';

  @override
  String get help_and_faq => 'Aiuto & FAQ';

  @override
  String get help_contact => 'Contattaci';

  @override
  String get help_faq => 'FAQ';

  @override
  String get how_help => 'Come Possiamo Aiutarti?';

  @override
  String get on_wh_num => 'Sul Numero WhatsApp';

  @override
  String get language => 'Lingua';

  @override
  String get question1 => 'Come si usa BlackBox?';

  @override
  String get answer1 =>
      'Installa il dispositivo BlackBox nella tua auto, accedi all\'app e inizia a guidare. L\'app registrerà e visualizzerà automaticamente i tuoi dati di guida.';

  @override
  String get question2 => 'Quanto costa usare BlackBox?';

  @override
  String get answer2 =>
      'Il costo dipende dal piano e dai servizi selezionati. Contatta l\'azienda per i dettagli sui prezzi.';

  @override
  String get question3 => 'Come contattare il supporto?';

  @override
  String get answer3 =>
      'Puoi contattare il supporto tramite WhatsApp usando il numero ufficiale dell\'azienda o visitando gli uffici durante l\'orario lavorativo.';

  @override
  String get question4 => 'Come posso reimpostare la password se la dimentico?';

  @override
  String get answer4 =>
      'Usa l\'opzione \'Password Dimenticata\' nella schermata di accesso e segui le istruzioni per reimpostare la password.';

  @override
  String get question5 => 'Esistono misure di privacy o sicurezza dei dati?';

  @override
  String get answer5 =>
      'Sì. I tuoi dati sono archiviati e protetti in modo sicuro e non vengono condivisi senza il tuo consenso, salvo quando richiesto dalla legge.';

  @override
  String get question6 =>
      'Posso personalizzare le impostazioni nell\'applicazione?';

  @override
  String get answer6 =>
      'Sì. Puoi personalizzare le impostazioni disponibili come notifiche e preferenze all\'interno dell\'app.';

  @override
  String get question7 => 'Come posso eliminare il mio account?';

  @override
  String get answer7 =>
      'Per eliminare il tuo account, contatta l\'azienda tramite WhatsApp o visita gli uffici dell\'azienda.';

  @override
  String get question8 => 'Come accedo alla cronologia delle analisi?';

  @override
  String get answer8 =>
      'Puoi visualizzare i tuoi viaggi passati e le analisi di guida nella sezione Cronologia o Analisi dell\'app.';

  @override
  String get question9 => 'Posso usare l\'app offline?';

  @override
  String get answer9 =>
      'L\'app ha funzionalità offline limitate. È necessaria una connessione internet per sincronizzare i dati e accedere a tutte le funzionalità.';

  @override
  String get terms_title => 'Termini e Condizioni';

  @override
  String get terms_accept => 'Accetta i termini e condizioni';

  @override
  String get terms_full =>
      '1. Accettazione dei Termini\nInstallando o utilizzando questa applicazione, accetti questi Termini e Condizioni. Se non sei d\'accordo, interrompi l\'uso dell\'app.\n\n2. Scopo dell\'Applicazione\nQuesta applicazione è un sistema di scatola nera veicolare e telematica utilizzato per monitorare le prestazioni del veicolo e il comportamento di guida solo a scopi informativi, di sicurezza e analitici.\n\n3. Parametri dei Dati Raccolti\nL\'applicazione può raccogliere ed elaborare dati sul veicolo e sulla guida, inclusi ma non limitati a:\n\n• Velocità del veicolo\n• Consumo e livello del carburante\n• Accelerazione e decelerazione\n• Eventi di frenata brusca e accelerazione rapida\n• Curve strette\n• Dati di posizione GPS (latitudine e longitudine)\n• Distanza, durata e orario del viaggio\n• Dati di identificazione del conducente e del veicolo\n\nUsando l\'app, acconsenti esplicitamente alla raccolta di questi parametri.\n\n4. Disponibilità del Servizio\nIl funzionamento continuo, in tempo reale o privo di errori dell\'app non è garantito a causa di limitazioni tecniche.';

  @override
  String get validation_password_mismatch => 'Le password non coincidono';

  @override
  String get validation_invalid_phone => 'Numero di telefono non valido';

  @override
  String get validation_incorrect_pin => 'PIN errato';

  @override
  String get validation_empty_fields => 'Compila tutti i campi';

  @override
  String get empty_no_cars => 'Nessuna auto trovata';

  @override
  String get empty_no_notifications => 'Nessuna notifica ancora';

  @override
  String get empty_no_events => 'Nessun evento disponibile';

  @override
  String get status_loading => 'Caricamento...';

  @override
  String get status_success => 'Operazione riuscita';

  @override
  String get status_error => 'Qualcosa è andato storto';

  @override
  String get confirm_delete_car => 'Sei sicuro di voler eliminare questa auto?';

  @override
  String get confirm_reset_password =>
      'Sei sicuro di voler reimpostare la password?';

  @override
  String get search => 'Cerca';

  @override
  String get search_hint => 'Cerca...';

  @override
  String get search_no_results => 'Nessun risultato trovato';

  @override
  String get filter => 'Filtra';

  @override
  String get sort => 'Ordina';

  @override
  String get onboarding_title_1 => 'Benvenuto';

  @override
  String get onboarding_desc_1 => 'In Black Box Manager';

  @override
  String get onboarding_title_2 => 'Scopri la Storia dietro la Tua Guida,';

  @override
  String get onboarding_desc_2 =>
      'Registrando ogni viaggio, analizzando ogni chilometro.';

  @override
  String get delete_car => 'Elimina auto';

  @override
  String get sedan => 'Berlina';

  @override
  String get heavy_duty => 'Pesante';

  @override
  String get current_password => 'Password attuale';

  @override
  String get password_requirement =>
      'Deve essere lunga almeno 8 caratteri e contenere sia lettere che numeri.';

  @override
  String get current_password_is_not_correct =>
      'La password attuale non è corretta.';

  @override
  String get vehicle => 'Veicolo';

  @override
  String get driven_by => 'è guidato da';

  @override
  String get report_fuel_level =>
      'ha segnalato un rapido calo del livello del carburante.';

  @override
  String get report_collision_or_rollover =>
      'ha segnalato una grave collisione o ribaltamento (sos).';

  @override
  String get report_overheating_or_dtc =>
      'ha segnalato un surriscaldamento del motore o codici DTC rilevati.';

  @override
  String get unknown_driver => 'Conducente sconosciuto';

  @override
  String get mechanical_failure => 'Avviso di guasto meccanico!';

  @override
  String get critical_crash => 'Collisione critica rilevata!';

  @override
  String get fuel_leak => 'Allarme perdita di carburante!';

  @override
  String get today => 'Oggi';

  @override
  String get yesterday => 'Ieri';

  @override
  String get day => 'giorno';

  @override
  String get days => 'giorni';

  @override
  String get week => 'settimana';

  @override
  String get weeks => 'settimane';

  @override
  String get month => 'mese';

  @override
  String get months => 'mesi';

  @override
  String get year => 'anno';

  @override
  String get years => 'anni';

  @override
  String get january => 'Gennaio';

  @override
  String get february => 'Febbraio';

  @override
  String get march => 'Marzo';

  @override
  String get april => 'Aprile';

  @override
  String get may => 'Maggio';

  @override
  String get june => 'Giugno';

  @override
  String get july => 'Luglio';

  @override
  String get august => 'Agosto';

  @override
  String get september => 'Settembre';

  @override
  String get october => 'Ottobre';

  @override
  String get november => 'Novembre';

  @override
  String get december => 'Dicembre';

  @override
  String more_than_years(Object num) {
    return 'Da #$num anni';
  }

  @override
  String get since_two_years => 'Da 2 anni';

  @override
  String get since_year => 'Da un anno';

  @override
  String since_months(Object num) {
    return 'Da #$num mesi';
  }

  @override
  String get since_two_months => 'Da 2 mesi';

  @override
  String get since_month => 'Da un mese';

  @override
  String since_weeks(Object num) {
    return 'Da #$num settimane';
  }

  @override
  String get since_two_weeks => 'Da 2 settimane';

  @override
  String get since_week => 'Da una settimana';

  @override
  String since_days(Object num) {
    return 'Da #$num giorni';
  }

  @override
  String get since_two_days => 'Da 2 giorni';

  @override
  String get since_day => 'Da un giorno';

  @override
  String get view_driving_events => 'Visualizza eventi di guida';

  @override
  String get coolant_temp => 'Temperatura del liquido di raffreddamento';

  @override
  String get dtc_codes => 'Codici DTC';

  @override
  String get road_bump => 'Dosso stradale';

  @override
  String get fuel_level => 'Livello carburante';

  @override
  String get driving_behavior_score => 'Punteggio comportamento di guida';

  @override
  String get event_major_crashes => 'Incidenti gravi';

  @override
  String get event_speeding_incident => 'Incidenti di eccesso di velocità';

  @override
  String get driver_id => 'ID conducente';

  @override
  String get more_details => 'Più dettagli';

  @override
  String get events => 'Eventi';

  @override
  String get error_email_exists => 'Questa email esiste già';

  @override
  String get error_wrong_password => 'Password errata';

  @override
  String get error_phone_exists => 'Questo numero di telefono è già in uso';

  @override
  String get error_sp_ch =>
      'La password deve contenere almeno un carattere speciale';

  @override
  String get error_up =>
      'La password deve contenere almeno una lettera maiuscola';

  @override
  String get error_low =>
      'La password deve contenere almeno una lettera minuscola';

  @override
  String get error_num => 'La password deve contenere almeno un numero';

  @override
  String get error_required => 'Questo campo è obbligatorio';

  @override
  String get error_invalid_email => 'Indirizzo email non valido';

  @override
  String error_password_short(Object length) {
    return 'La password deve contenere almeno $length caratteri';
  }
}
