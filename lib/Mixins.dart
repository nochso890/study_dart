import 'ServerEnums.dart';

mixin Move{
  void run(){
    print("Ruuuuuuuun");
  }
}

mixin Strong{
  final double hitDamage = 32414.23;
}

class PlayUser with Move, Strong{
  Server server;
  int level;

  PlayUser({required this.level,required this.server});

}
