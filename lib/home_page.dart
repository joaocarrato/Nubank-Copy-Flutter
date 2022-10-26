// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nubank_copy/util/botao.dart';
import 'package:nubank_copy/util/cabecalho.dart';
import 'package:nubank_copy/util/discover_tile.dart';
import 'package:nubank_copy/util/informacao.dart';
import 'package:nubank_copy/util/text_flu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#FFFFFF'),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // CONTAINER COM INFORMAÇÕES
                Cabecalho(),

                // TITULO CONTA COM SALDO E FLECHA
                Information(),

                // BOTÕES OPÇÕES DE SEÇÃO COM LISTVIEW
                Container(
                  height: 127,
                  child: ListView(
                    padding: EdgeInsets.fromLTRB(10, 16, 16, 16),
                    scrollDirection: Axis.horizontal,
                    children: [
                      ButtonsNu(
                        text: 'Area pix',
                        icone: Icons.pix,
                      ),
                      ButtonsNu(
                        text: 'Pagar',
                        icone: Icons.payments,
                      ),
                      ButtonsNu(
                        text: 'Transferir',
                        icone: Icons.wallet,
                      ),
                      ButtonsNu(
                        text: 'Depositar',
                        icone: Icons.credit_card_off,
                      ),
                      ButtonsNu(
                        text: 'Recarga de\n    celular',
                        icone: Icons.phone_android,
                      ),
                      ButtonsNu(
                        text: 'Cobrar',
                        icone: Icons.paid_outlined,
                      ),
                      ButtonsNu(
                        text: 'Doação',
                        icone: Icons.favorite_border_outlined,
                      ),
                      ButtonsNu(
                        text: 'Transferir\nInternac.',
                        icone: Icons.favorite_border_outlined,
                      ),
                      ButtonsNu(
                        text: 'Investir',
                        icone: Icons.signal_cellular_alt,
                      ),
                    ],
                  ),
                ),

                // BOTÃO MEUS CARTÕES
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 13, 0, 13),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: HexColor('#F0F1F5'),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.credit_card_rounded),
                        SizedBox(width: 25),
                        Text(
                          'Meus cartões',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                // TEXTOS FLUTUANTES
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 10),
                  child: Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        FluText(
                            firstText: 'Celular seguro',
                            secondText:
                                '. Seu celular\nprotegido, pra você fazer mais.',
                            corFirst: Colors.purple),
                        FluText(
                          firstText: 'Seguro de Vida a partir de R\$4/\nmês?',
                          secondText: ' Conheça o Nubank Vida!',
                          corSecond: Colors.purple,
                        ),
                        FluText(
                          firstText: 'Salve amigos da burocracia.\n',
                          secondText: 'Faça um convite para o Nubank.',
                          corSecond: Colors.purple,
                        ),
                      ],
                    ),
                  ),
                ),

                // DIVISOR
                SizedBox(
                  child: Divider(
                    color: HexColor('#F1F1F3'),
                    thickness: 2,
                  ),
                  width: double.infinity,
                ),

                // ABA CARTÃO DE CRÉDITO
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Cartão de crédito',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 15,
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Fatura atual',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: HexColor('#767882'),
                          ),
                        ),
                        Text(
                          '●●●●',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Limite disponível de ●●●●',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: HexColor('#767882'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: HexColor(
                                '#F0F1F5',
                              ),
                            ),
                            child: Text(
                              'Parcelar compras',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // DIVISOR
                SizedBox(
                  child: Divider(
                    color: HexColor('#F1F1F3'),
                    thickness: 2,
                  ),
                  width: double.infinity,
                ),

                // ACOMPANHE TAMBÉM
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 15, 16, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Acompanhe também',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: HexColor('#F0F1F5'),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.currency_exchange,
                                size: 20,
                              ),
                              SizedBox(width: 15),
                              Text(
                                'Assistente de pagamentos',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // DIVISOR
                SizedBox(
                  child: Divider(
                    color: HexColor('#F1F1F3'),
                    thickness: 2,
                  ),
                  width: double.infinity,
                ),

                // ABA EMPRESTIMO
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 10, 16, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Empréstimo',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Crie um aviso para saber quando um\nempréstimo está disponível.',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: HexColor('#767882'),
                        ),
                      ),
                    ],
                  ),
                ),

                // DIVISOR
                SizedBox(
                  child: Divider(
                    color: HexColor('#F1F1F3'),
                    thickness: 2,
                  ),
                  width: double.infinity,
                ),

                // ABRA DESCUBRA MAIS
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Descubra mais',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 12),
                      Container(
                        height: 230,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Discover(
                              imagePath: 'assets/images/nubank1.png',
                              discoverTitle: 'Nubank Celular Seguro',
                              discoverSub:
                                  '100% cobertura, 0% estresse.\nSimule agora mesmo.',
                            ),
                            Discover(
                              imagePath: 'assets/images/nubank2.jpg',
                              discoverTitle: 'Seguro de vida',
                              discoverSub:
                                  'Um seguro fácil de contratar e que cabe no seu bolso.',
                            ),
                            Discover(
                                imagePath: 'assets/images/nubank3.jpg',
                                discoverTitle: 'Limite extra NuPay',
                                discoverSub:
                                    'Você tem R\$ 700 de limite extra para comprar com NuPay'),
                            Discover(
                                imagePath: 'assets/images/nubank4.png',
                                discoverTitle: 'Páginas Roxas',
                                discoverSub:
                                    'Conheça o trabalho dos nossos clientes empreendedores e...'),
                            Discover(
                                imagePath: 'assets/images/nubank5.png',
                                discoverTitle: 'Portabilidade de salário',
                                discoverSub:
                                    'Liberdade é escolher onde receber seu dinheiro.')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // BOTTOM NAVIGATOR BAR COM 3 OPÇÕES
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: HexColor('#9F37D2'),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 25,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.import_export), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ''),
        ],
      ),
    );
  }
}
