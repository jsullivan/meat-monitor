## <a name="resource-meat"></a>Meat

A cut of meat to track temperature readings during a cook

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **created_at** | *date-time* | when meat was created | `"2015-01-01T12:00:00Z"` |
| **id** | *uuid* | unique identifier of meat | `"01234567-89ab-cdef-0123-456789abcdef"` |

### Meat Create

Create a new meat.

```
POST /api/meats
```


#### Curl Example

```bash
$ curl -n -X POST https://api.example.com/api/meats \
  -H "Content-Type: application/json" \
 \
  -d '{
}'
```


#### Response Example

```
HTTP/1.1 201 Created
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef"
}
```


## <a name="resource-reading"></a>Reading

A temperature reading for a cut of meat

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **created_at** | *date-time* | when reading was created | `"2015-01-01T12:00:00Z"` |
| **id** | *uuid* | unique identifier of reading | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **temp** | *integer* | a temperature reading in Fahrenheit | `42` |
| **[meat_id](#resource-meat)** | *uuid* | unique identifier of meat | `"01234567-89ab-cdef-0123-456789abcdef"` |

### Reading Create

Create a new reading.

```
POST /api/meats/{meat_id}/readings
```

#### Optional Parameters

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **temp** | *integer* | a temperature reading in Fahrenheit | `42` |


#### Curl Example

```bash
$ curl -n -X POST https://api.example.com/api/meats/$MEAT_ID/readings \
  -H "Content-Type: application/json" \
 \
  -d '{
  "temp": 42
}'
```


#### Response Example

```
HTTP/1.1 201 Created
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "temp": 42,
  "meat_id": "01234567-89ab-cdef-0123-456789abcdef"
}
```


