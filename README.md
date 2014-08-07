# MediaAdmin
CRUD for users 

## API

1. Get all users:
	- Method: GET
	- URL: [/api/v1/users]
	- response: JSON

	```json
{
"id":2,
"nombre":"Eugenio",
"apellido":"Vargas",
"email":"hola@hola.cll",
"fecha_nacimiento":"12/20/20",
"created_at":"2014-08-04T20:14:14.514Z",
"updated_at":"2014-08-04T23:58:18.179Z"
}
	```

2. Get User by ID
	- Method: GET
	- URL: [api/v1/users/:ID]
	- params:
		- ID (integer)
	- response: JSON

	```json
[{
"id":2,
"nombre":"Eugenio",
"apellido":"Vargas",
"email":"hola@hola.cll",
"fecha_nacimiento":"12/20/20",
"created_at":"2014-08-04T20:14:14.514Z",
"updated_at":"2014-08-04T23:58:18.179Z"
}
,
{"id":7,
"nombre":"Antonio",
"apellido":"Varas",
"email":"email@email.com",
"fecha_nacimiento":"20/07/98",
"created_at":"2014-08-05T00:53:44.091Z",
"updated_at":"2014-08-05T00:53:44.091Z"
}]
	```
