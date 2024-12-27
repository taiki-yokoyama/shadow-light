class Player {//todo Playerclassが肥大化してきたので、後でアイテム管理関連をアイテムリスト (Inventory) クラスとして分離した方がよいかもしれない
  float x,y;
  float wide ,high;
  int HP;//不要？
  int speed;
  ArrayList <Item>itemList = new ArrayList <Item>();//playerのアイテムを管理
  void drawPlayer(){
  }
  void move(){
  }
  int damege(){//受けたダメージを返す
  return 1;
  } 
   void addItem(Item item) {
    itemList.add(item);
    println(item.name + "を取得しました！");
  }

  void useItem(int index, Player player) {
    if (index >= 0 && index < itemList.size()) {
      Item item = itemList.get(index);
      item.use(player);
      itemList.remove(index); // 使用後アイテムを削除
    } else {
      println("そのアイテムは存在しません！");
    }
  }
}
//------------------------------------------------------------------------
class Enemy {
  float x, y;
  int hp = 50, attack = 10;
  float speed = 1.5;

  Enemy(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void drawEnemy() {
  }

  void moveTowardsPlayer(Player player) {
  }

  void takeDamage(int damage) {//敵を倒す必要がなければ不要
  }

  int attackPlayer() {
    return attack;
  }
}
//----------------------------------------------------------------------
class Item {
  String name;
  String description;
  String effectType; // "heal", "boostAttack", etc.
  int effectValue;

  Item(String name, String description, String effectType, int effectValue) {
    this.name = name;
    this.description = description;
    this.effectType = effectType;
    this.effectValue = effectValue;
  }

  void use(Player player) {
  }
}
//----------------------------------------------------------------------
//描画関係
interface drawStage{
}
class SecondFloor{
  
}
class FirstFloor{
 
}
class FirstRoom{
  Player player;
}
class Outdoor{
}
class Map {
  //int width, height;
  //int state = 0;//ステージが明暗のどっちかを表現する
 // ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();
  void drawMap() {
  }
}

class GameManager {
  Player player;
  ArrayList<Enemy> enemies = new ArrayList<Enemy>();
  Map map;

  GameManager() {
    //player = new Player(100, 100);
    int scene = 0; //場面ごとに番号を振る
    //map = new Map(800, 600);
    enemies.add(new Enemy(400, 400));
  }

  void updateGame() {
    for (Enemy enemy : enemies) {
      enemy.moveTowardsPlayer(player);
    }
  }
  void drawGame() {
    map.drawMap();
    player.drawPlayer();
    for (Enemy enemy : enemies) {
      enemy.drawEnemy();
    }
  }
}

//------------------------------------------------------------------------
//ファイル入出力関係

//------------------------------------------------------------------------
//aruduino関係
