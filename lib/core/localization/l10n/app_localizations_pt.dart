// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => 'Sim';

  @override
  String get common_no => 'Não';

  @override
  String get common_cancel => 'Cancelar';

  @override
  String get common_save => 'Salvar';

  @override
  String get common_save_changes => 'Salvar Alterações';

  @override
  String get common_continue => 'Continuar';

  @override
  String get common_next => 'Próximo';

  @override
  String get auth_login => 'Entrar';

  @override
  String get auth_space_login => 'Entrar';

  @override
  String get auth_logout => 'Sair';

  @override
  String get auth_confirm_logout => 'Tem certeza que deseja sair?';

  @override
  String get auth_signup => 'Cadastrar';

  @override
  String get auth_create_account => 'Criar Conta';

  @override
  String get auth_already_have_account => 'Já tem uma conta? ';

  @override
  String get auth_no_account => 'Não tem uma conta?';

  @override
  String get auth_forgot_password => 'Esqueceu a Senha?';

  @override
  String get auth_reset_password => 'Redefinir Senha?';

  @override
  String get auth_change_password => 'Alterar Senha';

  @override
  String get auth_continue => 'Ao continuar, você concorda com\n';

  @override
  String get auth_terms => 'Termos de Uso e Política de Privacidade';

  @override
  String get auth_email => 'E-mail';

  @override
  String get auth_password => 'Senha';

  @override
  String get auth_confirm_password => 'Confirmar Senha';

  @override
  String get auth_new_password => 'Nova Senha';

  @override
  String get auth_confirm_new_password => 'Confirmar Nova Senha';

  @override
  String get auth_enter_email => 'Digite o endereço de e-mail';

  @override
  String get auth_password_hint => 'Digite sua senha';

  @override
  String get full_name => 'Nome Completo';

  @override
  String get email_hint => 'exemplo@gmail.com';

  @override
  String get name_hint => 'João Silva';

  @override
  String get required_name => 'Nome Completo é obrigatório';

  @override
  String get required_email => 'E-mail é obrigatório';

  @override
  String get email_end => 'O e-mail deve terminar com @gmail.com';

  @override
  String get required_password => 'Senha é obrigatória';

  @override
  String get required_confirm_password => 'Confirmação de Senha é obrigatória';

  @override
  String get password_do_not_match => 'As senhas não coincidem';

  @override
  String get min_password =>
      'A senha deve ter pelo menos 8 caracteres e conter números';

  @override
  String get send_verification_code => 'Enviar Código de Verificação';

  @override
  String get password_changed_successfully => 'Senha Alterada\nCom Sucesso';

  @override
  String get forget_password_title =>
      'Digite o e-mail associado à sua conta e enviaremos um PIN de segurança para redefinição de senha.';

  @override
  String get auth_security_pin => 'PIN de Segurança';

  @override
  String get auth_enter_pin => 'Digite o PIN de segurança';

  @override
  String get verify => 'Verificar';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Reenviar em ${seconds}s';
  }

  @override
  String get home_title => 'Início';

  @override
  String get home_welcome => 'Olá, Bem-vindo de Volta';

  @override
  String get home_good_morning => 'Bom Dia';

  @override
  String get home_good_afternoon => 'Boa tarde';

  @override
  String get home_good_evening => 'Boa noite';

  @override
  String get home_looks_good => 'Está\nÓtimo';

  @override
  String get home_safety_score => 'Visão Geral da Pontuação de Segurança';

  @override
  String get home_total_accidents => 'Total de Acidentes';

  @override
  String get total_active_cars => 'Total de Carros Ativos';

  @override
  String get total_cars => 'Total de Carros';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% dos seus carros estão ativos';
  }

  @override
  String get car_section_title => 'Carros';

  @override
  String get car_view_all => 'Ver Carros';

  @override
  String get car_add => 'Adicionar Carro';

  @override
  String get car_edit => 'Editar Carro';

  @override
  String get car_name => 'Nome do Carro';

  @override
  String get car_plate => 'Placa do Carro';

  @override
  String get car_type => 'Tipo de Carro';

  @override
  String get car_driver_name => 'Nome do Motorista';

  @override
  String car_item_title(Object id) {
    return 'Carro #$id';
  }

  @override
  String get tracking_live => 'Rastreamento ao Vivo';

  @override
  String get tracking_last_updates => 'Últimas Atualizações';

  @override
  String get event_title => 'Eventos de Condução';

  @override
  String get event_speeding => 'Excesso de Velocidade';

  @override
  String get event_hard_braking => 'Frenagem Brusca';

  @override
  String get event_aggressive_turns => 'Curvas Agressivas';

  @override
  String get event_crash => 'Colisão';

  @override
  String event_location(Object location) {
    return 'Em $location';
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
  String get event_severity => 'Gravidade';

  @override
  String get event_severity_low => 'Baixa';

  @override
  String get event_severity_medium => 'Média';

  @override
  String get event_severity_high => 'Alta';

  @override
  String get event_severity_critical => 'Crítica';

  @override
  String get event_reason => 'Motivo';

  @override
  String get event_last_speed => 'Última Velocidade Registrada';

  @override
  String get notification_title => 'Notificações';

  @override
  String get notification_today => 'Hoje';

  @override
  String get notification_yesterday => 'Ontem';

  @override
  String get notification_earlier => 'Início da Semana';

  @override
  String get notification_fuel_alert => 'Alerta de Vazamento de Combustível!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'O veículo $car conduzido por $driver relatou uma queda rápida no nível de combustível.';
  }

  @override
  String get notification_crash_alert => 'Colisão crítica detectada!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'O veículo $car conduzido por $driver relatou uma colisão grave.';
  }

  @override
  String get profile_title => 'Perfil';

  @override
  String get profile_edit => 'Editar Meu Perfil';

  @override
  String get update_profile => 'Atualizar Perfil';

  @override
  String get user_name => 'Nome de Usuário';

  @override
  String get security_title => 'Segurança';

  @override
  String get change_password => 'Alterar Senha';

  @override
  String get settings_title => 'Configurações';

  @override
  String get settings_notifications => 'Configurações de Notificação';

  @override
  String get settings_general_notifications => 'Notificação Geral';

  @override
  String get account_settings => 'Configurações da Conta';

  @override
  String get push_notification => 'Notificações Push';

  @override
  String get dark_mode => 'Modo Escuro Ativado';

  @override
  String get help_title => 'Central de Ajuda';

  @override
  String get help_and_faq => 'Ajuda & Perguntas Frequentes';

  @override
  String get help_contact => 'Fale Conosco';

  @override
  String get help_faq => 'Perguntas Frequentes';

  @override
  String get how_help => 'Como Podemos Ajudá-lo?';

  @override
  String get on_wh_num => 'No Número do WhatsApp';

  @override
  String get language => 'Idioma';

  @override
  String get question1 => 'Como usar o BlackBox?';

  @override
  String get answer1 =>
      'Instale o dispositivo BlackBox no seu carro, faça login no aplicativo e comece a dirigir. O aplicativo registrará e exibirá automaticamente seus dados de condução.';

  @override
  String get question2 => 'Quanto custa usar o BlackBox?';

  @override
  String get answer2 =>
      'O custo depende do plano e dos serviços selecionados. Entre em contato com a empresa para detalhes de preços.';

  @override
  String get question3 => 'Como entrar em contato com o suporte?';

  @override
  String get answer3 =>
      'Você pode entrar em contato com o suporte via WhatsApp pelo número oficial da empresa ou visitando o escritório durante o horário de funcionamento.';

  @override
  String get question4 => 'Como redefinir minha senha se eu a esquecer?';

  @override
  String get answer4 =>
      'Use a opção \'Esqueceu a Senha\' na tela de login e siga as instruções para redefinir sua senha.';

  @override
  String get question5 =>
      'Existem medidas de privacidade ou segurança de dados?';

  @override
  String get answer5 =>
      'Sim. Seus dados são armazenados e protegidos com segurança, e não são compartilhados sem sua permissão, exceto quando exigido por lei.';

  @override
  String get question6 => 'Posso personalizar as configurações do aplicativo?';

  @override
  String get answer6 =>
      'Sim. Você pode personalizar as configurações disponíveis, como notificações e preferências, dentro do aplicativo.';

  @override
  String get question7 => 'Como posso excluir minha conta?';

  @override
  String get answer7 =>
      'Para excluir sua conta, entre em contato com a empresa via WhatsApp ou visite o escritório da empresa.';

  @override
  String get question8 => 'Como acesso meu histórico de análises?';

  @override
  String get answer8 =>
      'Você pode visualizar suas viagens passadas e análises de condução na seção Histórico ou Análises do aplicativo.';

  @override
  String get question9 => 'Posso usar o aplicativo offline?';

  @override
  String get answer9 =>
      'O aplicativo tem funcionalidade offline limitada. É necessária uma conexão com a internet para sincronizar dados e acessar todos os recursos.';

  @override
  String get terms_title => 'Termos e Condições';

  @override
  String get terms_accept => 'Aceitar termos e condições';

  @override
  String get terms_full =>
      '1. Aceitação dos Termos\nAo instalar ou usar este aplicativo, você concorda com estes Termos e Condições. Se não concordar, por favor, pare de usar o aplicativo.\n\n2. Finalidade do Aplicativo\nEste aplicativo é um sistema de caixa preta veicular e telemática usado para monitorar o desempenho do veículo e o comportamento de condução apenas para fins informativos, de segurança e analíticos.\n\n3. Parâmetros de Dados Coletados\nO aplicativo pode coletar e processar dados do veículo e de condução, incluindo, mas não se limitando a:\n\n• Velocidade do veículo\n• Consumo e nível de combustível\n• Aceleração e desaceleração\n• Eventos de frenagem brusca e aceleração rápida\n• Curvas fechadas\n• Dados de localização GPS (latitude e longitude)\n• Distância, duração e horário da viagem\n• Dados de identificação do motorista e do veículo\n\nAo usar o aplicativo, você consente expressamente com a coleta desses parâmetros.\n\n4. Disponibilidade do Serviço\nA operação contínua, em tempo real ou sem erros do aplicativo não é garantida devido a limitações técnicas.';

  @override
  String get validation_password_mismatch => 'As senhas não coincidem';

  @override
  String get validation_invalid_phone => 'Número de telefone inválido';

  @override
  String get validation_incorrect_pin => 'PIN incorreto';

  @override
  String get validation_empty_fields => 'Por favor, preencha todos os campos';

  @override
  String get empty_no_cars => 'Nenhum carro encontrado';

  @override
  String get empty_no_notifications => 'Nenhuma notificação ainda';

  @override
  String get empty_no_events => 'Nenhum evento disponível';

  @override
  String get status_loading => 'Carregando...';

  @override
  String get status_success => 'Operação realizada com sucesso';

  @override
  String get status_error => 'Algo deu errado';

  @override
  String get confirm_delete_car => 'Tem certeza que deseja excluir este carro?';

  @override
  String get confirm_reset_password =>
      'Tem certeza que deseja redefinir sua senha?';

  @override
  String get search => 'Pesquisar';

  @override
  String get search_hint => 'Pesquisar...';

  @override
  String get search_no_results => 'Nenhum resultado encontrado';

  @override
  String get filter => 'Filtrar';

  @override
  String get sort => 'Ordenar';

  @override
  String get onboarding_title_1 => 'Bem-vindo';

  @override
  String get onboarding_desc_1 => 'Ao Black Box Manager';

  @override
  String get onboarding_title_2 => 'Veja a História Por Trás da Sua Direção,';

  @override
  String get onboarding_desc_2 =>
      'Registrando cada viagem, analisando cada quilômetro.';

  @override
  String get delete_car => 'Excluir carro';

  @override
  String get sedan => 'Sedã';

  @override
  String get heavy_duty => 'Serviço pesado';

  @override
  String get current_password => 'Senha atual';

  @override
  String get password_requirement =>
      'Deve ter pelo menos 8 caracteres e conter letras e números.';

  @override
  String get current_password_is_not_correct => 'A senha atual está incorreta.';

  @override
  String get vehicle => 'Veículo';

  @override
  String get driven_by => 'é conduzido por';

  @override
  String get report_fuel_level =>
      'relatou uma queda rápida no nível de combustível.';

  @override
  String get report_collision_or_rollover =>
      'relatou uma colisão grave ou capotamento (sos).';

  @override
  String get report_overheating_or_dtc =>
      'relatou superaquecimento do motor ou códigos DTC detectados.';

  @override
  String get unknown_driver => 'Motorista desconhecido';

  @override
  String get mechanical_failure => 'Aviso de falha mecânica!';

  @override
  String get critical_crash => 'Colisão crítica detectada!';

  @override
  String get fuel_leak => 'Alerta de vazamento de combustível!';

  @override
  String get today => 'Hoje';

  @override
  String get yesterday => 'Ontem';

  @override
  String get day => 'dia';

  @override
  String get days => 'dias';

  @override
  String get week => 'semana';

  @override
  String get weeks => 'semanas';

  @override
  String get month => 'mês';

  @override
  String get months => 'meses';

  @override
  String get year => 'ano';

  @override
  String get years => 'anos';

  @override
  String get january => 'Janeiro';

  @override
  String get february => 'Fevereiro';

  @override
  String get march => 'Março';

  @override
  String get april => 'Abril';

  @override
  String get may => 'Maio';

  @override
  String get june => 'Junho';

  @override
  String get july => 'Julho';

  @override
  String get august => 'Agosto';

  @override
  String get september => 'Setembro';

  @override
  String get october => 'Outubro';

  @override
  String get november => 'Novembro';

  @override
  String get december => 'Dezembro';

  @override
  String more_than_years(Object num) {
    return 'Há #$num anos';
  }

  @override
  String get since_two_years => 'Há 2 anos';

  @override
  String get since_year => 'Há um ano';

  @override
  String since_months(Object num) {
    return 'Há #$num meses';
  }

  @override
  String get since_two_months => 'Há 2 meses';

  @override
  String get since_month => 'Há um mês';

  @override
  String since_weeks(Object num) {
    return 'Há #$num semanas';
  }

  @override
  String get since_two_weeks => 'Há 2 semanas';

  @override
  String get since_week => 'Há uma semana';

  @override
  String since_days(Object num) {
    return 'Há #$num dias';
  }

  @override
  String get since_two_days => 'Há 2 dias';

  @override
  String get since_day => 'Há um dia';

  @override
  String get view_driving_events => 'Ver eventos de direção';

  @override
  String get coolant_temp => 'Temperatura do líquido de arrefecimento';

  @override
  String get dtc_codes => 'Códigos DTC';

  @override
  String get road_bump => 'Lombada';

  @override
  String get fuel_level => 'Nível de combustível';

  @override
  String get driving_behavior_score => 'Pontuação de comportamento de direção';

  @override
  String get event_major_crashes => 'Acidentes graves';

  @override
  String get event_speeding_incident => 'Incidentes de excesso de velocidade';

  @override
  String get driver_id => 'ID do motorista';

  @override
  String get more_details => 'Mais detalhes';

  @override
  String get events => 'Eventos';

  @override
  String get error_email_exists => 'Este e-mail já existe';

  @override
  String get error_wrong_password => 'Senha incorreta';

  @override
  String get error_phone_exists => 'Este número de telefone já está em uso';

  @override
  String get error_sp_ch =>
      'A senha deve conter pelo menos um caractere especial';

  @override
  String get error_up => 'A senha deve conter pelo menos uma letra maiúscula';

  @override
  String get error_low => 'A senha deve conter pelo menos uma letra minúscula';

  @override
  String get error_num => 'A senha deve conter pelo menos um número';

  @override
  String get error_required => 'Este campo é obrigatório';

  @override
  String get error_invalid_email => 'Endereço de e-mail inválido';

  @override
  String error_password_short(Object length) {
    return 'A senha deve ter pelo menos $length caracteres';
  }
}
