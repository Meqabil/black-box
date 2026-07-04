// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => 'Oui';

  @override
  String get common_no => 'Non';

  @override
  String get common_cancel => 'Annuler';

  @override
  String get common_save => 'Enregistrer';

  @override
  String get common_save_changes => 'Enregistrer les modifications';

  @override
  String get common_continue => 'Continuer';

  @override
  String get common_next => 'Suivant';

  @override
  String get auth_login => 'Connexion';

  @override
  String get auth_space_login => 'Se connecter';

  @override
  String get auth_logout => 'Déconnexion';

  @override
  String get auth_confirm_logout =>
      'Êtes-vous sûr de vouloir vous déconnecter ?';

  @override
  String get auth_signup => 'S\'inscrire';

  @override
  String get auth_create_account => 'Créer un compte';

  @override
  String get auth_already_have_account => 'Vous avez déjà un compte ? ';

  @override
  String get auth_no_account => 'Vous n\'avez pas de compte ?';

  @override
  String get auth_forgot_password => 'Mot de passe oublié ?';

  @override
  String get auth_reset_password => 'Réinitialiser le mot de passe ?';

  @override
  String get auth_change_password => 'Changer le mot de passe';

  @override
  String get auth_continue => 'En continuant, vous acceptez\n';

  @override
  String get auth_terms =>
      'Les conditions d\'utilisation et la politique de confidentialité';

  @override
  String get auth_email => 'E-mail';

  @override
  String get auth_password => 'Mot de passe';

  @override
  String get auth_confirm_password => 'Confirmer le mot de passe';

  @override
  String get auth_new_password => 'Nouveau mot de passe';

  @override
  String get auth_confirm_new_password => 'Confirmer le nouveau mot de passe';

  @override
  String get auth_enter_email => 'Saisir l\'adresse e-mail';

  @override
  String get auth_password_hint => 'Saisissez votre mot de passe';

  @override
  String get full_name => 'Nom complet';

  @override
  String get email_hint => 'exemple@gmail.com';

  @override
  String get name_hint => 'Jean Dupont';

  @override
  String get required_name => 'Le nom complet est requis';

  @override
  String get required_email => 'L\'e-mail est requis';

  @override
  String get email_end => 'L\'e-mail doit se terminer par @gmail.com';

  @override
  String get required_password => 'Le mot de passe est requis';

  @override
  String get required_confirm_password =>
      'La confirmation du mot de passe est requise';

  @override
  String get password_do_not_match => 'Les mots de passe ne correspondent pas';

  @override
  String get min_password =>
      'Le mot de passe doit comporter au moins 8 caractères et contenir des chiffres';

  @override
  String get send_verification_code => 'Envoyer le code de vérification';

  @override
  String get password_changed_successfully =>
      'Le mot de passe a été\nmodifié avec succès';

  @override
  String get forget_password_title =>
      'Saisissez l\'e-mail associé à votre compte et nous vous enverrons un code PIN de réinitialisation du mot de passe.';

  @override
  String get auth_security_pin => 'Code PIN de sécurité';

  @override
  String get auth_enter_pin => 'Saisir le code PIN de sécurité';

  @override
  String get verify => 'Vérifier';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Renvoyer dans ${seconds}s';
  }

  @override
  String get home_title => 'Accueil';

  @override
  String get home_welcome => 'Bonjour, content de vous revoir';

  @override
  String get home_good_morning => 'Bonjour';

  @override
  String get home_good_afternoon => 'Bon après-midi';

  @override
  String get home_good_evening => 'Bonsoir';

  @override
  String get home_looks_good => 'Tout\nva bien';

  @override
  String get home_safety_score => 'Aperçu du score de sécurité';

  @override
  String get home_total_accidents => 'Total des accidents';

  @override
  String get total_active_cars => 'Total des voitures actives';

  @override
  String get total_cars => 'Total des voitures';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% de vos voitures sont actives';
  }

  @override
  String get car_section_title => 'Voitures';

  @override
  String get car_view_all => 'Voir les voitures';

  @override
  String get car_add => 'Ajouter une voiture';

  @override
  String get car_edit => 'Modifier la voiture';

  @override
  String get car_name => 'Nom de la voiture';

  @override
  String get car_plate => 'Plaque d\'immatriculation';

  @override
  String get car_type => 'Type de voiture';

  @override
  String get car_driver_name => 'Nom du conducteur';

  @override
  String car_item_title(Object id) {
    return 'Voiture #$id';
  }

  @override
  String get tracking_live => 'Suivi en direct';

  @override
  String get tracking_last_updates => 'Dernières mises à jour';

  @override
  String get event_title => 'Événements de conduite';

  @override
  String get event_speeding => 'Excès de vitesse';

  @override
  String get event_hard_braking => 'Freinage brusque';

  @override
  String get event_aggressive_turns => 'Virages agressifs';

  @override
  String get event_crash => 'Accident';

  @override
  String event_location(Object location) {
    return 'À $location';
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
  String get event_severity => 'Gravité';

  @override
  String get event_severity_low => 'Faible';

  @override
  String get event_severity_medium => 'Moyenne';

  @override
  String get event_severity_high => 'Élevée';

  @override
  String get event_severity_critical => 'Critique';

  @override
  String get event_reason => 'Raison';

  @override
  String get event_last_speed => 'Dernière vitesse enregistrée';

  @override
  String get notification_title => 'Notifications';

  @override
  String get notification_today => 'Aujourd\'hui';

  @override
  String get notification_yesterday => 'Hier';

  @override
  String get notification_earlier => 'Plus tôt cette semaine';

  @override
  String get notification_fuel_alert => 'Alerte fuite de carburant !';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Le véhicule $car conduit par $driver a signalé une chute rapide du niveau de carburant.';
  }

  @override
  String get notification_crash_alert => 'Accident critique détecté !';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Le véhicule $car conduit par $driver a signalé une collision grave.';
  }

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Modifier mon profil';

  @override
  String get update_profile => 'Mettre à jour le profil';

  @override
  String get user_name => 'Nom d\'utilisateur';

  @override
  String get security_title => 'Sécurité';

  @override
  String get change_password => 'Changer le mot de passe';

  @override
  String get settings_title => 'Paramètres';

  @override
  String get settings_notifications => 'Paramètres de notification';

  @override
  String get settings_general_notifications => 'Notification générale';

  @override
  String get account_settings => 'Paramètres du compte';

  @override
  String get push_notification => 'Notifications push';

  @override
  String get dark_mode => 'Mode sombre activé';

  @override
  String get help_title => 'Centre d\'aide';

  @override
  String get help_and_faq => 'Aide et FAQ';

  @override
  String get help_contact => 'Nous contacter';

  @override
  String get help_faq => 'FAQ';

  @override
  String get how_help => 'Comment pouvons-nous vous aider ?';

  @override
  String get on_wh_num => 'Sur le numéro WhatsApp';

  @override
  String get language => 'Langue';

  @override
  String get question1 => 'Comment utiliser BlackBox ?';

  @override
  String get answer1 =>
      'Installez l\'appareil BlackBox dans votre voiture, connectez-vous à l\'application et commencez à conduire. L\'application enregistrera et affichera automatiquement vos données de conduite.';

  @override
  String get question2 => 'Combien coûte l\'utilisation de BlackBox ?';

  @override
  String get answer2 =>
      'Le coût dépend du plan et des services sélectionnés. Veuillez contacter la société pour les détails tarifaires.';

  @override
  String get question3 => 'Comment contacter le support ?';

  @override
  String get answer3 =>
      'Vous pouvez contacter le support via WhatsApp en utilisant le numéro officiel de la société ou en visitant les bureaux de la société pendant les heures de travail.';

  @override
  String get question4 =>
      'Comment réinitialiser mon mot de passe si je l\'oublie ?';

  @override
  String get answer4 =>
      'Utilisez l\'option « Mot de passe oublié » sur l\'écran de connexion et suivez les instructions pour réinitialiser votre mot de passe.';

  @override
  String get question5 =>
      'Des mesures de confidentialité et de sécurité des données sont-elles en place ?';

  @override
  String get answer5 =>
      'Oui. Vos données sont stockées et protégées de manière sécurisée et ne sont pas partagées sans votre permission, sauf si la loi l\'exige.';

  @override
  String get question6 =>
      'Puis-je personnaliser les paramètres de l\'application ?';

  @override
  String get answer6 =>
      'Oui. Vous pouvez personnaliser les paramètres disponibles tels que les notifications et les préférences dans l\'application.';

  @override
  String get question7 => 'Comment supprimer mon compte ?';

  @override
  String get answer7 =>
      'Pour supprimer votre compte, veuillez contacter la société via WhatsApp ou visiter les bureaux de la société.';

  @override
  String get question8 => 'Comment accéder à mon historique d\'analyses ?';

  @override
  String get answer8 =>
      'Vous pouvez consulter vos trajets passés et vos analyses de conduite dans la section Historique ou Analyses de l\'application.';

  @override
  String get question9 => 'Puis-je utiliser l\'application hors ligne ?';

  @override
  String get answer9 =>
      'L\'application dispose d\'une fonctionnalité hors ligne limitée. Une connexion Internet est requise pour synchroniser les données et accéder à toutes les fonctionnalités.';

  @override
  String get terms_title => 'Conditions générales';

  @override
  String get terms_accept => 'Accepter les conditions générales';

  @override
  String get terms_full =>
      '1. Acceptation des conditions\nEn installant ou en utilisant cette application, vous acceptez ces conditions générales. Si vous n\'êtes pas d\'accord, veuillez cesser d\'utiliser l\'application.\n\n2. Objectif de l\'application\nCette application est un système de boîte noire et de télématique pour les véhicules utilisé pour surveiller les performances du véhicule et le comportement de conduite à des fins d\'information, de sécurité et d\'analyse uniquement.\n\n3. Paramètres de données collectés\nL\'application peut collecter et traiter des données sur le véhicule et la conduite, y compris, mais sans s\'y limiter :\n\n• Vitesse du véhicule\n• Consommation de carburant et niveau de carburant\n• Accélération et décélération\n• Événements de freinage brusque et d\'accélération rapide\n• Virages serrés\n• Données de localisation GPS (latitude et longitude)\n• Distance, durée et heure du trajet\n• Données d\'identification du conducteur et du véhicule\n\nEn utilisant l\'application, vous consentez explicitement à la collecte de ces paramètres.\n\n4. Disponibilité du service\nLe fonctionnement continu, en temps réel ou sans erreur de l\'application n\'est pas garanti en raison de limitations techniques.';

  @override
  String get validation_password_mismatch =>
      'Les mots de passe ne correspondent pas';

  @override
  String get validation_invalid_phone => 'Numéro de téléphone invalide';

  @override
  String get validation_incorrect_pin => 'PIN incorrect';

  @override
  String get validation_empty_fields => 'Veuillez remplir tous les champs';

  @override
  String get empty_no_cars => 'Aucune voiture trouvée';

  @override
  String get empty_no_notifications => 'Aucune notification pour l\'instant';

  @override
  String get empty_no_events => 'Aucun événement disponible';

  @override
  String get status_loading => 'Chargement...';

  @override
  String get status_success => 'Opération réussie';

  @override
  String get status_error => 'Une erreur s\'est produite';

  @override
  String get confirm_delete_car =>
      'Êtes-vous sûr de vouloir supprimer cette voiture ?';

  @override
  String get confirm_reset_password =>
      'Êtes-vous sûr de vouloir réinitialiser votre mot de passe ?';

  @override
  String get search => 'Rechercher';

  @override
  String get search_hint => 'Rechercher...';

  @override
  String get search_no_results => 'Aucun résultat trouvé';

  @override
  String get filter => 'Filtrer';

  @override
  String get sort => 'Trier';

  @override
  String get onboarding_title_1 => 'Bienvenue';

  @override
  String get onboarding_desc_1 => 'Dans le gestionnaire Black Box';

  @override
  String get onboarding_title_2 => 'Découvrez l\'histoire de votre trajet,';

  @override
  String get onboarding_desc_2 =>
      'Enregistrement de chaque voyage, analyse de chaque kilomètre.';

  @override
  String get delete_car => 'Supprimer la voiture';

  @override
  String get sedan => 'Berline';

  @override
  String get heavy_duty => 'Poids lourd';

  @override
  String get current_password => 'Mot de passe actuel';

  @override
  String get password_requirement =>
      'Doit contenir au moins 8 caractères et inclure à la fois des lettres et des chiffres.';

  @override
  String get current_password_is_not_correct =>
      'Le mot de passe actuel est incorrect.';

  @override
  String get vehicle => 'Véhicule';

  @override
  String get driven_by => 'est conduit par';

  @override
  String get report_fuel_level =>
      'a signalé une baisse rapide du niveau de carburant.';

  @override
  String get report_collision_or_rollover =>
      'a signalé une collision grave ou un retournement (sos).';

  @override
  String get report_overheating_or_dtc =>
      'a signalé une surchauffe du moteur ou des codes DTC détectés.';

  @override
  String get unknown_driver => 'Conducteur inconnu';

  @override
  String get mechanical_failure => 'Alerte de panne mécanique !';

  @override
  String get critical_crash => 'Collision critique détectée !';

  @override
  String get fuel_leak => 'Alerte de fuite de carburant !';

  @override
  String get today => 'Aujourd\'hui';

  @override
  String get yesterday => 'Hier';

  @override
  String get day => 'jour';

  @override
  String get days => 'jours';

  @override
  String get week => 'semaine';

  @override
  String get weeks => 'semaines';

  @override
  String get month => 'mois';

  @override
  String get months => 'mois';

  @override
  String get year => 'an';

  @override
  String get years => 'ans';

  @override
  String get january => 'Janvier';

  @override
  String get february => 'Février';

  @override
  String get march => 'Mars';

  @override
  String get april => 'Avril';

  @override
  String get may => 'Mai';

  @override
  String get june => 'Juin';

  @override
  String get july => 'Juillet';

  @override
  String get august => 'Août';

  @override
  String get september => 'Septembre';

  @override
  String get october => 'Octobre';

  @override
  String get november => 'Novembre';

  @override
  String get december => 'Décembre';

  @override
  String more_than_years(Object num) {
    return 'Depuis #$num ans';
  }

  @override
  String get since_two_years => 'Depuis 2 ans';

  @override
  String get since_year => 'Depuis un an';

  @override
  String since_months(Object num) {
    return 'Depuis #$num mois';
  }

  @override
  String get since_two_months => 'Depuis 2 mois';

  @override
  String get since_month => 'Depuis un mois';

  @override
  String since_weeks(Object num) {
    return 'Depuis #$num semaines';
  }

  @override
  String get since_two_weeks => 'Depuis 2 semaines';

  @override
  String get since_week => 'Depuis une semaine';

  @override
  String since_days(Object num) {
    return 'Depuis #$num jours';
  }

  @override
  String get since_two_days => 'Depuis 2 jours';

  @override
  String get since_day => 'Depuis un jour';

  @override
  String get view_driving_events => 'Voir les événements de conduite';

  @override
  String get coolant_temp => 'Température du liquide de refroidissement';

  @override
  String get dtc_codes => 'Codes DTC';

  @override
  String get road_bump => 'Cassis';

  @override
  String get fuel_level => 'Niveau de carburant';

  @override
  String get driving_behavior_score => 'Score de comportement de conduite';

  @override
  String get event_major_crashes => 'Collisions majeures';

  @override
  String get event_speeding_incident => 'Incidents de dépassement de vitesse';

  @override
  String get driver_id => 'ID du conducteur';

  @override
  String get more_details => 'Plus de détails';

  @override
  String get events => 'Événements';

  @override
  String get error_email_exists => 'Cet e-mail existe déjà';

  @override
  String get error_wrong_password => 'Mot de passe incorrect';

  @override
  String get error_phone_exists => 'Ce numéro de téléphone est déjà utilisé';

  @override
  String get error_sp_ch =>
      'Le mot de passe doit contenir au moins un caractère spécial';

  @override
  String get error_up =>
      'Le mot de passe doit contenir au moins une lettre majuscule';

  @override
  String get error_low =>
      'Le mot de passe doit contenir au moins une lettre minuscule';

  @override
  String get error_num => 'Le mot de passe doit contenir au moins un chiffre';

  @override
  String get error_required => 'Ce champ est obligatoire';

  @override
  String get error_invalid_email => 'Adresse e-mail invalide';

  @override
  String error_password_short(Object length) {
    return 'Le mot de passe doit comporter au moins $length caractères';
  }
}
