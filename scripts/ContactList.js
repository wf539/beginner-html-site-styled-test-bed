var friends = new Object();
friends.bill = new Object();
friends.steve = new Object();

var friends = {
steve: {
  firstName: 'Steve',
  lastName: 'Jobs',
  number: '555-5556',
  address: ['1 I L', 'Cupertino', 'CA']
    },
bill: {
  firstName: 'Bill',
  lastName: 'Gates',
  number: '555-5555',
  address: ['1 M W', 'Redmond', 'WA']
    }
};

var list = function() {
    for (var firstName in friends) {
        console.log(firstName);
    }
}

var search = function(name) {
    for (var key in friends) {
        if (friends[key].firstName === name) {
            console.log(friends[key]);
            return friends[key];
        }
    }
};
