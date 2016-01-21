# Check Check
Build a validator.

```js
var checkcheck = require('checkcheck');
var validateuser = checkcheck({
    name: {
        'Required': function(model) {
            return model.name != null && model.name != '';
        }
    },
    email: {
        'Required': function(model) {
            return model.email != null && model.email != '';
        },
        'Not my email': function(model) {
            return model.email != 'myemail@company.com';
        }
    }
});

var user = {
    name: '',
    email: 'myemail@company.com'
};

var result = validateuser(user);
```

Result:
```js
{
    isvalid: false,
    name: {
        isvalid: false,
        messages: [
            'Required'
        ]
    },
    email: {
        isvalid: true,
        messages: []
    }
}
```