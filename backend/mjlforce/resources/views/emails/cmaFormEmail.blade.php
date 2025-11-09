<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Customer Master Advise Form</title>
</head>

<body>
    <h2>Dear Sir/Madam</h2>
    <p>This is your recently submitted CMA form. Please find the attached file and take necessary action</p>
    <p><strong>Customer Name:</strong> {{ $data['customer_name'] }}</p>
    <p>Thank you,<br>{{ config('app.name') }}</p>
</body>

</html>
