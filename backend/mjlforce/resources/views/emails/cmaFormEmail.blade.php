<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Customer Master Advise Form</title>
</head>

<body>
    <h4>Dear Sir/Madam</h4>
    <p>This is your recently submitted CMA form. Please find the attached file and take necessary action</p>
    <p><strong>Customer Name:</strong> {{ $data['customer_name'] }}</p>
    <p><strong>Sales Person :</strong> {{ $data['sales_person'] }}</p>
    <p><strong>Omera Sales Person :</strong> {{ $data['omera_sales_person'] }}</p>
    <p>Thank you,<br>{{ config('app.name') }}</p>
</body>

</html>
