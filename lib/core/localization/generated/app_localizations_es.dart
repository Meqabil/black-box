// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => 'Sí';

  @override
  String get common_no => 'No';

  @override
  String get common_cancel => 'Cancelar';

  @override
  String get common_save => 'Guardar';

  @override
  String get common_save_changes => 'Guardar cambios';

  @override
  String get common_continue => 'Continuar';

  @override
  String get common_next => 'Siguiente';

  @override
  String get auth_login => 'Iniciar sesión';

  @override
  String get auth_space_login => 'Iniciar sesión';

  @override
  String get auth_logout => 'Cerrar sesión';

  @override
  String get auth_confirm_logout =>
      '¿Estás seguro de que quieres cerrar sesión?';

  @override
  String get auth_signup => 'Registrarse';

  @override
  String get auth_create_account => 'Crear cuenta';

  @override
  String get auth_already_have_account => '¿Ya tienes una cuenta? ';

  @override
  String get auth_no_account => '¿No tienes una cuenta?';

  @override
  String get auth_forgot_password => '¿Olvidaste tu contraseña?';

  @override
  String get auth_reset_password => '¿Restablecer contraseña?';

  @override
  String get auth_change_password => 'Cambiar contraseña';

  @override
  String get auth_continue => 'Al continuar, aceptas\n';

  @override
  String get auth_terms => 'Términos de uso y política de privacidad';

  @override
  String get auth_email => 'Correo electrónico';

  @override
  String get auth_password => 'Contraseña';

  @override
  String get auth_confirm_password => 'Confirmar contraseña';

  @override
  String get auth_new_password => 'Nueva contraseña';

  @override
  String get auth_confirm_new_password => 'Confirmar nueva contraseña';

  @override
  String get auth_enter_email => 'Ingresa tu correo electrónico';

  @override
  String get auth_password_hint => 'Ingresa tu contraseña';

  @override
  String get full_name => 'Nombre completo';

  @override
  String get email_hint => 'ejemplo@gmail.com';

  @override
  String get name_hint => 'Juan García';

  @override
  String get required_name => 'El nombre completo es obligatorio';

  @override
  String get required_email => 'El correo electrónico es obligatorio';

  @override
  String get email_end => 'El correo debe terminar con @gmail.com';

  @override
  String get required_password => 'La contraseña es obligatoria';

  @override
  String get required_confirm_password =>
      'La confirmación de contraseña es obligatoria';

  @override
  String get password_do_not_match => 'Las contraseñas no coinciden';

  @override
  String get min_password =>
      'La contraseña debe tener al menos 8 caracteres y contener números';

  @override
  String get send_verification_code => 'Enviar código de verificación';

  @override
  String get password_changed_successfully =>
      'La contraseña ha sido\ncambiada exitosamente';

  @override
  String get forget_password_title =>
      'Ingresa el correo electrónico asociado a tu cuenta y te enviaremos un PIN de seguridad para restablecer tu contraseña.';

  @override
  String get auth_security_pin => 'PIN de seguridad';

  @override
  String get auth_enter_pin => 'Ingresa el PIN de seguridad';

  @override
  String get verify => 'Verificar';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Enviar de nuevo en ${seconds}s';
  }

  @override
  String get home_title => 'Inicio';

  @override
  String get home_welcome => 'Hola, bienvenido de nuevo';

  @override
  String get home_good_morning => 'Buenos días';

  @override
  String get home_good_afternoon => 'Buenas tardes';

  @override
  String get home_good_evening => 'Buenas noches';

  @override
  String get home_looks_good => 'Todo\nbien';

  @override
  String get home_safety_score => 'Resumen de puntuación de seguridad';

  @override
  String get home_total_accidents => 'Total de accidentes';

  @override
  String get total_active_cars => 'Total de autos activos';

  @override
  String get total_cars => 'Total de autos';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% de tus autos están activos';
  }

  @override
  String get car_section_title => 'Autos';

  @override
  String get car_view_all => 'Ver autos';

  @override
  String get car_add => 'Agregar auto';

  @override
  String get car_edit => 'Editar auto';

  @override
  String get car_name => 'Nombre del auto';

  @override
  String get car_plate => 'Placa del auto';

  @override
  String get car_type => 'Tipo de auto';

  @override
  String get car_driver_name => 'Nombre del conductor';

  @override
  String car_item_title(Object id) {
    return 'Auto #$id';
  }

  @override
  String get tracking_live => 'Seguimiento en vivo';

  @override
  String get tracking_last_updates => 'Últimas actualizaciones';

  @override
  String get event_title => 'Eventos de conducción';

  @override
  String get event_speeding => 'Exceso de velocidad';

  @override
  String get event_hard_braking => 'Frenado brusco';

  @override
  String get event_aggressive_turns => 'Giros agresivos';

  @override
  String get event_crash => 'Accidente';

  @override
  String event_location(Object location) {
    return 'En $location';
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
  String get event_severity => 'Gravedad';

  @override
  String get event_severity_low => 'Baja';

  @override
  String get event_severity_medium => 'Media';

  @override
  String get event_severity_high => 'Alta';

  @override
  String get event_severity_critical => 'Crítica';

  @override
  String get event_reason => 'Motivo';

  @override
  String get event_last_speed => 'Última velocidad registrada';

  @override
  String get notification_title => 'Notificaciones';

  @override
  String get notification_today => 'Hoy';

  @override
  String get notification_yesterday => 'Ayer';

  @override
  String get notification_earlier => 'Antes esta semana';

  @override
  String get notification_fuel_alert => '¡Alerta de fuga de combustible!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'El vehículo $car conducido por $driver reportó una caída rápida en el nivel de combustible.';
  }

  @override
  String get notification_crash_alert => '¡Accidente crítico detectado!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'El vehículo $car conducido por $driver reportó una colisión grave.';
  }

  @override
  String get profile_title => 'Perfil';

  @override
  String get profile_edit => 'Editar mi perfil';

  @override
  String get update_profile => 'Actualizar perfil';

  @override
  String get user_name => 'Nombre de usuario';

  @override
  String get security_title => 'Seguridad';

  @override
  String get change_password => 'Cambiar contraseña';

  @override
  String get settings_title => 'Configuración';

  @override
  String get settings_notifications => 'Configuración de notificaciones';

  @override
  String get settings_general_notifications => 'Notificación general';

  @override
  String get account_settings => 'Configuración de cuenta';

  @override
  String get push_notification => 'Notificaciones push';

  @override
  String get dark_mode => 'Modo oscuro activado';

  @override
  String get help_title => 'Centro de ayuda';

  @override
  String get help_and_faq => 'Ayuda y preguntas frecuentes';

  @override
  String get help_contact => 'Contáctanos';

  @override
  String get help_faq => 'Preguntas frecuentes';

  @override
  String get how_help => '¿Cómo podemos ayudarte?';

  @override
  String get on_wh_num => 'En el número de WhatsApp';

  @override
  String get language => 'Idioma';

  @override
  String get question1 => '¿Cómo usar BlackBox?';

  @override
  String get answer1 =>
      'Instala el dispositivo BlackBox en tu auto, inicia sesión en la app y empieza a conducir. La app registrará y mostrará automáticamente tus datos de conducción.';

  @override
  String get question2 => '¿Cuánto cuesta usar BlackBox?';

  @override
  String get answer2 =>
      'El costo depende del plan y los servicios seleccionados. Por favor, comunícate con la empresa para conocer los precios.';

  @override
  String get question3 => '¿Cómo contactar al soporte?';

  @override
  String get answer3 =>
      'Puedes contactar al soporte por WhatsApp usando el número oficial de la empresa o visitando la oficina durante el horario laboral.';

  @override
  String get question4 => '¿Cómo puedo restablecer mi contraseña si la olvido?';

  @override
  String get answer4 =>
      'Usa la opción «Olvidé mi contraseña» en la pantalla de inicio de sesión y sigue las instrucciones para restablecerla.';

  @override
  String get question5 => '¿Hay medidas de privacidad y seguridad de datos?';

  @override
  String get answer5 =>
      'Sí. Tus datos se almacenan y protegen de forma segura, y no se comparten sin tu permiso, salvo cuando lo exija la ley.';

  @override
  String get question6 =>
      '¿Puedo personalizar la configuración de la aplicación?';

  @override
  String get answer6 =>
      'Sí. Puedes personalizar configuraciones disponibles como notificaciones y preferencias dentro de la app.';

  @override
  String get question7 => '¿Cómo puedo eliminar mi cuenta?';

  @override
  String get answer7 =>
      'Para eliminar tu cuenta, comunícate con la empresa por WhatsApp o visita la oficina de la empresa.';

  @override
  String get question8 => '¿Cómo accedo a mi historial de análisis?';

  @override
  String get answer8 =>
      'Puedes ver tus viajes pasados y análisis de conducción en la sección Historial o Análisis de la app.';

  @override
  String get question9 => '¿Puedo usar la app sin conexión?';

  @override
  String get answer9 =>
      'La app tiene funcionalidad limitada sin conexión. Se requiere conexión a internet para sincronizar datos y acceder a todas las funciones.';

  @override
  String get terms_title => 'Términos y condiciones';

  @override
  String get terms_accept => 'Aceptar términos y condiciones';

  @override
  String get terms_full =>
      '1. Aceptación de los términos\nAl instalar o usar esta aplicación, aceptas estos Términos y condiciones. Si no estás de acuerdo, deja de usar la app.\n\n2. Propósito de la aplicación\nEsta aplicación es un sistema de caja negra y telemática vehicular utilizado para monitorear el rendimiento del vehículo y el comportamiento de conducción únicamente con fines informativos, de seguridad y analíticos.\n\n3. Parámetros de datos recopilados\nLa aplicación puede recopilar y procesar datos del vehículo y de conducción, incluyendo pero no limitado a:\n\n• Velocidad del vehículo\n• Consumo y nivel de combustible\n• Aceleración y desaceleración\n• Eventos de frenado brusco y aceleración rápida\n• Giros pronunciados\n• Datos de ubicación GPS (latitud y longitud)\n• Distancia, duración y hora del viaje\n• Datos de identificación del conductor y del vehículo\n\nAl usar la app, consientes explícitamente la recopilación de estos parámetros.\n\n4. Disponibilidad del servicio\nNo se garantiza la operación continua, en tiempo real o sin errores de la app debido a limitaciones técnicas.';

  @override
  String get validation_password_mismatch => 'Las contraseñas no coinciden';

  @override
  String get validation_invalid_phone => 'Número de teléfono inválido';

  @override
  String get validation_incorrect_pin => 'PIN incorrecto';

  @override
  String get validation_empty_fields => 'Por favor completa todos los campos';

  @override
  String get empty_no_cars => 'No se encontraron autos';

  @override
  String get empty_no_notifications => 'Aún no hay notificaciones';

  @override
  String get empty_no_events => 'No hay eventos disponibles';

  @override
  String get status_loading => 'Cargando...';

  @override
  String get status_success => 'Operación exitosa';

  @override
  String get status_error => 'Algo salió mal';

  @override
  String get confirm_delete_car =>
      '¿Estás seguro de que quieres eliminar este auto?';

  @override
  String get confirm_reset_password =>
      '¿Estás seguro de que quieres restablecer tu contraseña?';

  @override
  String get search => 'Buscar';

  @override
  String get search_hint => 'Buscar...';

  @override
  String get search_no_results => 'No se encontraron resultados';

  @override
  String get filter => 'Filtrar';

  @override
  String get sort => 'Ordenar';

  @override
  String get onboarding_title_1 => 'Bienvenido';

  @override
  String get onboarding_desc_1 => 'Al gestor de Black Box';

  @override
  String get onboarding_title_2 => 'Ve la historia detrás de tu viaje,';

  @override
  String get onboarding_desc_2 =>
      'Registrando cada trayecto, analizando cada kilómetro.';

  @override
  String get delete_car => 'Eliminar coche';

  @override
  String get sedan => 'Sedán';

  @override
  String get heavy_duty => 'Servicio pesado';

  @override
  String get current_password => 'Contraseña actual';

  @override
  String get password_requirement =>
      'Debe tener al menos 8 caracteres y contener letras y números.';

  @override
  String get current_password_is_not_correct =>
      'La contraseña actual es incorrecta.';

  @override
  String get vehicle => 'Vehículo';

  @override
  String get driven_by => 'es conducido por';

  @override
  String get report_fuel_level =>
      'reportó una caída rápida en el nivel de combustible.';

  @override
  String get report_collision_or_rollover =>
      'reportó una colisión grave o vuelco (sos).';

  @override
  String get report_overheating_or_dtc =>
      'reportó sobrecalentamiento del motor o códigos DTC detectados.';

  @override
  String get unknown_driver => 'Conductor desconocido';

  @override
  String get mechanical_failure => '¡Advertencia de fallo mecánico!';

  @override
  String get critical_crash => '¡Choque crítico detectado!';

  @override
  String get fuel_leak => '¡Alerta de fuga de combustible!';

  @override
  String get today => 'Hoy';

  @override
  String get yesterday => 'Ayer';

  @override
  String get day => 'día';

  @override
  String get days => 'días';

  @override
  String get week => 'semana';

  @override
  String get weeks => 'semanas';

  @override
  String get month => 'mes';

  @override
  String get months => 'meses';

  @override
  String get year => 'año';

  @override
  String get years => 'años';

  @override
  String get january => 'Enero';

  @override
  String get february => 'Febrero';

  @override
  String get march => 'Marzo';

  @override
  String get april => 'Abril';

  @override
  String get may => 'Mayo';

  @override
  String get june => 'Junio';

  @override
  String get july => 'Julio';

  @override
  String get august => 'Agosto';

  @override
  String get september => 'Septiembre';

  @override
  String get october => 'Octubre';

  @override
  String get november => 'Noviembre';

  @override
  String get december => 'Diciembre';

  @override
  String more_than_years(Object num) {
    return 'Desde hace #$num años';
  }

  @override
  String get since_two_years => 'Desde hace 2 años';

  @override
  String get since_year => 'Desde hace un año';

  @override
  String since_months(Object num) {
    return 'Desde hace #$num meses';
  }

  @override
  String get since_two_months => 'Desde hace 2 meses';

  @override
  String get since_month => 'Desde hace un mes';

  @override
  String since_weeks(Object num) {
    return 'Desde hace #$num semanas';
  }

  @override
  String get since_two_weeks => 'Desde hace 2 semanas';

  @override
  String get since_week => 'Desde hace una semana';

  @override
  String since_days(Object num) {
    return 'Desde hace #$num días';
  }

  @override
  String get since_two_days => 'Desde hace 2 días';

  @override
  String get since_day => 'Desde hace un día';

  @override
  String get view_driving_events => 'Ver eventos de conducción';

  @override
  String get coolant_temp => 'Temperatura del refrigerante';

  @override
  String get dtc_codes => 'Códigos DTC';

  @override
  String get road_bump => 'Bache';

  @override
  String get fuel_level => 'Nivel de combustible';

  @override
  String get driving_behavior_score =>
      'Puntuación de comportamiento de conducción';

  @override
  String get event_major_crashes => 'Choques graves';

  @override
  String get event_speeding_incident => 'Incidentes de exceso de velocidad';

  @override
  String get driver_id => 'ID del conductor';

  @override
  String get more_details => 'Más detalles';

  @override
  String get events => 'Eventos';

  @override
  String get error_email_exists => 'Este correo ya existe';

  @override
  String get error_wrong_password => 'Contraseña incorrecta';

  @override
  String get error_phone_exists => 'Este número de teléfono ya está en uso';

  @override
  String get error_sp_ch =>
      'La contraseña debe contener al menos un carácter especial';

  @override
  String get error_up =>
      'La contraseña debe contener al menos una letra mayúscula';

  @override
  String get error_low =>
      'La contraseña debe contener al menos una letra minúscula';

  @override
  String get error_num => 'La contraseña debe contener al menos un número';

  @override
  String get error_required => 'Este campo es obligatorio';

  @override
  String get error_invalid_email => 'Dirección de correo electrónico inválida';

  @override
  String error_password_short(Object length) {
    return 'La contraseña debe tener al menos $length caracteres';
  }
}
