import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class infoGrupo extends StatelessWidget {
  const infoGrupo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Informações sobre o trabalho',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Center(
          child: ListView(
            padding: const EdgeInsets.only(left: 20, top: 20),
            children: [
              const Text('DISCIPLINA: PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS'),
              const Text('PROFESSOR: MARCEL RAIMUNDO DE SOUSA MOURA'),
              Center(
                  child: Container(
                    child: const Text(
                      'Integrantes',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
              ),
              Container(
                  child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Row(
                        children: <Widget>[
                          Center(
                            child: Column(
                              children: [
                                Image.network(
                                  'https://media.licdn.com/dms/image/D4E03AQHOfi70NIXuCQ/profile-displayphoto-shrink_400_400/0/1701739415707?e=1717632000&v=beta&t=Mfk_E7KND5UyvzC_HfQxDwNVQzgZaPpGA0grwMBYuRU',
                                  width: 150,
                                ),
                                const Text('Sávio Rodrigues')
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),

                          Center(
                            child: Column(
                              children: [
                                Image.network(
                                  'https://media.licdn.com/dms/image/D4D03AQEQr4JZj-076w/profile-displayphoto-shrink_400_400/0/1711311441420?e=1717632000&v=beta&t=iDO8acru9rkhpMLQTFFHEUnBLiGwp3xaZ54OTAOzNcE',
                                  width: 150,
                                ),
                                const Text('John Lenon')
                              ],
                            ),
                          ),
                        ],

                      )
                  )

              )
            ],
          )

      ),
    );
  }
}
