import 'package:flutter/material.dart';

class MenuItem {
  IconData icon;
  double iconSize;
  String label;

  MenuItem({this.icon, this.iconSize, this.label});

  static List<MenuItem> getItens() {
    return [
      MenuItem(icon: Icons.compare_arrows, iconSize: 36, label: 'Transferência'),
      MenuItem(icon: Icons.attach_money, iconSize: 36, label: 'Pagamentos'),
      MenuItem(icon: Icons.local_parking, iconSize: 36, label: 'Investimentos'),
      MenuItem(icon: Icons.credit_card, iconSize: 36, label: 'Cartões'),
      MenuItem(icon: Icons.card_giftcard, iconSize: 36, label: 'Gift Card'),
      MenuItem(icon: Icons.security, iconSize: 36, label: 'Seguros'),
      MenuItem(icon: Icons.monetization_on, iconSize: 36, label: 'Nuterpag'),
      MenuItem(icon: Icons.book, iconSize: 36, label: 'Depósito por boleto'),
      MenuItem(icon: Icons.aspect_ratio, iconSize: 36, label: 'Depósito por cheque'),
      MenuItem(icon: Icons.confirmation_number, iconSize: 36, label: 'Conta MEI'),
      MenuItem(icon: Icons.calendar_today, iconSize: 36, label: 'Agendamentos'),
      MenuItem(icon: Icons.markunread_mailbox, iconSize: 36, label: 'Portabilidade de salário'),
      MenuItem(icon: Icons.call_missed_outgoing, iconSize: 36, label: 'Crédito'),
      MenuItem(icon: Icons.home, iconSize: 36, label: 'Financiamento Imobiliário'),
      MenuItem(icon: Icons.timer, iconSize: 36, label: 'Débito automático'),
      MenuItem(icon: Icons.vpn_key, iconSize: 36, label: 'Consórcio'),
      MenuItem(icon: Icons.euro_symbol, iconSize: 36, label: 'Câmbio'),
      MenuItem(icon: Icons.arrow_upward, iconSize: 36, label: 'Recarga')
    ];
  }
}
