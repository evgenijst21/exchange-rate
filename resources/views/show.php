<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Exchenge</title>
</head>
<body>
    <p>Json файл <a href="json/data.json">ссылка</a></p>
    <table border="2" align="center">
        <caption>Таблица курсов валют</caption>
        <tr>
         <th>id</th>
         <th>name</th>
         <th>english_name</th>
         <th>alphabetic_code</th>
         <th>digit_code</th>
         <th>rate</th>
        </tr>
        <? foreach ($rates as $rate) { 
        echo 
            "<tr>
                <td> $rate->currency_id </td>
                <td><a href=" . 'currencies/' . $rate->id . "> $rate->name </a></td>
                <td> $rate->english_name </td>
                <td> $rate->char_code </td>
                <td> $rate->num_code </td>
                <td> $rate->value </td>
            </tr>";
        } ?>
       </table>
</body>
</html>