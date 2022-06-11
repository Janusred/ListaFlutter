import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Janus',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          children: [
            Column(
              children: [
                Center(
                  child: ElevatedButton(
                    child: Text('Listas simple'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                    },
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    child: Text('Listas personalizada'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Calendario()),
                      );
                    },
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    child: Text('Lista avanzada'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Janus()),
                      );
                    },
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    child: Text('Lista Janus'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Janus()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            children: [
              Center(
                child: Column(
                  children: [
                    Center(
                      child: Text('Lunes'),
                    ),
                    Center(child: Text('Martes')),
                    Center(child: Text('Miercoles')),
                    Center(child: Text('jueves')),
                    Center(child: Text('Viernes')),
                    Center(child: Text('Sabado')),
                    Center(child: Text('Domingo')),
                    Center(child: Text('Domingo')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Calendario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            children: [
              Center(
                child: Column(
                  children: [
                    Center(
                      child: ElevatedButton(
                        child: Text(
                          'Listas personalizada',
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Calendario()),
                          );
                        },
                      ),
                    ),
                    Center(
                      child: Text(
                        'Enero ',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Center(child: Text('Febrero')),
                    Center(child: Text('Marzo')),
                    Center(child: Text('Abril')),
                    Center(child: Text('Mayo')),
                    Center(child: Text('Junio')),
                    Center(child: Text('Julio')),
                    Center(child: Text('Agosto')),
                    Center(child: Text('Septiembre')),
                    Center(child: Text('Octubre')),
                    Center(child: Text('Noviembre')),
                    Center(child: Text('Diciembre')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Janus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ClipRRect(
              child: Column(
                children: <Widget>[
                  Image(
                    image: NetworkImage(
                        'https://img.redbull.com/images/w_220/q_auto,f_auto/redbullcom/2022/2/9/uxgdknthvvsnfla76pii/oracle-red-bull-racing-logo'),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text('Redbull Rancing'),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(''),
                  ),
                  Image(
                    image: NetworkImage(
                        'https://api.ferrari.com/cms/network/medias//resize/5e315705d0b5c42071b5914f-logo-new-scudetto-top?apikey=9QscUiwr5n0NhOuQb463QEKghPrVlpaF'),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text('Escuderia Ferrari'),
                  ),
                  Image(
                    image: NetworkImage(
                        'https://api.ferrari.com/cms/network/medias//resize/5e315705d0b5c42071b5914f-logo-new-scudetto-top?apikey=9QscUiwr5n0NhOuQb463QEKghPrVlpaF'),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text('Escuderia Mercedes'),
                  ),
                ],
              ),
            )));
  }
}
