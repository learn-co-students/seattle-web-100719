// Build class Superstar
class Superstar {

  constructor(name, talent) {
    this.name = name;
    this.talent = talent;
  }

  introduce = () => {
    console.log(`My name is ${this.name} and I can ${this.talent}.`)
  }

  static about() {
    console.log('I track the most talented people')
  }

}

function introduceYourselfAgain(callback) {
  callback();
}

class Dog {
  name = 'Fido';
  talent = 'Jumping';
}

// const sayHello = (arg1, arg2) => 'hello'


// class Bjork extends Superstar {
//   constructor() {
//     super('Bjork', 'sing');
//     // this.name = "Bjork";
//     // this.talent = "Party hard";
//   }
// }

// Superstar.all = []

// const bjork = new Superstar('Bjork', 'sing')
